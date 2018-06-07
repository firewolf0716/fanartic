/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : laravelecommerce_with_lang_old_theme

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 07/06/2018 14:32:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for delivery_status_chat
-- ----------------------------
DROP TABLE IF EXISTS `delivery_status_chat`;
CREATE TABLE `delivery_status_chat`  (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `delStatus_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `mer_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `send_by` int(11) NOT NULL COMMENT '\'1\'-customer,\'2\'-merchant,\'3\'-admin',
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of delivery_status_chat
-- ----------------------------
INSERT INTO `delivery_status_chat` VALUES (84, 39, 201, 41, 1, 3, 'fdfd', '2017-12-12 14:23:08', 0);
INSERT INTO `delivery_status_chat` VALUES (85, 39, 201, 41, 1, 3, 'fdfd', '2017-12-12 14:28:04', 0);
INSERT INTO `delivery_status_chat` VALUES (86, 40, 201, 41, 1, 3, 'gf', '2017-12-12 14:31:36', 0);
INSERT INTO `delivery_status_chat` VALUES (87, 41, 201, 41, 1, 3, 'gffff', '2017-12-12 14:33:31', 0);
INSERT INTO `delivery_status_chat` VALUES (88, 38, 201, 41, 1, 2, 'gfgf', '2017-12-12 14:48:08', 0);
INSERT INTO `delivery_status_chat` VALUES (89, 42, 201, 41, 1, 3, 'fhgh', '2017-12-12 14:50:20', 0);
INSERT INTO `delivery_status_chat` VALUES (90, 42, 201, 41, 1, 3, 'fhgh', '2017-12-12 15:05:20', 0);
INSERT INTO `delivery_status_chat` VALUES (91, 44, 201, 58, 1, 2, 'erer', '2017-12-12 15:45:28', 0);
INSERT INTO `delivery_status_chat` VALUES (92, 45, 201, 58, 1, 2, 'yuu', '2017-12-12 15:55:51', 0);
INSERT INTO `delivery_status_chat` VALUES (93, 43, 197, 60, 1, 2, 'Get lost', '2017-12-12 16:15:42', 0);
INSERT INTO `delivery_status_chat` VALUES (94, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:29:11', 0);
INSERT INTO `delivery_status_chat` VALUES (95, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:30:12', 0);
INSERT INTO `delivery_status_chat` VALUES (96, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:31:33', 0);
INSERT INTO `delivery_status_chat` VALUES (97, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:32:09', 0);
INSERT INTO `delivery_status_chat` VALUES (98, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:34:40', 0);
INSERT INTO `delivery_status_chat` VALUES (99, 47, 197, 60, 1, 2, 'ok', '2017-12-12 16:41:34', 0);
INSERT INTO `delivery_status_chat` VALUES (100, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:51:59', 0);
INSERT INTO `delivery_status_chat` VALUES (101, 46, 201, 0, 1, 2, 'tytyt', '2017-12-12 16:52:21', 0);
INSERT INTO `delivery_status_chat` VALUES (102, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 16:55:29', 0);
INSERT INTO `delivery_status_chat` VALUES (103, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 16:59:48', 0);
INSERT INTO `delivery_status_chat` VALUES (104, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 17:01:30', 0);
INSERT INTO `delivery_status_chat` VALUES (105, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 17:01:46', 0);
INSERT INTO `delivery_status_chat` VALUES (106, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 17:02:03', 0);
INSERT INTO `delivery_status_chat` VALUES (107, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 17:02:23', 0);
INSERT INTO `delivery_status_chat` VALUES (108, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 17:02:56', 0);
INSERT INTO `delivery_status_chat` VALUES (109, 49, 201, 0, 1, 3, 'hgjj', '2017-12-12 17:03:52', 0);
INSERT INTO `delivery_status_chat` VALUES (110, 48, 197, 60, 1, 2, 'j', '2017-12-12 17:05:48', 0);
INSERT INTO `delivery_status_chat` VALUES (111, 50, 201, 0, 1, 3, 'hghg', '2017-12-12 17:06:13', 0);
INSERT INTO `delivery_status_chat` VALUES (112, 50, 201, 0, 1, 3, 'hghg', '2017-12-12 17:07:27', 0);
INSERT INTO `delivery_status_chat` VALUES (113, 51, 201, 0, 1, 3, 'fgfg', '2017-12-12 17:09:36', 0);
INSERT INTO `delivery_status_chat` VALUES (114, 55, 201, 0, 1, 3, 'uiu', '2017-12-12 17:48:30', 0);
INSERT INTO `delivery_status_chat` VALUES (115, 56, 201, 60, 1, 2, 'jjj', '2017-12-12 18:14:54', 0);
INSERT INTO `delivery_status_chat` VALUES (116, 57, 201, 60, 1, 2, 'rtr', '2017-12-12 18:17:51', 0);
INSERT INTO `delivery_status_chat` VALUES (117, 60, 201, 60, 1, 2, 'gg', '2017-12-12 18:23:46', 0);
INSERT INTO `delivery_status_chat` VALUES (118, 61, 201, 60, 1, 2, 'hh', '2017-12-12 18:25:22', 0);
INSERT INTO `delivery_status_chat` VALUES (119, 62, 201, 60, 1, 2, 'gff', '2017-12-12 18:31:55', 0);
INSERT INTO `delivery_status_chat` VALUES (120, 63, 201, 0, 1, 2, 'hjhj', '2017-12-12 18:35:17', 0);
INSERT INTO `delivery_status_chat` VALUES (121, 63, 201, 0, 1, 2, 'hjhj', '2017-12-12 18:36:27', 0);
INSERT INTO `delivery_status_chat` VALUES (122, 63, 201, 0, 1, 2, 'hjhj', '2017-12-12 18:37:10', 0);
INSERT INTO `delivery_status_chat` VALUES (123, 63, 201, 0, 1, 2, 'hjhj', '2017-12-12 18:37:31', 0);
INSERT INTO `delivery_status_chat` VALUES (124, 63, 201, 0, 1, 2, 'hjhj', '2017-12-12 18:37:49', 0);
INSERT INTO `delivery_status_chat` VALUES (125, 64, 201, 0, 1, 3, 'oooioooooo', '2017-12-12 18:41:42', 0);
INSERT INTO `delivery_status_chat` VALUES (126, 66, 201, 0, 1, 3, 'sssssssssss', '2017-12-12 18:43:56', 0);
INSERT INTO `delivery_status_chat` VALUES (127, 65, 201, 0, 1, 3, 'vvvvvvvvvvvvv', '2017-12-12 18:44:17', 0);
INSERT INTO `delivery_status_chat` VALUES (128, 67, 201, 0, 1, 3, 'sdsds', '2017-12-12 18:48:34', 0);
INSERT INTO `delivery_status_chat` VALUES (129, 69, 201, 0, 1, 3, 'ttt', '2017-12-12 19:12:33', 0);
INSERT INTO `delivery_status_chat` VALUES (130, 70, 201, 0, 1, 3, 'sss', '2017-12-12 19:16:32', 0);
INSERT INTO `delivery_status_chat` VALUES (131, 71, 201, 0, 1, 3, 'rrr', '2017-12-12 19:18:31', 0);
INSERT INTO `delivery_status_chat` VALUES (132, 72, 201, 0, 1, 3, 'jn', '2017-12-12 19:20:08', 0);
INSERT INTO `delivery_status_chat` VALUES (133, 73, 197, 60, 1, 2, 's', '2017-12-12 20:23:53', 0);
INSERT INTO `delivery_status_chat` VALUES (134, 73, 197, 60, 1, 2, 's', '2017-12-12 20:24:05', 0);
INSERT INTO `delivery_status_chat` VALUES (135, 76, 197, 60, 1, 2, 'hgfh', '2017-12-12 21:08:04', 0);
INSERT INTO `delivery_status_chat` VALUES (136, 78, 201, 41, 1, 2, 'll', '2017-12-20 18:19:37', 0);
INSERT INTO `delivery_status_chat` VALUES (137, 79, 201, 41, 1, 3, 'uyuy', '2017-12-20 19:19:21', 0);
INSERT INTO `delivery_status_chat` VALUES (138, 80, 201, 41, 1, 2, 'jj', '2017-12-21 15:00:08', 0);
INSERT INTO `delivery_status_chat` VALUES (139, 81, 201, 0, 1, 3, 'yuy', '2017-12-21 17:43:55', 0);
INSERT INTO `delivery_status_chat` VALUES (140, 82, 201, 41, 1, 3, 'uyuy', '2017-12-21 18:53:08', 0);
INSERT INTO `delivery_status_chat` VALUES (141, 82, 201, 41, 1, 3, 'uyuy', '2017-12-21 18:55:18', 0);
INSERT INTO `delivery_status_chat` VALUES (142, 83, 201, 41, 1, 2, 'yuyuy', '2017-12-21 19:00:39', 0);
INSERT INTO `delivery_status_chat` VALUES (143, 84, 201, 41, 1, 3, 'hjh', '2017-12-21 19:34:23', 0);
INSERT INTO `delivery_status_chat` VALUES (144, 85, 201, 41, 1, 3, 'yyuyuy', '2017-12-21 19:35:37', 0);
INSERT INTO `delivery_status_chat` VALUES (145, 2, 201, 41, 1, 2, 'ghg', '2017-12-25 12:50:19', 0);
INSERT INTO `delivery_status_chat` VALUES (146, 1, 201, 41, 1, 2, 'jjj', '2017-12-25 13:00:23', 0);
INSERT INTO `delivery_status_chat` VALUES (147, 3, 201, 41, 1, 2, 'nnnnnnn', '2017-12-25 13:30:31', 0);
INSERT INTO `delivery_status_chat` VALUES (148, 4, 201, 41, 1, 2, 'oooo', '2017-12-25 13:30:51', 0);
INSERT INTO `delivery_status_chat` VALUES (149, 5, 201, 41, 1, 2, 'hjhjh', '2017-12-25 13:34:19', 0);
INSERT INTO `delivery_status_chat` VALUES (150, 6, 201, 41, 1, 3, 'sds', '2017-12-25 14:59:24', 0);
INSERT INTO `delivery_status_chat` VALUES (151, 8, 201, 41, 1, 3, 'dfd', '2017-12-25 15:02:46', 0);
INSERT INTO `delivery_status_chat` VALUES (152, 7, 201, 41, 1, 3, 'fgfgf', '2017-12-25 15:03:02', 0);
INSERT INTO `delivery_status_chat` VALUES (153, 9, 201, 0, 1, 3, 'uyyuy', '2017-12-25 15:09:01', 0);
INSERT INTO `delivery_status_chat` VALUES (154, 10, 201, 41, 1, 3, 'ggghgg', '2017-12-25 15:33:47', 0);
INSERT INTO `delivery_status_chat` VALUES (155, 11, 201, 41, 1, 3, 'rtr', '2017-12-25 15:35:13', 0);
INSERT INTO `delivery_status_chat` VALUES (156, 11, 201, 41, 1, 3, 'rtr', '2017-12-25 15:36:09', 0);
INSERT INTO `delivery_status_chat` VALUES (157, 12, 201, 41, 1, 3, 'uyuy', '2017-12-25 15:38:31', 0);
INSERT INTO `delivery_status_chat` VALUES (158, 13, 201, 41, 1, 2, 'fd', '2017-12-25 16:13:28', 0);
INSERT INTO `delivery_status_chat` VALUES (159, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:13:45', 0);
INSERT INTO `delivery_status_chat` VALUES (160, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:21:07', 0);
INSERT INTO `delivery_status_chat` VALUES (161, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:24:55', 0);
INSERT INTO `delivery_status_chat` VALUES (162, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:25:50', 0);
INSERT INTO `delivery_status_chat` VALUES (163, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:26:41', 0);
INSERT INTO `delivery_status_chat` VALUES (164, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:26:50', 0);
INSERT INTO `delivery_status_chat` VALUES (165, 14, 201, 0, 1, 3, 'dfdd', '2017-12-25 16:27:05', 0);
INSERT INTO `delivery_status_chat` VALUES (166, 15, 201, 0, 1, 3, 'hghg', '2017-12-25 16:44:01', 0);
INSERT INTO `delivery_status_chat` VALUES (167, 16, 201, 41, 1, 2, 'ooooo', '2017-12-25 16:46:25', 0);
INSERT INTO `delivery_status_chat` VALUES (168, 17, 201, 0, 1, 3, 'gfff', '2017-12-25 16:52:15', 0);
INSERT INTO `delivery_status_chat` VALUES (169, 18, 201, 0, 1, 3, 'dfd', '2017-12-25 16:55:50', 0);
INSERT INTO `delivery_status_chat` VALUES (170, 18, 201, 0, 1, 3, 'dfd', '2017-12-25 16:57:49', 0);
INSERT INTO `delivery_status_chat` VALUES (171, 19, 197, 41, 1, 2, 'Approved Cancellation ', '2018-01-03 17:03:35', 0);
INSERT INTO `delivery_status_chat` VALUES (172, 20, 214, 62, 1, 2, 'disapprove', '2018-01-08 18:37:00', 0);
INSERT INTO `delivery_status_chat` VALUES (173, 32, 201, 41, 1, 2, 'okay', '2018-01-17 10:09:36', 0);
INSERT INTO `delivery_status_chat` VALUES (174, 30, 201, 41, 1, 2, '<html> okay </html> <b> Thanks for shopping </b>', '2018-01-17 11:00:12', 0);
INSERT INTO `delivery_status_chat` VALUES (175, 34, 201, 68, 1, 2, 'test', '2018-02-03 17:52:21', 0);
INSERT INTO `delivery_status_chat` VALUES (176, 40, 229, 0, 1, 3, 'test ok', '2018-02-05 11:01:54', 0);
INSERT INTO `delivery_status_chat` VALUES (177, 41, 229, 0, 1, 3, 'test', '2018-02-06 15:51:23', 0);
INSERT INTO `delivery_status_chat` VALUES (178, 42, 229, 90, 1, 2, 'ok', '2018-02-06 17:10:48', 0);
INSERT INTO `delivery_status_chat` VALUES (179, 44, 229, 60, 1, 2, 'test', '2018-02-17 18:48:34', 0);
INSERT INTO `delivery_status_chat` VALUES (180, 45, 229, 60, 1, 2, 'test', '2018-02-17 18:55:43', 0);
INSERT INTO `delivery_status_chat` VALUES (181, 46, 229, 60, 1, 2, 'test', '2018-02-17 19:26:28', 0);
INSERT INTO `delivery_status_chat` VALUES (182, 48, 229, 90, 1, 2, 'test', '2018-03-01 19:52:07', 0);

-- ----------------------------
-- Table structure for nm_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `nm_aboutus`;
CREATE TABLE `nm_aboutus`  (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ap_description_fr` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ap_date` datetime(0) NOT NULL,
  PRIMARY KEY (`ap_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_aboutus
-- ----------------------------
INSERT INTO `nm_aboutus` VALUES (1, 'About Us', 'À propos de nous', '2017-06-07 00:00:00');

-- ----------------------------
-- Table structure for nm_add
-- ----------------------------
DROP TABLE IF EXISTS `nm_add`;
CREATE TABLE `nm_add`  (
  `ad_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ad_name_fr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ad_position` tinyint(4) NOT NULL COMMENT '1-left,2-middle,3-right',
  `ad_pages` tinyint(4) NOT NULL COMMENT '1-home,2-product,3-Deal,4-Auction',
  `ad_redirecturl` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ad_img` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ad_type` int(11) NOT NULL DEFAULT 1 COMMENT '1-admin 2 customer',
  `ad_status` tinyint(3) UNSIGNED NOT NULL,
  `ad_read_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not read 1 read',
  PRIMARY KEY (`ad_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_add
-- ----------------------------
INSERT INTO `nm_add` VALUES (1, 'Mens Fashion', ' Moda de hombres', 1, 1, 'http://google.com', 'Ads_1516431547.jpg', 1, 0, 1);
INSERT INTO `nm_add` VALUES (3, 'Mobiles', 'Móviles', 2, 1, 'https://www.google.co.in', 'Ads_1516431567.jpg', 1, 1, 1);
INSERT INTO `nm_add` VALUES (5, 'tyty', '', 3, 1, 'http://www.google.com', 'Ads_1522839997.jpg', 1, 1, 1);

-- ----------------------------
-- Table structure for nm_admin
-- ----------------------------
DROP TABLE IF EXISTS `nm_admin`;
CREATE TABLE `nm_admin`  (
  `adm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adm_fname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_lname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_password` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_address1` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_address2` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adm_ci_id` int(10) UNSIGNED NOT NULL COMMENT 'city id',
  `adm_co_id` smallint(5) UNSIGNED NOT NULL COMMENT 'country id',
  PRIMARY KEY (`adm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_admin
-- ----------------------------
INSERT INTO `nm_admin` VALUES (1, 'admin', 'admin', 'admin', 'ragulgandhi@pofitec.com', '9790153222', 'chennai', 'chennai', 4, 1);

-- ----------------------------
-- Table structure for nm_adminreply_comments
-- ----------------------------
DROP TABLE IF EXISTS `nm_adminreply_comments`;
CREATE TABLE `nm_adminreply_comments`  (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_blog_id` int(11) NOT NULL,
  `reply_cmt_id` int(11) NOT NULL,
  `reply_msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reply_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`reply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_adminreply_comments
-- ----------------------------
INSERT INTO `nm_adminreply_comments` VALUES (1, 1, 1, 'oke oke oke oke oke oke oke<br>', '2016-03-10 16:15:34');
INSERT INTO `nm_adminreply_comments` VALUES (2, 1, 1, 'dfgdfdfzhghdrdhghd', '2016-04-01 06:23:25');
INSERT INTO `nm_adminreply_comments` VALUES (3, 1, 3, 'teststtttttttttttttttttt', '2017-06-09 20:23:12');
INSERT INTO `nm_adminreply_comments` VALUES (4, 1, 8, 'okay........................', '2017-06-09 20:54:19');
INSERT INTO `nm_adminreply_comments` VALUES (5, 1, 4, '&nbsp;test testtest testtest test test test&nbsp;&nbsp;test testtest testtest test test test', '2017-07-27 19:27:16');
INSERT INTO `nm_adminreply_comments` VALUES (6, 1, 2, 'This Project Under testing', '2018-02-06 18:35:37');
INSERT INTO `nm_adminreply_comments` VALUES (7, 1, 2, 'This Page is under debugging', '2018-02-06 18:36:52');
INSERT INTO `nm_adminreply_comments` VALUES (8, 1, 2, '', '2018-02-06 18:37:03');
INSERT INTO `nm_adminreply_comments` VALUES (9, 1, 3, 'Test test test test test test test test', '2018-02-06 18:37:43');
INSERT INTO `nm_adminreply_comments` VALUES (10, 1, 2, 'This is test site please go away', '2018-02-06 18:57:42');
INSERT INTO `nm_adminreply_comments` VALUES (11, 1, 2, '', '2018-02-06 18:57:48');
INSERT INTO `nm_adminreply_comments` VALUES (12, 1, 7, '', '2018-02-17 15:42:32');
INSERT INTO `nm_adminreply_comments` VALUES (13, 1, 1, '', '2018-02-17 15:43:58');
INSERT INTO `nm_adminreply_comments` VALUES (14, 1, 1, '', '2018-02-17 16:00:06');
INSERT INTO `nm_adminreply_comments` VALUES (15, 1, 10, 'test test test est', '2018-02-27 21:09:31');

-- ----------------------------
-- Table structure for nm_auction
-- ----------------------------
DROP TABLE IF EXISTS `nm_auction`;
CREATE TABLE `nm_auction`  (
  `auc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auc_title` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auc_category` int(11) NOT NULL,
  `auc_main_category` int(11) NOT NULL,
  `auc_sub_category` int(11) NOT NULL,
  `auc_second_sub_category` int(11) NOT NULL,
  `auc_original_price` int(11) NOT NULL,
  `auc_auction_price` int(11) NOT NULL,
  `auc_bitinc` smallint(5) UNSIGNED NOT NULL,
  `auc_saving_price` int(11) NOT NULL,
  `auc_start_date` datetime(0) NOT NULL,
  `auc_end_date` datetime(0) NOT NULL,
  `auc_shippingfee` decimal(10, 2) NOT NULL,
  `auc_shippinginfo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auc_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auc_merchant_id` int(11) NOT NULL,
  `auc_shop_id` int(11) NOT NULL,
  `auc_meta_keyword` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auc_meta_description` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auc_image_count` int(11) NOT NULL,
  `auc_image` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auc_status` int(11) NOT NULL DEFAULT 1 COMMENT '1-active, 0-block',
  `auc_posted_date` datetime(0) NOT NULL,
  PRIMARY KEY (`auc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_auction
-- ----------------------------
INSERT INTO `nm_auction` VALUES (1, 'Diamond necklace', 1, 1, 1, 1, 15000, 10500, 10, 4500, '2014-08-09 12:50:47', '2014-09-09 12:50:47', 10.00, 'Ships to india', 'Diamond necklace will take you to a completely different world with \r\nspectacular views. Jewelry diamond necklaces the most beautiful state. \r\nJewelry design is an art. The worldâ€™s most valuable asset is the people.\r\n Charms adorn people. So, Jewelry design is the art of human adornment. \r\nJewelry design is one of the oldest professions. Diamond necklaces are \r\ndesigned by expert designers. We chose the most beautiful diamond \r\nnecklace designs for you. There are two predominant objective in the \r\ndesign of diamond necklaces. Exquisite designs, modesty shows in the \r\nwealth. Large stone adorned with necklaces, are influenced environment. \r\nYou can choose the most special days of the diamond necklace.<br><br><br>', 6, 5, 'Diamond', 'Diamond', 2, 'jewelzc8BoIZr.jpg/**/new2jdMILdT7.jpg/**/new1PhpgKukL.jpg/**/', 1, '2014-08-13 04:11:08');
INSERT INTO `nm_auction` VALUES (2, 'hand bags', 1, 1, 1, 1, 1500, 1000, 10, 500, '2014-08-13 16:49:34', '2014-08-06 16:49:34', 25.00, 'free', 'asds', 2, 1, 'asd', 'asss', 4, '2YmlkRqJC.png/**/5UCkEi0zv.png/**/4TZEEKtZ7.png/**/1Zfw5yHW8.png/**/6A9AOLRAx.png/**/', 1, '2014-08-11 11:20:54');
INSERT INTO `nm_auction` VALUES (3, 'hand bags', 1, 1, 1, 1, 1500, 1000, 10, 500, '2014-08-09 12:50:47', '2014-08-12 16:51:17', 25.00, 'swds', 'sdsa', 2, 1, 'sads', 'asdsa', 4, '2w4QZLuE2.png/**/5iJNcTQKA.png/**/62wJiGqDm.png/**/1r11FrvLT.png/**/3hypyZDuW.png/**/', 1, '2014-08-11 11:22:15');
INSERT INTO `nm_auction` VALUES (4, 'Merchant deal', 2, 2, 2, 2, 10000, 9000, 10, 1000, '2014-08-12 09:38:54', '2014-08-13 15:24:54', 10.00, 'coimbatore vadavalli', 'Meta keywords<br>', 4, 3, 'fdafds', 'dsfds', 2, 'flower3SIH0fbjz.jpg/**/flower1Fk1kQ6Cw.jpg/**/flower2jaBoQuEf.jpg/**/', 1, '2014-08-13 04:10:25');
INSERT INTO `nm_auction` VALUES (5, 'sasa', 1, 1, 1, 1, 150, 100, 5, 50, '2014-11-21 19:41:48', '2014-11-28 19:41:48', 12.00, 'wewewe', 'weewe', 1, 1, 'wewe', 'wewe', 0, 'DMR_48xTLGZCgG.jpg/**/', 1, '2014-11-20 16:14:58');
INSERT INTO `nm_auction` VALUES (6, 'BiG Bazar', 2, 2, 0, 0, 1000, 100, 10, 900, '2014-12-10 11:20:30', '2014-12-16 11:20:30', 3.00, 'shipp', 'auction', 5, 4, 'rterte', 'ertert', 0, 'IMG_1269_wUYY6ufcW.jpg/**/', 1, '2014-12-10 10:22:18');
INSERT INTO `nm_auction` VALUES (7, 'Senbagam', 5, 9, 19, 49, 400, 300, 10, 100, '2015-05-11 08:15:34', '2015-05-12 08:04:34', 0.00, 'item shipping', 'This product which unique<br>', 3, 2, 'keywords', 'keywords', 0, 'ChrysanthemumZVXd9lBr.jpg/**/', 1, '2015-05-11 02:49:23');
INSERT INTO `nm_auction` VALUES (8, 'shoe sport', 4, 7, 33, 0, 100, 50, 1, 50, '2016-02-17 18:34:37', '2016-02-25 18:34:37', 0.00, 'ship to you', 'is a sport shoe, nike', 1, 1, 'ss', 'ss', 0, 'slide1-2mwb33rdS.png/**/', 1, '2016-02-17 10:36:00');
INSERT INTO `nm_auction` VALUES (9, 'Test Auc', 5, 8, 14, 35, 320, 250, 10, 70, '2016-03-09 17:40:47', '2016-03-25 17:40:47', 20.00, 'Test', 'Test', 1, 140, 'Test', 'Test', 0, 'imagesRT1JF5cz.jpeg/**/', 1, '2016-03-09 12:11:52');

-- ----------------------------
-- Table structure for nm_banner
-- ----------------------------
DROP TABLE IF EXISTS `nm_banner`;
CREATE TABLE `nm_banner`  (
  `bn_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bn_title` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bn_title_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bn_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '1-home,2-product,3-deal,4-auction',
  `bn_img` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bn_status` int(11) NOT NULL COMMENT '1-block,0-unblock',
  `bn_redirecturl` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bn_slider_position` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`bn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_banner
-- ----------------------------
INSERT INTO `nm_banner` VALUES (44, 'Mens Wear', 'hgjhg', '1,1,1', 'Banner_1516963399.jpg', 1, 'http://www.yahoo.com', '1');
INSERT INTO `nm_banner` VALUES (45, 'Womens Wear', 'Womens Wear', '1,1,1', 'Banner_1516963408.jpg', 0, 'http://demo.laravelecommerce.com/', '1');
INSERT INTO `nm_banner` VALUES (46, 'Kids wear', '', '1,1,1', 'Banner_1516963420.jpg', 0, 'http://demo.laravelecommerce.com/', '1');
INSERT INTO `nm_banner` VALUES (47, 'Cycles', '', '1,1,1', 'Banner_1516963443.jpg', 0, 'http://demo.laravelecommerce.com/', '1');
INSERT INTO `nm_banner` VALUES (51, 'ch', '', '1,1,1', 'banner2TGGsF3fdm30rwCkM.jpg', 1, 'http://demo.laravelecommerce.com/', '1');
INSERT INTO `nm_banner` VALUES (52, 'dsaddfgdgf', '', '1,1,1', 'banner2TGGsF3fdY5A8dyRHLa4ZLDPC.jpg', 1, 'http://demo.laravelecommerce.com/', '1');
INSERT INTO `nm_banner` VALUES (53, 'test', 'tester', '1,1,1', 'banner_151360004831540.jpg', 1, 'http://demo.laravelecommerce.com/', '1');
INSERT INTO `nm_banner` VALUES (54, 'img check', '', '1,1,1', 'Banner1513599996_870-350.jpg', 1, 'http://www.google.com', '1');
INSERT INTO `nm_banner` VALUES (55, 'sdas', '', '1,1,1', 'Banner_1513601266.jpg', 1, 'http://www.google.com', '1');
INSERT INTO `nm_banner` VALUES (56, 'asdasd', '', '1,1,1', 'Banner1513601287.jpg', 1, 'http://www.google.com', '1');
INSERT INTO `nm_banner` VALUES (57, 'sds', '', '1,1,1', 'Banner1513769913.jpg', 1, 'http://www.google.com', '1');
INSERT INTO `nm_banner` VALUES (58, 'Website', '', '1,1,1', 'Banner1517908861.jpg', 0, 'http://www.google.com', '1');

-- ----------------------------
-- Table structure for nm_blog
-- ----------------------------
DROP TABLE IF EXISTS `nm_blog`;
CREATE TABLE `nm_blog`  (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_title_fr` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_desc_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_catid` int(11) NOT NULL,
  `blog_image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_metatitle` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_metatitle_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_metadesc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_metadesc_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_metakey` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_metakey_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_tags` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blog_comments` int(5) NOT NULL COMMENT '0-not allow,1-allow',
  `blog_type` int(5) UNSIGNED NOT NULL COMMENT '1-publish,2-drafts',
  `blog_status` tinyint(3) UNSIGNED NOT NULL COMMENT '1-block,0-unblock',
  `blog_created_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_blog
-- ----------------------------
INSERT INTO `nm_blog` VALUES (1, 'test', 'tester ', 'description', 'la description', 3, 'Ads_15106464267411.jpg', 'test', 'sdfsdfsdf', 'test', 'sdfsdf', 'test', 'sdfsdf', 'tag', 1, 1, 0, '2017-06-07 18:17:59');
INSERT INTO `nm_blog` VALUES (4, 'blog title', ' Titre du Blogsss', 'blog description', 'description du blogsss', 2, 'Blog_1517913175_shop.jpg', 'meta title', 'méta titresss', 'meta description', 'Meta Descriptionsss', 'meta keywords', 'meta keywordssss', 'tags', 1, 1, 0, '2017-09-29 15:56:15');
INSERT INTO `nm_blog` VALUES (5, 'gg', '', 'gdfgfd', '', 18, 'Blog_1521547413_Blog_1507897680_320_190 (1).jpg', 'fgd', '', 'dfgfd', '', 'dfg', '', 'dgfd', 1, 1, 0, '2018-03-20 20:03:33');
INSERT INTO `nm_blog` VALUES (7, 'pagination blog test2', '', 'pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2', '', 2, 'Blog_1523519484_2017-MercedesAMGGT-Roadster-07-320x190.jpg', 'pagination blog test2', '', 'pagination blog test2', '', 'pagination blog test2', '', 'pagination blog test2', 1, 1, 0, '2018-04-12 15:51:24');
INSERT INTO `nm_blog` VALUES (8, 'pagination blog test3', '', 'pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2', '', 8, 'Blog_1523519514_Best-valore-headset-review-320x190.jpg', 'pagination blog test3', '', 'pagination blog test3', '', 'pagination blog test3', '', 'pagination blog test3', 1, 1, 0, '2018-04-12 15:51:54');
INSERT INTO `nm_blog` VALUES (9, 'pagination blog test4', '', 'pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2pagination blog test2', '', 6, 'Blog_1523519536_Dell-Inspiron-15-320x190.png', 'pagination blog test4', '', 'pagination blog test4', '', 'pagination blog test4', '', 'pagination blog test4', 1, 1, 0, '2018-04-12 15:52:16');
INSERT INTO `nm_blog` VALUES (10, 'pagination blog test44', '', 'pagination blog test4pagination blog test4pagination blog test4pagination blog test4pagination blog test4', '', 6, 'Blog_1523519561_Kodak-Pixpro-Zoom-FZ41-320x190.jpg', 'pagination blog test5', '', 'pagination blog test5', '', 'pagination blog test5', '', 'pagination blog test5', 1, 1, 0, '2018-04-12 15:52:41');
INSERT INTO `nm_blog` VALUES (11, 'simplePaginate', '', 'simplePaginates', '', 6, 'Blog_1523524560_optimized-mvmk-320x190.jpg', 'simplePaginate', '', 'simplePaginate', '', 'simplePaginate', '', 'simplePaginate', 1, 1, 0, '2018-04-12 17:16:00');
INSERT INTO `nm_blog` VALUES (12, 'simplePaginatesimplePaginate', '', 'simplePaginatesimplePaginatesimplePaginate', '', 6, 'Blog_1523524641_Kodak-Pixpro-Zoom-FZ41-320x190.jpg', 'simplePaginate', '', 'simplePaginate', '', 'simplePaginate', '', 'simplePaginate', 1, 1, 0, '2018-04-12 17:17:21');
INSERT INTO `nm_blog` VALUES (13, 'simplePaginatesimplePaginatesimplePaginate', '', 'simplePaginatesimplePaginate', '', 8, 'Blog_1523524676_2017-MercedesAMGGT-Roadster-07-320x190.jpg', 'simplePaginate', '', 'simplePaginate', '', 'simplePaginate', '', 'simplePaginate', 1, 1, 0, '2018-04-12 17:17:56');

-- ----------------------------
-- Table structure for nm_blog_cus_comments
-- ----------------------------
DROP TABLE IF EXISTS `nm_blog_cus_comments`;
CREATE TABLE `nm_blog_cus_comments`  (
  `cmt_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmt_blog_id` int(11) NOT NULL,
  `cmt_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cmt_email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cmt_website` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cmt_msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cmt_admin_approve` int(11) NOT NULL DEFAULT 0 COMMENT '1 => Approved, 2 => Unapproved',
  `cmt_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cmt_msg_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not read ,1 Read ',
  PRIMARY KEY (`cmt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_blog_cus_comments
-- ----------------------------
INSERT INTO `nm_blog_cus_comments` VALUES (1, 1, 'yamuna', 'yamua@nexplocindia.com', 'https://www.google.co.in/?gfe_rd=cr&ei=pwbrU7zeM6HV8gfkuYDABQ&gws_rd=ssl', 'description about the product', 0, '2014-08-13 09:03:36', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (2, 1, 'charles', 'charlesvictor.j@pofitec.com', 'http://pofitec.com', 'Lorem ipsum dolor sit amet, lobortis mauris sed, mi fringilla enim nulla tincidunt nibh, mauris lectus ante rutrum at dui, mauris urna varius. Etiam amet vestibulum sodales augue, metus dapibus aspernatur in vel placerat, consectetuer mattis ornare non est convallis vitae, libero in non urna at. Tempor placerat sollicitudin consectetuer justo lacinia, pulvinar arcu arcu purus vel quisque ligula, felis vivamus curabitur nascetur purus elit, tempus mauris varius nulla faucibus sem, auctor mauris eget. Eu nunc ac nostra lectus, wisi dui ante sit sollicitudin aliquam, et nulla urna condimentum nisl cras, lobortis nisl primis libero id. Eu cum, dolor vitae turpis ut dui, neque quam vulputate ut ut. Sodales nostra sed suspendisse cras et, dictum  ', 1, '2016-06-07 12:37:37', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (3, 1, 'test', 'saranya@pofitec.com', 'http://pofitec.com', 'd', 1, '2017-06-09 19:54:31', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (4, 1, 'testtsttt', 'saranya@pofitec.com', 'http://pofitec.com', 'sgfrrrrrrrrrrrrrrrrrrrr', 1, '2017-06-09 20:23:56', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (5, 1, 'f', 'saranya@pofitec.com', 'http://pofitec.com', 'fffffffffffffffffffff', 1, '2017-06-09 20:34:43', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (6, 1, 'fg', 'saranya@pofitec.com', 'http://pofitec.com', 'dfgggggggggggggg', 1, '2017-06-09 20:37:20', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (7, 1, 'tt', 'saranya@pofitec.com', 'http://pofitec.com', 'tttttttttttttttttttttttttttttttt', 0, '2017-06-09 20:51:09', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (8, 1, 'tt', 'saranya@pofitec.com', 'http://pofitec.com', 'tttttttttttttttttttttttttttttttt', 1, '2017-06-09 20:51:38', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (9, 1, 'ddghhg', 'saranya@pofitec.com', 'http://pofitec.com', 'dffffffffffffffffff', 0, '2017-06-09 20:54:42', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (10, 1, 'saranya', 'saranya@pofitec.com', 'http://pofitec.com', 'test', 1, '2017-06-27 20:23:54', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (11, 1, 'saranya', 'saranya@pofitec.com', 'http://pofitec.com', 'asfsdfsgsdgdfgdfggggggggggggggggggggg', 0, '2017-06-27 20:24:44', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (12, 1, 'test', 'saranya@pofitec.com', 'http://pofitec.com', 'tstststttstsdfgdf', 0, '2017-06-27 20:27:24', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (13, 1, 'test', 'saranya@pofitec.com', 'http://pofitec.com', 'vvvvvvvvvv', 0, '2017-06-27 20:28:00', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (14, 1, 'test', 'saranya@pofitec.com', 'http://pofitec.com', '1st dfgd', 0, '2017-06-27 20:37:06', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (15, 1, 'dfgdfg', 'saranya@pofitec.com', 'http://pofitec.com', 'ttttt', 0, '2017-06-27 20:37:49', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (16, 1, 'saranya', 'saranya@pofitec.com', '', 'hggh', 0, '2017-07-10 14:32:37', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (17, 1, 'TEST', 'saranya@pofitec.com', 'http://pofitec.com', 'TEST', 0, '2017-10-03 19:23:13', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (18, 1, 'user', 'user@gmail.com', 'www.google.com', 'sfsdgfdg', 0, '2018-02-06 20:00:40', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (19, 1, 'sdfa', 'sdfasfad@dfgd.com', 'sdfsa', 'sdfa', 0, '2018-02-12 21:22:50', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (20, 13, 'vishnu vr', 'vishnu@pofitec.com', 'www.carrera.com', 'testing blog comments.', 1, '2018-04-12 18:50:01', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (21, 1, 'vishnu vr', 'vishnu@pofitec.com', 'www.carrera.com', 'www.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.comwww.carrera.com', 0, '2018-04-12 21:39:31', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (22, 1, 'vishnu vr', 'vishnu@pofitec.com', 'http://www.carrera.com', 'dsjanbflasudfjnasdfuisdfisdjafuisdfijsdfpudsfpuiasdhuahfshfisudaipasdhfiuhsdufhhfisdfisdfuhdsaifnpijdfjeiojfsdaf', 0, '2018-04-12 22:02:33', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (23, 4, 'vishnu vr', 'vishnu@pofitec.com', 'https://www.carrera.com', 'https://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.comhttps://www.carrera.com', 0, '2018-04-13 15:25:25', 1);
INSERT INTO `nm_blog_cus_comments` VALUES (24, 5, 'vishnu vr', 'vishnu@pofitec.com', 'http://www.carrera.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '2018-04-13 15:26:41', 1);

-- ----------------------------
-- Table structure for nm_blogsetting
-- ----------------------------
DROP TABLE IF EXISTS `nm_blogsetting`;
CREATE TABLE `nm_blogsetting`  (
  `bs_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bs_allowcommt` tinyint(4) NOT NULL,
  `bs_radminapproval` tinyint(4) NOT NULL COMMENT 'Require Admin Approval (1-yes & 0-No)',
  `bs_postsppage` tinyint(4) NOT NULL,
  PRIMARY KEY (`bs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_blogsetting
-- ----------------------------
INSERT INTO `nm_blogsetting` VALUES (1, 1, 0, 5);

-- ----------------------------
-- Table structure for nm_category_ad
-- ----------------------------
DROP TABLE IF EXISTS `nm_category_ad`;
CREATE TABLE `nm_category_ad`  (
  `cat_ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_ad_maincat_id` int(11) NOT NULL,
  `cat_ad_img` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_ad_status` int(11) NOT NULL COMMENT '1-block,0-Unblock',
  PRIMARY KEY (`cat_ad_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_category_ad
-- ----------------------------
INSERT INTO `nm_category_ad` VALUES (28, 12, 'Category_advertisment_151064169126863.jpg/**/Category_advertisment_1510641768_170x400.jpg/**/Category_advertisment_1510641751_170x400 2.jpg/**/', 0);
INSERT INTO `nm_category_ad` VALUES (29, 2, 'ad2_1.jpg/**//**//**/', 0);
INSERT INTO `nm_category_ad` VALUES (30, 4, 'ad4_1.jpg/**//**/ad4_3.jpg/**/', 0);
INSERT INTO `nm_category_ad` VALUES (32, 14, 'ad14_1.jpg/**//**//**/', 0);
INSERT INTO `nm_category_ad` VALUES (34, 24, 'Category_advertisment1511247474_gscuts60201gmel-gritstones-xl-400x400-imaefss4vb8tdf2g.jpeg/**//**//**/', 0);
INSERT INTO `nm_category_ad` VALUES (35, 6, 'Category_advertisment1513600303_Banner22.jpg/**//**//**/', 0);
INSERT INTO `nm_category_ad` VALUES (36, 16, 'Category_advertisment1513601467.png/**/Category_advertisment_1513601479.png/**//**/', 0);
INSERT INTO `nm_category_ad` VALUES (37, 47, 'Category_advertisment1523508118_40.jpg/**/Category_advertisment_1523508192_67.jpg/**//**/', 0);

-- ----------------------------
-- Table structure for nm_category_banner
-- ----------------------------
DROP TABLE IF EXISTS `nm_category_banner`;
CREATE TABLE `nm_category_banner`  (
  `cat_bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_bn_maincat_id` int(11) NOT NULL,
  `cat_bn_img` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_bn_status` int(1) NOT NULL COMMENT '1-block,0-Unblock',
  PRIMARY KEY (`cat_bn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_category_banner
-- ----------------------------
INSERT INTO `nm_category_banner` VALUES (40, 6, 'Category_banner_15106425075323.jpg/**/Category_banner_151064266726609.jpg/**/Category_banner_1510642679_baby2.JPG/**/', 0);
INSERT INTO `nm_category_banner` VALUES (41, 2, 'Category_banner_1510310261_tent-250x200.jpg/**/Category_banner_1510310261_tent-250x200.jpg/**/Category_banner_1510310261_tent-250x200.jpg/**/', 0);
INSERT INTO `nm_category_banner` VALUES (42, 4, 'Category_banner_1513600711_250-200.jpg/**/Category_banner_1513600724_250-200.jpg/**//**/', 0);
INSERT INTO `nm_category_banner` VALUES (43, 16, 'Category_banner_1513601559_250-200.jpg/**//**//**/', 0);
INSERT INTO `nm_category_banner` VALUES (44, 47, 'Category_banner_1515648542_250-200.jpg/**//**//**/', 0);

-- ----------------------------
-- Table structure for nm_city
-- ----------------------------
DROP TABLE IF EXISTS `nm_city`;
CREATE TABLE `nm_city`  (
  `ci_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ci_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ci_name_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ci_con_id` smallint(6) NOT NULL,
  `ci_lati` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ci_long` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ci_default` tinyint(4) NOT NULL,
  `ci_status` tinyint(4) NOT NULL COMMENT '1=>unblock,0=>block',
  PRIMARY KEY (`ci_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_city
-- ----------------------------
INSERT INTO `nm_city` VALUES (1, 'Coimbatore', 'Coimbatoref', 1, '11.00469725195311', '76.92911993710936', 1, 1);
INSERT INTO `nm_city` VALUES (2, 'chennai', 'Chennai', 1, '12.76506834229134', '80.13712774960936', 0, 0);
INSERT INTO `nm_city` VALUES (3, 'Delhi', '', 1, '28.52674846734579', '77.13511358945311', 0, 1);
INSERT INTO `nm_city` VALUES (4, 'Chennai', 'Chennai', 1, '12.91101510701221', '77.66657721249999', 0, 0);
INSERT INTO `nm_city` VALUES (5, 'Kolkata', 'Kolkata', 1, '23.05206669256911', '87.99372564999999', 0, 0);
INSERT INTO `nm_city` VALUES (6, 'Bangalore', 'Bangalore', 1, '9999.99999999999999', '9999.99999999999999', 0, 0);
INSERT INTO `nm_city` VALUES (7, 'Karachi ', '', 9, '24.93887792565219', '67.11970221249999', 0, 0);
INSERT INTO `nm_city` VALUES (8, 'Lahore ', '', 9, '31.47798880363051', '74.32673346249999', 0, 0);
INSERT INTO `nm_city` VALUES (9, 'Rawalpindi', '', 9, '33.73588012259288', '73.09626471249999', 0, 0);
INSERT INTO `nm_city` VALUES (10, 'Islamabad', '', 9, '33.77241754538310', '73.14021002499999', 0, 0);
INSERT INTO `nm_city` VALUES (11, 'fdgdfg', '', 1, '0.00000000000000', '0.00000000000000', 0, 0);
INSERT INTO `nm_city` VALUES (12, 'Vatican City', '', 14, '49.96014769063628', '11.88044439999999', 0, 1);
INSERT INTO `nm_city` VALUES (13, 'Lahore', 'ville anglaiseaa', 9, '11.02896094157218', '74.41056419999995', 0, 1);
INSERT INTO `nm_city` VALUES (14, 'Lahore', '', 9, '45.61554100000000', '74.35874730000000', 0, 1);
INSERT INTO `nm_city` VALUES (15, 'vadavalli', '', 1, '11.0247473', '76.89803710000001', 0, 1);
INSERT INTO `nm_city` VALUES (16, 'peelamedu', '', 1, '11.0331511', '77.02765999999997', 0, 1);
INSERT INTO `nm_city` VALUES (17, 'guindy', '', 1, '13.0102357', '80.21565099999998', 0, 1);
INSERT INTO `nm_city` VALUES (18, 'Indira', '', 1, '20.59368400000000', '78.96288000000004', 0, 1);
INSERT INTO `nm_city` VALUES (19, 'kochi', '', 1, '9.9312328', '76.26730410000005', 0, 1);
INSERT INTO `nm_city` VALUES (20, 'hjhgkjhk', '', 1, '20.59368400000000', '77.21401560000004', 0, 1);
INSERT INTO `nm_city` VALUES (21, 'jij', '', 1, '18.93781630000000', '72.83288410000000', 0, 1);
INSERT INTO `nm_city` VALUES (22, 'vadavalli', '', 7, '29.93439029999999', '-93.9890924', 0, 0);
INSERT INTO `nm_city` VALUES (23, 'ravalpend', '', 1, '31.2906425', '75.79201460000002', 0, 1);
INSERT INTO `nm_city` VALUES (24, 'los angles', '', 7, '34.0522342', '-118.2436849', 0, 1);
INSERT INTO `nm_city` VALUES (25, 'Namakkal', '', 1, '11.2839847', '78.1108279', 0, 0);
INSERT INTO `nm_city` VALUES (26, 'mumbai', '', 1, '19.0759837', '72.87765590000004', 0, 1);
INSERT INTO `nm_city` VALUES (27, 'che', '', 1, '41.07722400000001', '-81.716766', 0, 1);
INSERT INTO `nm_city` VALUES (28, 'hh', '', 7, '37.09024', '-95.71289100000001', 0, 1);
INSERT INTO `nm_city` VALUES (29, 'Chennaix', '', 1, '12.9419396', '80.23709840000004', 0, 1);
INSERT INTO `nm_city` VALUES (30, 'v', '', 1, '13.030253', '80.23766', 0, 1);

-- ----------------------------
-- Table structure for nm_cms_pages
-- ----------------------------
DROP TABLE IF EXISTS `nm_cms_pages`;
CREATE TABLE `nm_cms_pages`  (
  `cp_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cp_title` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cp_title_fr` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cp_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cp_description_fr` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cp_status` tinyint(4) NOT NULL DEFAULT 1,
  `cp_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`cp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_cms_pages
-- ----------------------------
INSERT INTO `nm_cms_pages` VALUES (9, 'Security', '', 'test', '', 1, '2018-01-19 15:18:24');
INSERT INTO `nm_cms_pages` VALUES (13, 'Help', '', 'What Information Do You We Collect<br>We collect information from you when&nbsp;register&nbsp;on our site or fill out our contact form.<br>When ordering or raising&nbsp;enquiry&nbsp;on our website, as appropriate, you may be asked to enter your Name, Email id, Phone&nbsp;number&nbsp;and&nbsp;skype&nbsp;ID.&nbsp;However&nbsp;you could visit Laravel&nbsp;ecommerce&nbsp;website anonymously.<br><br>Special Notice&nbsp;<br>If you are under 13 years old Laravel&nbsp;Ecommerce&nbsp;website is not anticipated at children under 13 years old and we do not collect, use, provide or process in any other form any personal information of children under the age of 13 consciously. We therefore also ask you, if you are under 13 years old, please do not send us your personal information (for example, your name, address and email address).<br><br>Purposes of the collection of your data<br>&nbsp;Laravel&nbsp;Ecommerce&nbsp;is&nbsp;intent&nbsp;to inform you of who we are and what we do. We collect and use personal information (including name, phone&nbsp;number&nbsp;and email ID) to better provide you with the required services, or information. We&nbsp;would therefore&nbsp;use your personal information in order to:<ul><li>Acknowledge to your queries or requests</li><li>Govern our obligations in relation to any agreement you have with us</li><li>Anticipate and resolve problems with any goods or services supplied to you</li><li>Create products or services that may meet your needs</li></ul>Keeping our records accurate<br>&nbsp;We aim to keep our data confidential about you as authentic as possible. If you would like to review, change or delete the details you have provided with us, please contact us via email which is&nbsp;mentioned in&nbsp;our website.<br><br>Security of your personal data<br>&nbsp;As we value your personal information, we will establish sufficient level of protection. We have therefore enforced technology and policies with the objective of protecting your privacy from illegal access and erroneous use and will update these measures as new technology becomes available, as relevant.<br>Cookies policy<h4>Why do we use cookies?</h4>We use browser cookies to learn more about the way you interact with our content and help us to improve your experience when visiting our website.<br>Cookies remember the type of browser you use and which additional browser software you have installed. They also remember your preferences, such as language and region, which remain as your default settings when you revisit the website. Cookies also allow you to rate pages and fill in comment forms.<br>Some of the cookies we use are session cookies and only last until you close your browser, others are persistent cookies which are stored on your computer for longer.<br>Changes on privacy policy<br>&nbsp;We may make&nbsp;changes on&nbsp;our website’s privacy policy at any time. If we make any consequential changes to this privacy policy and the way in which we use your personal data we will post these changes on this page and will do our best to notify you of any significant changes. Kindly often check our privacy policies.', '', 1, '2017-12-18 16:47:27');
INSERT INTO `nm_cms_pages` VALUES (14, 'Returns Policy', '', '1.merchant terms and condition', '', 1, '2018-01-19 15:17:55');
INSERT INTO `nm_cms_pages` VALUES (15, 'Privacy', '', 'test', '', 1, '2018-01-19 15:18:41');
INSERT INTO `nm_cms_pages` VALUES (17, 'fgfdh', '', 'dfgfdhfdh', '', 1, '2018-03-16 17:26:52');

-- ----------------------------
-- Table structure for nm_cod_commission_paid
-- ----------------------------
DROP TABLE IF EXISTS `nm_cod_commission_paid`;
CREATE TABLE `nm_cod_commission_paid`  (
  `comPaid_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_merchant_id` int(11) NOT NULL,
  `com_mer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paidAmount` double NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_type` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-offline,1-paypal',
  `online_payment_returnStatus` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `com_status` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '1 => paid, 0=> Hold,\'2\'=>Cancelled',
  `com_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`comPaid_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_cod_commission_paid
-- ----------------------------
INSERT INTO `nm_cod_commission_paid` VALUES (1, 62, 'Venu gfh', 1368.1, 'TRANID123', '0', '', '1', '2018-01-08 21:11:52');
INSERT INTO `nm_cod_commission_paid` VALUES (2, 77, 'bala R', 12266.1, '2AW20832LU6208136', '1', '', '1', '2018-02-05 22:00:17');
INSERT INTO `nm_cod_commission_paid` VALUES (3, 95, 'calc3_7_2018 Sanchez', 7, '1G683002MT8198743', '1', '', '1', '2018-03-07 21:03:09');
INSERT INTO `nm_cod_commission_paid` VALUES (4, 58, 'Malar host', 5825.44, '5000', '0', '', '1', '2018-03-14 15:58:09');

-- ----------------------------
-- Table structure for nm_cod_commission_tracking
-- ----------------------------
DROP TABLE IF EXISTS `nm_cod_commission_tracking`;
CREATE TABLE `nm_cod_commission_tracking`  (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_merchant_id` int(11) NOT NULL,
  `com_cod_id` int(11) NOT NULL,
  `com_pro_id` int(11) NOT NULL,
  `com_cod_amt` double NOT NULL,
  `cod_currency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cod_transaction_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `com_percentAmount` double NOT NULL,
  `exchange_rate` double NOT NULL,
  `exchange_currency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `com_status` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '1 => paid, 0=> Hold',
  `com_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_color
-- ----------------------------
DROP TABLE IF EXISTS `nm_color`;
CREATE TABLE `nm_color`  (
  `co_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `co_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `co_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`co_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_color
-- ----------------------------
INSERT INTO `nm_color` VALUES (5, '#714693', 'Affair');
INSERT INTO `nm_color` VALUES (6, '#0047AB', 'Cobalt');
INSERT INTO `nm_color` VALUES (8, '#E7F8FF', 'Lily White');
INSERT INTO `nm_color` VALUES (9, '#163531', 'Gable Green');
INSERT INTO `nm_color` VALUES (10, '#B4C2DA', 'Pigeon Post');
INSERT INTO `nm_color` VALUES (11, '#000000', 'Black');
INSERT INTO `nm_color` VALUES (12, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (13, '#66ED61', 'Pastel Green');
INSERT INTO `nm_color` VALUES (14, '#252F41', 'Ebony Clay');
INSERT INTO `nm_color` VALUES (15, '#3C485D', 'Oxford Blue');
INSERT INTO `nm_color` VALUES (16, '#9199AC', 'Manatee');
INSERT INTO `nm_color` VALUES (17, '#8F4B0E', 'Korma');
INSERT INTO `nm_color` VALUES (18, '#1D2A3E', 'Cloud Burst');
INSERT INTO `nm_color` VALUES (19, '#1C1E21', 'Shark');
INSERT INTO `nm_color` VALUES (20, '#0C1422', 'Ebony');
INSERT INTO `nm_color` VALUES (21, '#3E5884', 'East Bay');
INSERT INTO `nm_color` VALUES (23, '#070B12', 'Ebony');
INSERT INTO `nm_color` VALUES (24, '#07090D', 'Bunker');
INSERT INTO `nm_color` VALUES (25, '#4C4F56', 'Abbey');
INSERT INTO `nm_color` VALUES (26, '#F0F8FF', 'Alice Blue');
INSERT INTO `nm_color` VALUES (27, '#ED6461', 'Burnt Sienna');
INSERT INTO `nm_color` VALUES (28, '#ED6175', 'Mandy');
INSERT INTO `nm_color` VALUES (29, '#0D1116', 'Bunker');
INSERT INTO `nm_color` VALUES (30, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (31, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (34, '#273E72', 'Astronaut');
INSERT INTO `nm_color` VALUES (36, '#7CB0A1', 'Acapulco');
INSERT INTO `nm_color` VALUES (37, '#FF0000', 'Red');
INSERT INTO `nm_color` VALUES (38, '#7CB0A1', 'Acapulco');
INSERT INTO `nm_color` VALUES (39, '#C9FFE5', 'Aero Blue');
INSERT INTO `nm_color` VALUES (40, '#EB9373', 'Apricot');
INSERT INTO `nm_color` VALUES (41, '#4C80D6', 'Havelock Blue');
INSERT INTO `nm_color` VALUES (42, '#A7C219', 'La Rioja');
INSERT INTO `nm_color` VALUES (43, '#D92030', 'Alizarin Crimson');
INSERT INTO `nm_color` VALUES (44, '#7CB0A1', 'Acapulco');
INSERT INTO `nm_color` VALUES (45, '#6A428A', 'Affair');
INSERT INTO `nm_color` VALUES (46, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (47, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (48, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (49, '#201259', 'Lucky Point');
INSERT INTO `nm_color` VALUES (50, '#7CB0A1', 'Acapulco');
INSERT INTO `nm_color` VALUES (51, '#6195ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (52, '#F5E9D3', 'Albescent White');
INSERT INTO `nm_color` VALUES (53, '#044022', 'Zuccini');
INSERT INTO `nm_color` VALUES (54, '#044022', 'Zuccini');
INSERT INTO `nm_color` VALUES (56, '#4C4F56', 'Abbey');
INSERT INTO `nm_color` VALUES (57, '#4C4F56', 'Abbey');
INSERT INTO `nm_color` VALUES (58, '#1B1404', 'Acadia');
INSERT INTO `nm_color` VALUES (59, '#E32636', 'Alizarin Crimson');
INSERT INTO `nm_color` VALUES (60, '#FFF8D1', 'Baja White');
INSERT INTO `nm_color` VALUES (61, '#FFF4CE', 'Barley White');
INSERT INTO `nm_color` VALUES (62, '#AF8F2C', 'Alpine');
INSERT INTO `nm_color` VALUES (63, '#EDB381', 'Tacao');
INSERT INTO `nm_color` VALUES (64, '#A5CB0C', 'Bahia');
INSERT INTO `nm_color` VALUES (65, '#49783B', 'Fern Green');
INSERT INTO `nm_color` VALUES (66, '#6761ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (67, '#EDAC61', 'Porsche');
INSERT INTO `nm_color` VALUES (68, '#8361ED', 'Cornflower Blue');
INSERT INTO `nm_color` VALUES (69, '#DBDBDB', 'Alto');
INSERT INTO `nm_color` VALUES (70, '#67ED61', 'Pastel Green');
INSERT INTO `nm_color` VALUES (71, '#6EED61', 'Pastel Green');
INSERT INTO `nm_color` VALUES (72, '#7BED61', 'Pastel Green');
INSERT INTO `nm_color` VALUES (73, '#6CED61', 'Pastel Green');
INSERT INTO `nm_color` VALUES (74, '#61ECED', 'Turquoise Blue');

-- ----------------------------
-- Table structure for nm_contact
-- ----------------------------
DROP TABLE IF EXISTS `nm_contact`;
CREATE TABLE `nm_contact`  (
  `cont_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cont_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cont_email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cont_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cont_message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cont_restatus` tinyint(4) NOT NULL,
  `cont_date` datetime(0) NOT NULL,
  PRIMARY KEY (`cont_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_country
-- ----------------------------
DROP TABLE IF EXISTS `nm_country`;
CREATE TABLE `nm_country`  (
  `co_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `co_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `co_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `co_name_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `co_cursymbol` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `co_curcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `co_status` tinyint(4) NOT NULL COMMENT '1-block,0-unblock',
  PRIMARY KEY (`co_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_country
-- ----------------------------
INSERT INTO `nm_country` VALUES (1, 'IND', 'India', 'Inde', 'Rs', 'INR', 0);
INSERT INTO `nm_country` VALUES (5, 'IR', 'Iran', '', 'Rls', 'IRR', 1);
INSERT INTO `nm_country` VALUES (6, 'CZ', 'czech republic', '', 'K?', 'CZK', 1);
INSERT INTO `nm_country` VALUES (7, 'USA', 'United States of America', '', '$', 'USD', 0);
INSERT INTO `nm_country` VALUES (8, 'FR', 'France', '', '€', 'EUR', 0);
INSERT INTO `nm_country` VALUES (9, 'PK', 'Pakistan', '', 'Rs.', 'PKR', 1);
INSERT INTO `nm_country` VALUES (10, 'KSA', 'Saudi Arabia', '', '????', 'SAR', 0);
INSERT INTO `nm_country` VALUES (11, 'PL', 'Poland', '', 'PLN', 'PLN', 0);
INSERT INTO `nm_country` VALUES (12, 'DE', 'Germany', '', 'EUR', 'EUR', 0);
INSERT INTO `nm_country` VALUES (13, 'USD', 'USA', '', '$', 'USD', 0);
INSERT INTO `nm_country` VALUES (14, 'EU', 'Europe', '', '€', 'EUR', 0);
INSERT INTO `nm_country` VALUES (15, ' IT', 'Italy', 'tests', '€', 'EUR', 0);
INSERT INTO `nm_country` VALUES (16, ' DZ', 'Algeria', '', '?.?', 'DZD', 0);
INSERT INTO `nm_country` VALUES (17, ' AO', 'Angola', '', 'Kz', 'AOA', 0);
INSERT INTO `nm_country` VALUES (18, ' AF', 'Afghanistan', '', '?', 'AFN', 0);
INSERT INTO `nm_country` VALUES (19, ' KI', 'Kiribati', '', '$', 'AUD', 0);
INSERT INTO `nm_country` VALUES (20, ' KH', 'Cambodia', '', '?', 'KHR', 0);
INSERT INTO `nm_country` VALUES (21, ' CU', 'Cuba', '', '$', 'CUC', 0);
INSERT INTO `nm_country` VALUES (22, ' AL', 'Albania', '', 'L', 'ALL', 1);

-- ----------------------------
-- Table structure for nm_coupon
-- ----------------------------
DROP TABLE IF EXISTS `nm_coupon`;
CREATE TABLE `nm_coupon`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `quantity` int(100) NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=>flat, 2=>percentage',
  `value` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_date` datetime(0) NOT NULL,
  `end_date` datetime(0) NOT NULL,
  `status` int(100) NOT NULL DEFAULT 1,
  `type_of_coupon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'product coupon->1, user coupon->2',
  `terms` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_per_product` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_per_user` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tot_cart_val` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_coupon
-- ----------------------------
INSERT INTO `nm_coupon` VALUES (33, 's6ntK5KzFr', 'yu', '40', 1, '0', 1, '5', '2018-02-09 16:24:00', '2018-02-22 00:30:00', 1, '1', 'Conditions', '1', '1', '0', '2018-01-05 16:01:29');
INSERT INTO `nm_coupon` VALUES (34, 'GxrExyJu7L', 'Gd', '35', 1, '0', 1, '6', '2018-01-31 16:28:00', '2018-02-09 00:30:00', 1, '1', 'gfh', '5', '1', '0', '2018-01-05 16:01:07');
INSERT INTO `nm_coupon` VALUES (35, 'HxryvGLotz', 'dfg', '0', 0, '194', 1, '345', '2018-01-05 19:11:00', '2018-01-05 19:11:00', 1, '2', 'sdfsd', '0', '0', '32', '2018-01-05 19:01:15');
INSERT INTO `nm_coupon` VALUES (36, 'yrGv8nnpnv', 'eqwe', '0', 0, '203', 2, '23', '2018-01-05 19:12:00', '2018-01-05 19:12:00', 1, '3', 'werwe', '0', '0', '12', '2018-01-05 19:01:07');
INSERT INTO `nm_coupon` VALUES (37, 'stCI8DGp0M', 'dfg', '40', 1, '0', 1, '23', '2018-01-05 19:19:00', '2018-01-05 19:19:00', 1, '1', 'asddas', '5', '1', '0', '2018-01-05 19:01:22');
INSERT INTO `nm_coupon` VALUES (38, 'upwws5DtzL', 'coupon1', '8933', 2, '0', 2, '12', '2018-02-20 10:32:00', '2018-02-20 14:00:00', 1, '1', 'accept', '2', '1', '0', '2018-02-20 10:02:32');
INSERT INTO `nm_coupon` VALUES (40, 'LyDGsECzKv', 'coupon1', '189', 3, '0', 1, '30', '2018-02-20 11:37:00', '2018-03-29 11:50:00', 1, '1', 'sadsfd', '5', '4', '0', '2018-02-20 11:02:54');
INSERT INTO `nm_coupon` VALUES (43, 'MnwvpFnptK', 'sdfd', '193', 1, '0', 1, '20', '2018-03-08 19:02:00', '2018-03-08 21:30:00', 1, '1', 'sadsf', '5', '4', '0', '2018-03-08 19:03:59');
INSERT INTO `nm_coupon` VALUES (44, 'zzLKHCFFLL', 'User Selection', '161', 1, '0', 1, '20', '2018-03-08 19:37:00', '2018-03-29 01:00:00', 1, '1', 'dfsd', '100', '10', '1', '2018-03-08 19:03:23');
INSERT INTO `nm_coupon` VALUES (45, 'MzwJrsJqEq', 'product ', '197', 1, '0', 1, '1', '2018-03-14 14:47:00', '2018-03-14 17:00:00', 1, '1', 'uyihuj', '5', '3', '0', '2018-03-14 14:03:20');
INSERT INTO `nm_coupon` VALUES (46, 'CyFnGn9n5D', 'test user coupon', '0', 0, '201', 1, '10', '2018-04-10 10:09:00', '2018-04-10 21:30:00', 1, '2', 'fdhfgh', '0', '0', '8498', '2018-04-10 10:04:24');
INSERT INTO `nm_coupon` VALUES (47, 'uMvJ5xDt2n', 'test pro coupon', '139', 1, '0', 1, '10', '2018-04-10 10:33:00', '2018-04-10 14:00:00', 1, '1', 'fdhfdh', '2', '1', '0', '2018-04-10 10:04:13');
INSERT INTO `nm_coupon` VALUES (48, 'rxz0MJGqou', 'pro coupon', '112', 1, '0', 1, '12', '2018-04-13 16:51:00', '2018-04-13 18:30:00', 1, '1', 'dfd', '2', '1', '0', '2018-04-13 16:04:58');
INSERT INTO `nm_coupon` VALUES (49, 'qo1EGLtzKp', 'pro_coupon', '171', 1, '0', 1, '20', '2018-04-21 13:15:00', '2018-04-22 17:15:00', 1, '1', 'Accept', '500', '10', '0', '2018-04-21 13:04:18');

-- ----------------------------
-- Table structure for nm_coupon_purchage
-- ----------------------------
DROP TABLE IF EXISTS `nm_coupon_purchage`;
CREATE TABLE `nm_coupon_purchage`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sold_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pro_qty` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `color` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type_of_coupon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_currency
-- ----------------------------
DROP TABLE IF EXISTS `nm_currency`;
CREATE TABLE `nm_currency`  (
  `cur_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cur_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cur_code` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cur_symbol` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cur_status` tinyint(11) NOT NULL DEFAULT 1,
  `cur_default` tinyint(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`cur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_customer
-- ----------------------------
DROP TABLE IF EXISTS `nm_customer`;
CREATE TABLE `nm_customer`  (
  `cus_id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `facebook_id` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `google_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_pwd` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_address1` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_address2` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_country` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_city` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cus_joindate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cus_logintype` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Admin user, 2=> Website User, 3=> Facebook User, 4=>Google+ User',
  `cus_status` int(11) NOT NULL COMMENT '0 unblock 1 block',
  `cus_pic` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_date` date NOT NULL,
  `wallet` bigint(100) NOT NULL,
  `ship_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_address1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_address2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_ci_id` int(11) NOT NULL,
  `ship_state` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_country` int(11) NOT NULL,
  `ship_postalcode` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_phone` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`cus_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 292 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_customer
-- ----------------------------
INSERT INTO `nm_customer` VALUES (186, 'malar', '', '', 'malarvizhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '8012122975', '12', 'test addr2', '1', '1', '2017-07-05 14:05:20', 1, 0, 'girlwjdk72pV.jpg', '0000-00-00', 3116, 'Malar Gopal', 'coimbatore', 'ram nagar', 1, 'Tamil NAdu', 1, '12234578', '801212975', 'malarvizhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (194, 'Vinod', '', '', 'vinodbab1@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', '', '', '1', '4', '2017-10-30 13:04:33', 2, 0, 'service-testUFJxZzXN.csv', '2017-10-30', 4, 'vinod', '', '', 3, '', 1, '', '9876543210', 'vinodbabu@pofitec.com');
INSERT INTO `nm_customer` VALUES (197, 'venugopal', '', '', 'venugopal1@pofitec.com', '25d55ad283aa400af464c76d713c07ad', '1234567678', 'jhkjh', 'jhk', '9', '9', '2017-10-31 11:58:01', 2, 0, 'Banner_1507871000_Sample_BannerTAI5TIcr.jpg', '2017-10-31', 233, 'venugopal', 'jhkjhkk', 'jhkj', 1, 'jkk', 1, '645678877', '3456765434', 'venugopal@pofitec.com');
INSERT INTO `nm_customer` VALUES (201, 'suganya', '', '113800485229851184821', 'suganya.t@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '7373857689', 'cbe', 'cbe', '1', '17', '2017-11-02 18:12:31', 2, 0, 'ikAwMovFwC.jpg', '2017-11-02', 31531, 'suganya.t', 'ram nagar', 'cbe', 1, 'tn', 1, '123456', '8012122975 ', 'suganya.t@pofitec.com');
INSERT INTO `nm_customer` VALUES (202, 'john cena', '', '', 'ajo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9632587410', 'hj', 'nm n', '1', '1', '2017-12-22 12:51:48', 1, 2, '', '2017-12-22', 0, 'john cena', 'hj', 'nm n', 1, '', 1, '', '9632587410', 'ajo@gmail.com');
INSERT INTO `nm_customer` VALUES (203, 'amal', '', '', 'amal@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '7531598624', 'hj', 'nm n', '1', '1', '2017-12-22 12:58:40', 1, 0, '', '2017-12-22', 76, 'amal', 'hj', 'nm n', 1, '', 1, '', '7531598624', 'amal@pofitec.com');
INSERT INTO `nm_customer` VALUES (204, 'venugopal', '', '', 'venugopalu1@pofitec.com', 'd9ddf676cf7c75d1b1e231e1ce04ca0d', '3456765434', '', '', '1', '1', '2017-12-22 13:04:46', 2, 0, '', '2017-12-22', 0, 'venugopal', '', '', 1, '', 1, '', '3456765434', 'venugopal1@pofitec.com');
INSERT INTO `nm_customer` VALUES (205, 'venugopal', '', '', 'micheal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '3456765434', '', '', '1', '2', '2017-12-22 13:05:36', 2, 0, '', '2017-12-22', 0, 'venugopal', '', '', 2, '', 1, '', '3456765434', 'micheal@gmail.com');
INSERT INTO `nm_customer` VALUES (206, 'ragul', '', '', 'ragulgandhi1@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'coimbatore', '1', '1', '2017-12-26 13:36:43', 2, 0, '', '2017-12-26', 10, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (208, 'vinods', '12345678912345672311', '', 'kathidrvsdsedlw52311@pofitec.com', '', '', '', '', '', '', '2017-12-27 18:54:10', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (209, 'dgf', '', '', 'user1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '12345678', 'dsf', 'sdfsd', '1', '1', '2017-12-28 19:05:17', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (210, 'rtertertertertertertertertertertertertertertertertertertertertertreterterte', '', '', 'safsdf@gm.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', '', '', '1', '1', '2018-01-03 18:11:45', 2, 2, '', '2018-01-03', 0, 'rtertertertertertertertertertertertertertertertert', '', '', 1, '', 1, '', '1234567890', 'safsdf@gm.com');
INSERT INTO `nm_customer` VALUES (211, 'venuchr', '', '', 'venugopal111@pofitec.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', '', '', '1', '1', '2018-01-03 18:23:09', 2, 0, '', '2018-01-03', 0, 'venuchr', '', '', 1, '', 1, '', '1234567890', 'venugopal111@pofitec.com');
INSERT INTO `nm_customer` VALUES (212, 'bala', '', '', 'bala@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9874569856', '', '', '1', '1', '2018-01-05 17:14:30', 2, 0, '', '2018-01-05', 20, 'bala', '', '', 1, '', 1, '', '9874569856', 'bala@gmail.com');
INSERT INTO `nm_customer` VALUES (213, 'vishnu.v.r', '', '', 'vishnu@pofitec.com', '1963fd70e789022f6f5b11498f992404', '8891619125', '', '', '1', '1', '2018-01-05 21:54:35', 2, 0, '', '2018-01-05', 0, 'vishnu.v.r', '', '', 1, '', 1, '', '8891619125', 'vishnu@pofitec.com');
INSERT INTO `nm_customer` VALUES (214, 'vinod babu ', '', '', 'vinodbabu@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '4244114321312', 'fasdasd', 'asdsa', '1', '14', '2018-01-06 13:07:43', 1, 0, '', '2018-01-06', 154, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 14, 'Test state21', 1, '123456', '4244114321312543543545435', 'vinodbabu1@pofitec.com');
INSERT INTO `nm_customer` VALUES (215, 'dfgldf lgjdfg#@$%#@$#@%^$#$%^&#^$^243q24 4  gf hlfslfsd ds fas435 sdfnsdfsf', '', '', 'vinodbabu12@pofitec.com', 'a3f0bec59cebeb60553ec80bbfd5dfdf', '9876543210', '', '', '1', '14', '2018-01-06 13:36:34', 2, 2, '', '2018-01-06', 0, 'dfgldf lgjdfg#@$%#@$#@%^$#$%^&#^$^243q24 4  gf hlf', '', '', 14, '', 1, '', '9876543210', 'vinodbabu12@pofitec.com');
INSERT INTO `nm_customer` VALUES (216, 'dfgldf lgjdfg#@$%#@$#@%^$#$%^&#^$^243q24 4 gf hlfslfsd ds fas435 sdfnsdfsf', '', '', 'vinodbabu123@pofitec.com', 'a3f0bec59cebeb60553ec80bbfd5dfdf', '9876543210', '', '', '1', '15', '2018-01-06 13:46:38', 2, 2, '', '2018-01-06', 0, 'dfgldf lgjdfg#@$%#@$#@%^$#$%^&#^$^243q24 4 gf hlfs', '', '', 15, '', 1, '', '9876543210', 'vinodbabu123@pofitec.com');
INSERT INTO `nm_customer` VALUES (217, 'Test', '', '', 'vinodbabu123@pofitec.com', '3e1563cd3ee9444a6fea61b754440b5e', '9876543210', '', '', '1', '14', '2018-01-06 13:49:32', 2, 0, '', '2018-01-06', 0, 'Test', '', '', 14, '', 1, '', '9876543210', 'vinodbabu123@pofitec.com');
INSERT INTO `nm_customer` VALUES (218, 'vxc', '', '', 'venugaopal1@pofitec.com', '25d55ad283aa400af464c76d713c07ad', '3456765434', 'jhkjhkk', 'jhkj', '1', '1', '2018-01-06 15:48:46', 1, 2, '', '2018-01-06', 0, 'vxc', 'jhkjhkk', 'jhkj', 1, '', 1, '', '3456765434', 'venugaopal@pofitec.com');
INSERT INTO `nm_customer` VALUES (219, 'ghj_ jkj  ', '', '', 'ghjgl@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '3456765434', 'jhkjhkk', 'jhkj', '1', '14', '2018-01-06 16:00:58', 1, 0, '', '2018-01-06', 0, 'ghj', 'jhkjhkk', 'jhkj', 14, '', 1, '', '3456765434', 'ghjgvenu22552g000opal@pofitec.com');
INSERT INTO `nm_customer` VALUES (220, 'venugopal', '', '114634821662074458101', 'venugopal@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '3456765434', 'Address1', 'Address2', '1', '1', '2018-01-06 19:28:25', 2, 0, '', '2018-01-06', 628, 'venugopal', 'Address1', 'Address2', 14, 'CSA state', 1, '12134', '3456765434', 'venugopal@pofitec.com');
INSERT INTO `nm_customer` VALUES (221, 'venugopal', '', '', 'venugopa2l@pofitec.com', 'd9ddf676cf7c75d1b1e231e1ce04ca0d', '3456765434', '', '', '1', '1', '2018-01-06 19:31:20', 2, 2, '', '2018-01-06', 0, 'venugopal', '', '', 1, '', 1, '', '3456765434', 'venugopal@pofitec.com');
INSERT INTO `nm_customer` VALUES (222, 'venugopal', '', '', 'venugopal@pofditec.com', 'e10adc3949ba59abbe56e057f20f883e', '3456765434', '', '', '1', '1', '2018-01-06 19:34:25', 2, 2, '', '2018-01-06', 0, 'venugopal', '', '', 1, '', 1, '', '3456765434', 'venugopal@pofitec.com');
INSERT INTO `nm_customer` VALUES (223, 'sdf', '', '', 'kathirvel@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4512345678', '', '', '1', '14', '2018-01-06 21:09:36', 2, 0, '', '2018-01-06', 0, 'sdf', '', '', 14, '', 1, '', '4512345678', 'kathirvel@gmail.com');
INSERT INTO `nm_customer` VALUES (224, 'venugopal12345678', '', '', 'venugopal11@pofitec.com', 'd9ddf676cf7c75d1b1e231e1ce04ca0d', '3456765434', 'jhkjhkk', 'jhkj', '1', '14', '2018-01-09 19:01:48', 1, 0, '', '2018-01-09', 0, 'venugopal12345678', 'jhkjhkk', 'jhkj', 14, '', 1, '', '3456765434', 'venugopal11@pofitec.com');
INSERT INTO `nm_customer` VALUES (225, 'sadasdasdasd_', '', '', 'venugopaljjj@pofitec.com', '6a4eecd12f3c9b5a1629238ac9a6edce', '1234555567567756', 'jhkjhkk', 'jhkj', '1', '1', '2018-01-09 19:04:43', 1, 0, '', '2018-01-09', 0, 'sadasdasdasd_', 'jhkjhkk', 'jhkj', 1, '', 1, '', '1234555567567756', 'venugopaljjj@pofitec.com');
INSERT INTO `nm_customer` VALUES (226, 'suganya', '', '', 'suganya1.t@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '8', '7', '2018-01-10 19:06:51', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (227, 'suganya', '', '', 'suganya2.t@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '12', '32', '1', '1', '2018-01-10 19:08:37', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (228, 'vinod babu', '12345678912345672312', '', 'testk420@gmail.com', '', '', '', '', '', '', '2018-01-10 19:25:17', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (229, 'balu', '', '', 'balamurugan@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '7418529635', 'testsdf', 'test', '1', '1', '2018-01-10 21:05:04', 2, 0, '', '2018-01-10', 1551, 'bala', 'Hope', 'Peelamedu', 16, 'tn', 1, '641004', '7418529635  ', 'balamurugan@pofitec.com');
INSERT INTO `nm_customer` VALUES (230, 'dfdg', '', '', 'fhgf@fgfd.com', 'd964173dc44da83eeafa3aebbee9a1a0', '1231654541', '', '', '11', '0', '2018-01-11 12:49:57', 2, 0, '', '2018-01-11', 0, 'dfdg', '', '', 0, '', 11, '', '1231654541', 'fhgf@fgfd.com');
INSERT INTO `nm_customer` VALUES (231, 'sdgfdgsg', '', '', 'users@gmail123.com', 'd964173dc44da83eeafa3aebbee9a1a0', '7894561234', 'gh', 'g', '1', '17', '2018-01-11 12:51:47', 2, 2, '', '2018-01-11', 0, 'sdgfdgsg', '', '', 0, '', 17, '', '7894561234', 'asd@gmail.com');
INSERT INTO `nm_customer` VALUES (232, 'users', '', '', 'users@gmail123.com', 'e10adc3949ba59abbe56e057f20f883e', '7418529635', 'cbe', 'cbe', '7', '22', '2018-01-11 12:56:11', 2, 2, '', '2018-01-11', 90, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 1, 'ertrd', 1, '123456', '7418529635', 'suganya.t@pofitec.com');
INSERT INTO `nm_customer` VALUES (233, 'venugopal', '', '', 'sathyaseelan@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890123456', 'fh', 'jhkj', '1', '1', '2018-01-11 13:54:51', 2, 0, '', '2018-01-11', 0, 'murugan', '', '', 1, '', 1, '', '9876541221', 'balamurugan.cse12@gmail.com');
INSERT INTO `nm_customer` VALUES (234, 'dasfdasf', '', '', 'sathyaseelan@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 13:19:27', 2, 2, '', '2018-01-13', 0, 'dasfdasf', '', '', 1, '', 1, '', '9944349002', 'sathyaseelan@pofitec.com');
INSERT INTO `nm_customer` VALUES (235, 'suganya', '', '109290419848914928843', 'suganya@pofitec.com', '2fae6a7de8eca2498ccbde9b5352f26a', '9944349002', '', '', '1', '1', '2018-01-13 13:23:55', 2, 2, '', '2018-01-13', 0, 'suganya', '', '', 1, '', 1, '', '9944349002', 'suganya@pofitec.com');
INSERT INTO `nm_customer` VALUES (236, 'ragul', '', '', 'ragulaero@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'coimbatore', '1', '1', '2018-01-13 14:02:19', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (237, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 14:04:43', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (238, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 14:46:10', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (239, 'ytry', '', '', 'venugopal@pofditec.com', '02a2a253ade3a3aa2cfa24f5553397dc', '54645656', 'try', 'try', '1', '17', '2018-01-13 14:56:04', 1, 0, '', '2018-01-13', 0, 'ytry', 'try', 'try', 17, '', 1, '', '54645656', 'venugopal@pofditec.com');
INSERT INTO `nm_customer` VALUES (240, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 15:55:36', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (241, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 16:02:57', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (242, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 16:05:39', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (243, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 16:08:12', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (244, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-13 17:49:10', 2, 2, '', '2018-01-13', 0, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (245, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'asasa', '1', '1', '2018-01-13 19:53:49', 1, 2, '', '2018-01-13', 0, 'ragul', 'coimbatore', 'asasa', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (246, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'coimbatore', '1', '1', '2018-01-13 20:00:10', 1, 2, '', '2018-01-13', 0, 'ragul', 'coimbatore', 'coimbatore', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (247, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'coimbatore', '1', '1', '2018-01-13 20:01:12', 1, 2, '', '2018-01-13', 0, 'ragul', 'coimbatore', 'coimbatore', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (248, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'coimbatore', '1', '1', '2018-01-13 20:03:51', 1, 2, '', '2018-01-13', 0, 'ragul', 'coimbatore', 'coimbatore', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (249, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'coimbatore', 'coimbatore', '1', '1', '2018-01-13 20:06:54', 1, 2, '', '2018-01-13', 40, 'ragul', 'coimbatore', 'coimbatore', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (250, 'ragul', '', '', 'ragulgandhi@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', '', '', '1', '1', '2018-01-16 12:32:41', 2, 0, '', '2018-01-16', 64, 'ragul', '', '', 1, '', 1, '', '9944349002', 'ragulgandhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (251, 'suganya', '', '', 'suganySa2.t@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '5464356', 'hope', 'Peelamedu', '1', '1', '2018-01-18 19:52:16', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (253, 'userr', '', '', 'user@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7894561235', 'cbe', 'cbe', '7', '22', '2018-02-06 18:13:05', 2, 0, 'No_image_product6H76rlLa.png', '2018-02-06', 0, 'user', 'safdfdfdsgfdgfghgjghkjhkjhk', 'fdfdsgfg', 1, 'df', 1, '543543', '1234567895', 'user@gmail.com');
INSERT INTO `nm_customer` VALUES (254, 'saranya', '', '', 'saranya.t@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7894561235', 'test', 'test', '1', '1', '2018-02-06 20:28:50', 2, 0, '', '2018-02-06', 0, 'saranya', '', '', 1, '', 1, '', '7894561235', 'saranya@gmail.com');
INSERT INTO `nm_customer` VALUES (263, 'sdfasdf', '', '', 'sdafasf@gmail.com', '84935fe3eba50ea4e3d70b7f7964b9c0', '345456456', 'sdfsa', 'asdfsa', '1', '1', '2018-02-06 22:07:28', 1, 0, '', '2018-02-06', 0, 'sdfasdf', 'sdfsa', 'asdfsa', 1, '', 1, '', '345456456', 'sdafasf@gmail.com');
INSERT INTO `nm_customer` VALUES (264, 'user5', '', '', 'user5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '876', 'dthghg', 'gfhfg', '1', '1', '2018-02-07 12:36:04', 2, 0, '', '2018-02-07', 0, 'user5', '', '', 1, '', 1, '', '7418529635', 'user5@gmail.com');
INSERT INTO `nm_customer` VALUES (265, 'sdfasdfd', '', '', 'xcvxcvzvz@gmail.com', 'a956585c9377484e37c4fc14bfbcb2af', '4456756785', '', '', '1', '1', '2018-02-07 15:52:52', 2, 2, '', '2018-02-07', 0, 'sdfasdfd', '', '', 1, '', 1, '', '4456756785', 'xcvxcvzvz@gmail.com');
INSERT INTO `nm_customer` VALUES (266, 'sdfasfdas', '', '', 'sdfsdfdsf@dgfdfgdfg.com', '3a744f8ffd20821f63e33033456b96cd', '9876543210', '', '', '7', '22', '2018-02-09 19:47:58', 2, 2, '', '2018-02-09', 0, 'sdfasfdas', '', '', 22, '', 7, '', '9876543210', 'sdfsdfdsf@dgfdfgdfg.com');
INSERT INTO `nm_customer` VALUES (267, 'dsfa', '', '', 'asdfas@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '98658655566', 'dssdfadsff', 'sdfsdfas', '1', '3', '2018-02-14 19:50:07', 1, 2, '', '2018-02-14', 0, 'dsfa', 'dssdfadsff', 'sdfsdfas', 3, '', 1, '', '98658655566', 'asdfas@gmail.com');
INSERT INTO `nm_customer` VALUES (268, 'sdfasdf', '', '', 'malarvizdhi@pofitec.com', '352becfab9a13d08bb2b7f654b0f8bf4', '8012122975', 'test', 'test2', '1', '1', '2018-02-14 19:53:23', 1, 2, '', '2018-02-14', 0, 'sdfasdf', 'test', 'test2', 1, '', 1, '', '8012122975', 'malarvizdhi@pofitec.com');
INSERT INTO `nm_customer` VALUES (269, 'dsfsdf', '', '', 'amal@pofitec.comd', '0871ffa64cad5be62f1dd9b56b6bc45e', '3456765434', 'jhkjhkk', 'jhkj', '1', '23', '2018-02-14 19:55:25', 1, 2, '', '2018-02-14', 0, 'dsfsdf', 'jhkjhkk', 'jhkj', 23, '', 1, '', '3456765434', 'amal@pofitec.comd');
INSERT INTO `nm_customer` VALUES (270, 'dffd', '', '', 'balamurun@pofitec.com', '909c79133e09b065ec440fc01d2c2192', '9898745123', 'ram nagar', 'covai', '1', '1', '2018-02-14 19:57:33', 1, 2, '', '2018-02-14', 0, 'rsasadsad', 'ram nagar', 'covai', 1, '', 1, '', '9898745123', 'balamurugadn@pofitec.com');
INSERT INTO `nm_customer` VALUES (271, 'fghfh', '', '', 'fdgf@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '45434343', 'fddgfh', 'fdhfgn', '14', '12', '2018-03-16 21:10:48', 1, 0, '', '2018-03-16', 0, 'fghfh', 'fddgfh', 'fdhfgn', 12, '', 14, '', '45434343', 'fdgf@gmail.com');
INSERT INTO `nm_customer` VALUES (272, 'Suganya', '', '109290419848914928843', 'suganya@pofitec.com', '2fae6a7de8eca2498ccbde9b5352f26a', '1234567890', 'Mettupalayam', 'Ooty', '1', '1', '2018-03-26 19:52:21', 2, 2, '', '2018-03-26', 230, 'Suganya', '', '', 1, '', 1, '', '1234567890', 'suganya@pofitec.com');
INSERT INTO `nm_customer` VALUES (273, 'suganya', '', '109290419848914928843', 'suganya@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', '', '', '1', '1', '2018-03-30 19:03:15', 2, 0, '', '2018-03-30', 484, 'suganya', '', '', 1, '', 1, '', '1234567890', 'suganya@pofitec.com');
INSERT INTO `nm_customer` VALUES (274, 'suganya', '', '', 'sugan@pofitec.co', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', '', '', '1', '1', '2018-04-06 18:14:18', 2, 0, '', '2018-04-06', 0, 'suganya', '', '', 1, '', 1, '', '1234567890', 'sugan@pofitec.co');
INSERT INTO `nm_customer` VALUES (275, 'Mohammed Haathim', '', '107311908005841784404', 'nagoor@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '8508457853', 'Asad Nagar', 'Karumbukadai', '1', '4', '2018-04-09 12:19:24', 2, 0, 'TulipsTN4eeDPV.jpg', '2018-04-09', 10, 'Nagoor meeran', 'Karumbukada', 'Asad Nagar,', 1, 'test', 1, '452352', '1591591599         ', 'nagoor@pofitec.com');
INSERT INTO `nm_customer` VALUES (284, 'Suganya A', '', '109290419848914928843', 'suganya@pofitec.com', '2fae6a7de8eca2498ccbde9b5352f26a', '', '', '', '', '', '2018-04-09 16:22:34', 4, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (285, 'Kailash Kumar R', '', '110927240905547991393', 'kailashkumar.r@pofitec.com', 'Kailash Kumar R', '', '', '', '', '', '2018-04-09 18:08:18', 4, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (286, 'GD Venugopal', '', '114634821662074458101', 'venugopal@pofitec.com', 'GD Venugopal', '', '', '', '', '', '2018-04-09 19:10:58', 4, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (287, 'erfer', '', '', 'suganysdsdsa@pofitec.com', 'b4e0c67ab522a25a162583dbecb48351', '1234567890', '', '', '1', '1', '2018-04-12 18:22:51', 2, 0, '', '2018-04-12', 0, 'erfer', '', '', 1, '', 1, '', '1234567890', 'suganysdsdsa@pofitec.com');
INSERT INTO `nm_customer` VALUES (288, 'venugopal', '', '', 'venugopal123@pofitec.com', '0ea18d2c3d5d5545c39e48d41ab2659f', '1234567890', '', '', '1', '1', '2018-04-12 18:22:52', 2, 0, '', '2018-04-12', 0, 'venugopal', '', '', 1, '', 1, '', '1234567890', 'venugopal123@pofitec.com');
INSERT INTO `nm_customer` VALUES (289, 'Rapidfreez', '185407402258187', '', 'socialservicerapidfreez@gmail.com', '', '', '', '', '', '', '2018-04-12 22:04:14', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (290, 'Vishnu VR', '1581882145243002', '', 'vishnuvr04@gmail.com', '', '', '', '', '', '', '2018-04-13 12:37:26', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');
INSERT INTO `nm_customer` VALUES (291, 'Vinod Vinod', '2054401261446915', '', 'test21689@gmail.com', '', '', '', '', '', '', '2018-04-16 12:14:18', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', '');

-- ----------------------------
-- Table structure for nm_deals
-- ----------------------------
DROP TABLE IF EXISTS `nm_deals`;
CREATE TABLE `nm_deals`  (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_title` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_title_fr` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_category` int(11) NOT NULL,
  `deal_main_category` int(11) NOT NULL,
  `deal_sub_category` int(11) NOT NULL,
  `deal_second_sub_category` int(11) NOT NULL,
  `deal_original_price` int(11) NOT NULL,
  `deal_discount_price` int(11) NOT NULL,
  `deal_discount_percentage` int(11) NOT NULL,
  `deal_saving_price` int(11) NOT NULL,
  `deal_inctax` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `deal_shippamt` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_start_date` datetime(0) NOT NULL,
  `deal_end_date` datetime(0) NOT NULL,
  `deal_expiry_date` date NOT NULL,
  `deal_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_description_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_merchant_id` int(11) NOT NULL,
  `deal_shop_id` int(11) NOT NULL,
  `deal_meta_keyword` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_meta_keyword_fr` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_meta_description` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_meta_description_fr` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_min_limit` int(11) NOT NULL,
  `deal_max_limit` int(11) NOT NULL,
  `deal_purchase_limit` int(11) NOT NULL,
  `deal_image_count` int(11) NOT NULL,
  `deal_image` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_no_of_purchase` int(11) NOT NULL,
  `created_date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deal_status` int(11) NOT NULL DEFAULT 1 COMMENT '1-active, 0-block',
  `deal_posted_date` datetime(0) NOT NULL,
  `deal_delivery` int(11) NOT NULL,
  `allow_cancel` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-No,1-Yes',
  `allow_return` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-No,1-Yes',
  `allow_replace` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-No,1-Yes',
  `cancel_policy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cancel_policy_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `return_policy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `return_policy_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `replace_policy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `replace_policy_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cancel_days` int(11) NOT NULL,
  `return_days` int(11) NOT NULL,
  `replace_days` int(11) NOT NULL,
  PRIMARY KEY (`deal_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_deals
-- ----------------------------
INSERT INTO `nm_deals` VALUES (1, 'Trendz Style', '', 3, 4, 5, 0, 1500, 1200, 20, 300, '5', '5', '2018-03-01 11:39:00', '2018-03-01 18:39:00', '2017-12-31', 'test', '', 41, 57, 'test', '', 'test', '', 0, 150, 0, 0, 'Deal_1513422713.Deal_1510126348.cool saree 800 x 800.jpg/**/Deal_1516259133.jpg/**/', 17, '12/16/2017', 1, '2018-01-18 12:35:33', 0, '1', '1', '1', 'yes', '', 'yes', '', 'yes', '', 2, 2, 2);
INSERT INTO `nm_deals` VALUES (2, 'Deal Title d', '', 2, 2, 0, 0, 10, 5, 50, 5, '', '0', '2017-12-08 16:22:00', '2017-12-29 16:22:00', '2017-12-29', 'description', '', 58, 59, 'asd', '', 'asd', '', 0, 10, 0, 0, 'Deal_1513594358.png/**/', 0, '12/18/2017', 1, '2017-12-18 16:22:38', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (3, 'deal img check', '', 2, 2, 3, 0, 10, 5, 50, 5, '', '0', '2017-12-07 16:36:00', '2017-12-29 16:36:00', '2017-12-29', 'ds', '', 58, 59, 'dsf', '', 'sdf', '', 0, 23, 0, 0, 'Deal_1513595220.png/**/Deal_151637040329422.jpg/**/Deal_15163704039103.jpg/**/Deal_151637040326140.jpg/**/Deal_151637040312837.jpg/**/', 1, '12/18/2017', 1, '2018-01-19 19:30:03', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (4, 'Innovador', '', 7, 17, 26, 0, 300, 200, 33, 100, '', '0', '2017-12-19 14:41:00', '2017-12-29 14:41:00', '2017-12-29', 'test', '', 41, 61, 'test', '', 'test', '', 0, 2, 0, 0, 'Deal_1513674579.jpg/**/', 0, '12/19/2017', 1, '2017-12-19 14:41:52', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (5, 'grt', '', 2, 2, 3, 8, 1000, 100, 90, 900, '', '0', '2017-12-21 17:37:00', '2017-12-30 17:37:00', '2017-12-30', 'hehe', '', 41, 57, 'heeh', '', 'hehe', '', 0, 100, 0, 1, 'Deal_1513858084.png/**/', 2, '12/21/2017', 1, '2017-12-21 17:38:04', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (6, 'gool deals', '', 2, 2, 4, 1, 1000, 100, 90, 900, '', '0', '2017-12-21 17:38:00', '2017-12-25 17:38:00', '2017-12-25', 'hehe', '', 60, 63, 'gaag', '', 'eee', '', 0, 100, 0, 5, 'Deal_1513858158.png/**/Deal_1513858158.png/**/Deal_1513858158.png/**/Deal_1513858158.png/**/Deal_1513858158.png/**/', 0, '12/21/2017', 1, '2017-12-21 17:39:19', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (7, 'gud', '', 3, 4, 5, 0, 1000, 100, 90, 900, '', '0', '2017-12-21 17:39:00', '2017-12-22 17:39:00', '2017-12-22', 'fafa', '', 58, 59, 'xaxa', '', 'ads', '', 0, 100, 0, 5, 'Deal_1513858247.png/**/Deal_1513858247.png/**/Deal_1513858247.png/**/Deal_1513858247.png/**/Deal_1513858248.png/**/', 0, '12/21/2017', 1, '2017-12-21 17:40:48', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (8, 'grt', '', 2, 2, 3, 8, 1000, 100, 90, 900, '', '0', '2017-12-21 18:26:00', '2017-12-22 18:26:00', '2017-12-22', 'gaga', '', 58, 59, 'fefef', '', 'efefe', '', 0, 5, 0, 3, 'Deal_1513861081.png/**/Deal_1513861081.png/**/Deal_1513861081.png/**/', 0, '12/21/2017', 1, '2017-12-21 18:28:01', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (9, 'gud', '', 2, 2, 3, 8, 1000, 100, 90, 900, '', '0', '2017-12-21 18:30:00', '2017-12-30 18:30:00', '2017-12-30', 'gege', '', 41, 57, 'tet', '', 'ete', '', 0, 15, 0, 0, 'Deal_1513861286.png/**/Deal_1516193017.jpg/**/', 11, '12/21/2017', 1, '2018-01-17 18:51:02', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (10, 'gudxz', '', 2, 10, 0, 8, 1000, 100, 90, 900, '', '0', '2017-12-21 18:44:00', '2017-12-22 18:44:00', '2017-12-22', 'tete', '', 41, 57, 'ljll', '', 'oio', '', 0, 5, 0, 2, 'Deal_1513862119.png/**/Deal_1513862120.png/**/', 0, '12/21/2017', 1, '2017-12-21 18:45:20', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (11, 'super store', '', 4, 6, 8, 0, 1000, 100, 90, 900, '', '0', '2017-12-21 18:45:00', '2017-12-22 18:45:00', '2017-12-22', 'pskpaks', '', 62, 65, 'sada', '', 'sdasd', '', 0, 5, 0, 5, 'Deal_1513862182.png/**/Deal_1513862182.png/**/Deal_1513862182.png/**/Deal_1513862183.png/**/Deal_1513862183.png/**/', 0, '12/21/2017', 1, '2017-12-21 18:46:23', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (12, 'super store', '', 2, 2, 3, 9, 1000, 100, 90, 900, '', '0', '2017-12-21 18:46:00', '2017-12-21 18:46:00', '2017-12-21', 'yyiu', '', 65, 71, 'jhhkj', '', 'jhk', '', 0, 5, 0, 3, 'Deal_1513862250.png/**/Deal_1513862250.png/**/Deal_1513862250.png/**/', 0, '12/21/2017', 1, '2017-12-21 18:47:30', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (13, 'Express deal', '', 3, 4, 5, 0, 1000, 800, 20, 200, '', '0', '2017-12-27 12:29:00', '2017-12-27 17:00:00', '2017-12-27', 'saree', '', 58, 59, 'saree', '', 'saree', '', 0, 5, 0, 1, 'Deal_1514358120.jpg/**/', 1, '12/27/2017', 1, '2017-12-27 12:32:00', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (14, 'knife sets', '', 5, 15, 0, 0, 9000, 8500, 6, 500, '5', '40', '2017-12-27 17:04:00', '2017-12-27 20:00:00', '2017-12-27', 'asdsa', '', 58, 59, 'wee', '', 'wqewq', '', 0, 5, 0, 1, 'Deal_1514374542.jpg/**/', 0, '12/27/2017', 1, '2017-12-27 17:05:42', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (15, 'silk saree', '', 3, 4, 5, 0, 9000, 8500, 6, 500, '5', '40', '2017-12-27 17:10:00', '2017-12-27 21:00:00', '2017-12-27', 'nice', '', 41, 57, 'sd', '', 'dfdg', '', 0, 5, 0, 1, 'Deal_1514374885.jpg/**/', 0, '12/27/2017', 1, '2017-12-27 17:11:25', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (16, 'cotton saree', '', 4, 12, 20, 0, 9000, 8500, 5, 500, '5', '40', '2018-01-17 21:58:00', '2018-01-19 13:18:00', '2018-01-19', 'dffgf', '', 60, 63, 'fgffg', '', 'fgf', '', 0, 56, 0, 0, '/**/', 5, '12/27/2017', 1, '2018-01-17 18:31:21', 11, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (17, 'dealls', '', 2, 2, 3, 8, 850, 500, 41, 350, '', '0', '2017-12-28 15:14:00', '2017-12-28 15:17:00', '2017-12-28', 'dfd', '', 41, 57, 'gfdg', '', 'ggg', '', 0, 2, 0, 1, 'Deal_1514454329.jpg/**/', 0, '12/28/2017', 1, '2017-12-28 15:15:30', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (18, 'western', '', 3, 7, 10, 4, 500, 320, 36, 180, '', '0', '2017-12-28 15:18:00', '2017-12-28 20:01:00', '2017-12-28', 'uytu', '', 41, 57, 'tyyu', '', 'yury', '', 0, 5, 0, 1, 'Deal_1514454636.jpg/**/', 0, '12/28/2017', 1, '2017-12-28 15:20:36', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (19, 'deal11', '', 3, 4, 5, 0, 500, 250, 50, 250, '5', '0', '2018-01-04 12:40:00', '2018-01-04 12:45:00', '2018-01-04', 'gjghjh', '', 41, 57, 'hgjh', '', 'hgkjk', '', 0, 5, 0, 0, 'Deal_1515049272.jpg/**/', 2, '01/04/2018', 1, '2018-02-07 16:52:45', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (20, 'deal2', '', 3, 4, 5, 0, 500, 250, 50, 250, '5', '0', '2018-01-10 12:56:00', '2018-01-10 13:05:00', '2018-01-10', 'gfhfh', '', 58, 59, 'ghgh', '', 'gfhgh', '', 0, 2, 0, 0, 'Deal_1515050843.jpg/**/Deal_1516199263.jpg/**/Deal_1516200015.jpg/**/', 0, '01/04/2018', 1, '2018-01-17 20:10:15', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (21, 'Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Deal Title Test Dea', '', 2, 2, 3, 9, 1000000000, 100000000, 90, 900000000, '99', '0', '2018-01-04 18:28:00', '2018-01-18 18:28:00', '2018-01-18', 'Test', '', 62, 65, 'TEtres', '', 'tests', '', 0, 10, 0, 0, 'Deal_1515070546.jpg/**/', 5, '01/04/2018', 1, '2018-01-04 18:37:02', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (22, 'now deal', '', 3, 4, 5, 0, 20101010, 12101001, 39, 8000009, '20', '0', '2018-01-11 13:19:00', '2018-01-17 22:18:00', '2018-01-17', 'gfh', '', 58, 59, 'fgfg', '', 'ghgfhgjh', '', 0, 1, 0, 0, 'Deal_1516259098.jpg/**/Deal_1516367837.jpg/**/Deal_1516367837.jpg/**/Deal_1516367837.jpg/**/Deal_1516367837.jpg/**/', 0, '01/05/2018', 1, '2018-01-19 18:47:17', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (23, 'Baby Planet', '', 4, 12, 20, 0, 2000, 1800, 10, 200, '0', '50', '2018-01-10 13:17:00', '2018-01-20 18:17:00', '2018-01-20', 'Children\'s clothing or kids\' clothing is clothing for children who have not yet grown to full height. Grandma bait is a retail industry term for expensive children\'s clothing', '', 68, 75, 'American sizes for baby clothes are usually based on the child\'s weight.', '', 'European sizes are usually based on the child\'s height. These may be expressed as an estimated age of the child, e.g., size 6 months (or 3–6 months) is expected to fit a child 61 to 67 centimetres (24 to 26 in) in height and 5.7 to 7.5 kilograms (13 to 17 lb) in weight.', '', 0, 17, 0, 0, 'Deal_1515138943.jpg/**/Deal_1516367752461.jpg/**/', 3, '01/05/2018', 1, '2018-01-19 18:45:52', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (24, 'Sony', '', 6, 16, 24, 0, 43399, 40229, 7, 3170, '0', '0', '1970-01-01 05:30:00', '1970-01-01 05:30:00', '1970-01-01', 'Sony VAIO Fit 15 SVF15318 laptop runs on Windows 8 (64 bit) OS and has Intel Core i5 (4th generation) 1.6 GHz with Intel Turbo boost up to 2.6Ghz processor. It has Intel HD Graphics 4000 / Nvidia GeForce GT 740M 1GB DDR3 graphics processor.', '', 68, 75, 'BASIC INFORMATION', '', 'model name\r\nVAIO Fit 15 SVF15318\r\nlaunch date (global)\r\n2013-11-04\r\noperating system (with version)\r\nWindows 8 (64 bit)\r\nlaptop type\r\nMainstream\r\nDISPLAY\r\ndisplay size (in inches)\r\n15.5\r\ndisplay technology\r\nTFT LED Backlit colour display\r\nResolution\r\n1366 x 768 \r\nCONNECTIVITY\r\nwireless connectivity\r\nWiFi Bluetooth 4.0 +HS\r\nconnectivity\r\n2 x USB 2.0 2 x USB 3.0 HDMI\r\nfeatures\r\nBuilt in HD Webcam (.92 MP) memory card reader Backlit keyboard\r\npointing device\r\nTouchpad (Gesture supported)\r\nMEMORY\r\nr', '', 0, 5, 0, 0, '', 2, '01/05/2018', 1, '2018-02-07 13:45:52', 3, '1', '1', '1', 'You can cancel the product within 24 hours from the date and time you ordered it.', '', 'Generally, merchandise purchased in store or on Walmart.com can be returned or exchanged within 4 of purchase with or without a <b>receipt</b>. Below are<b>exceptions</b> to the general 4 rule. All of the <b>exceptions</b> listed below require the merchandise be returned with a <b>receipt</b>.', '', '<b>Replacement policy</b> is an insurance <b>policy</b> between an insurance company and a consumer which promises to pay the insured the <b>replacement</b> value of the subject of the <b>policy</b> if a loss occurs.', '', 1, 4, 2);
INSERT INTO `nm_deals` VALUES (25, 'Coffee Makers', '', 5, 15, 0, 0, 600, 300, 50, 300, '2', '0', '1970-01-01 05:30:00', '1970-01-17 05:30:00', '1970-01-17', 'Make aromatic, freshly brewed coffee every morning using the Russell Hobbs RCM60 Coffee Maker. It prepares six cups of coffee. Equipped with a permanent filter, this coffee maker is convenient to use. Lightweight and portable, this 650-watt coffee maker is perfect for bachelor pads, dormitories, and homes. Its sleek and stylish design will surely add charm to your kitchen decor.\r\n0.6 liters Capacity,On/off Switch,Inox Boiler Material,650 Watt Power Consumption', '', 68, 75, 'Auto Shut off', '', 'Power Consumption 650 W\r\nPerformance Features 15 bars Pump Pressure', '', 0, 8, 0, 0, 'Deal_1515145271.jpg/**/', 1, '01/05/2018', 1, '2018-01-16 15:25:03', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (26, 'Multicusine Sofa', '', 5, 14, 23, 0, 25000, 22000, 12, 3000, '', '500', '2018-01-05 14:57:00', '2018-01-27 14:57:00', '2018-01-27', 'Wooden furniture has always been in great demand and therefore we offer the best quality wooden furniture to our clients', '', 68, 75, 'Modern Furniture', '', 'Different type of wooden furniture is offered by us like sofa, table, wardrobe case, bed and others. We procure our furniture from best wooden furniture manufacturers who innovatively design the each furniture with optimum quality wood', '', 0, 10, 0, 1, 'Deal_1515145111.jpg/**/', 5, '01/05/2018', 1, '2018-01-05 15:08:31', 0, '1', '1', '0', 'ancellation prior to delivery - You can cancel your order for any product (except made-to-order products and gift items) at any time prior to its delivery by logging in to your account .\r\n\r\nFor cancellations made before a delivery attempt, any advance paid will be refunded as per our refund policy. A delivery attempt is defined as a visit to the customer’s home for delivery purposes.', '', 'If you happen to receive a damaged or defective product, or a product that does not comply with the specifications as per your original order, please get in touch with our customer service team at phone number or by writing in to mail address', '', '', '', 2, 6, 0);
INSERT INTO `nm_deals` VALUES (27, 'Fastrack', '', 3, 47, 0, 0, 750, 620, 17, 130, '2', '0', '2018-01-05 15:12:00', '2018-01-27 15:12:00', '2018-01-27', 'Key Features\r\n\r\nSquare Dial\r\n\r\nBlack Strap\r\n\r\nStainless Steel Back Case\r\n\r\nWater Resistant', '', 68, 75, 'Body and Design', '', 'The solid lines and cuts of the square dial of the watch are complemented by the leather strap that adds a touch of class and texture to it. The dial has a large grey number and no other detailing which looks minimalist and elegant.', '', 0, 15, 0, 1, 'Deal_1515145857.jpg/**/', 14, '01/05/2018', 1, '2018-01-05 15:20:57', 0, '0', '1', '0', '', '', 'Shop online whenever you want to - yes, that 24x7 experience is so convenient now, isn\'t it?! And you get genuine products delivered to your doorstep from your favourite brands with free shipping. ', '', '', '', 0, 4, 0);
INSERT INTO `nm_deals` VALUES (28, 'today deal', '', 3, 4, 5, 0, 25000, 10000, 60, 15000, '5', '250', '2018-01-10 11:52:00', '2018-01-10 14:23:00', '2018-01-10', 'fcgbj', '', 62, 65, 'hgvh', '', 'fhgbj', '', 0, 16, 0, 0, 'Deal_1515563707.jpg/**/Deal_1516195431.jpg/**/', 15, '01/10/2018', 1, '2018-01-17 18:53:51', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (29, 'deal offer', '', 3, 4, 5, 0, 500, 250, 50, 250, '2', '20', '2018-01-11 11:28:00', '2018-01-19 11:28:00', '2018-01-19', 'sggtyt', '', 60, 63, 'fdgfh', '', 'fhgfh', '', 0, 10, 0, 0, 'Deal_1515563961.jpg/**/Deal_1516184766.jpg/**/', 1, '01/10/2018', 1, '2018-01-17 18:19:56', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (30, 'new1 deal', '', 2, 2, 3, 8, 5200, 2500, 51, 2700, '', '0', '2018-01-10 16:03:00', '2018-01-10 19:01:00', '2018-01-10', 'fdhdghj', '', 58, 59, 'dghg', '', 'jhgjhg', '', 0, 9, 0, 0, 'Deal_1515580353.jpg/**/Deal_1516183107.jpg/**/Deal_1516200054.jpg/**/Deal_1516274508.jpg/**/Deal_1516274508.jpg/**/', 5, '01/10/2018', 1, '2018-01-18 16:51:48', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (31, 'off deal', '', 2, 10, 15, 0, 520, 250, 51, 270, '2', '23', '2018-01-10 16:40:00', '2018-01-10 20:38:00', '2018-01-10', 'sdgfdhgh', '', 58, 59, 'fdg', '', 'fhh', '', 0, 10, 0, 0, 'Deal_1515582590.jpg/**/Deal_1516191781.jpg/**/Deal_1516191781.jpg/**/Deal_1516274962.jpg/**/Deal_1516276143.jpg/**/', 5, '01/10/2018', 1, '2018-01-18 17:19:03', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (32, 'now deals', '', 2, 10, 15, 0, 5200, 1230, 76, 3970, '23', '0', '1970-01-01 05:30:00', '1970-01-01 05:30:00', '1970-01-01', 'dtrj', '', 58, 59, 'tytru', '', 'tytyuy', '', 0, 5, 0, 0, '', 0, '01/10/2018', 1, '2018-01-17 19:56:45', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (33, 'hjkhjkh', '', 2, 2, 3, 0, 56, 45, 19, 11, '10', '0', '2018-03-01 11:15:00', '2018-03-02 11:15:00', '2018-01-24', 'gfhgf', '', 41, 57, 'fgh', '', 'fgh', '', 0, 45, 0, 1, 'Deal_1516082600.jpg/**/', 3, '01/16/2018', 1, '2018-01-16 11:33:20', 5, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (34, 'sdfsd', '', 2, 2, 0, 0, 24, 23, 4, 1, '44', '0', '2018-01-16 12:00:00', '2018-01-30 12:00:00', '2018-01-30', 'nhghjghj', '', 41, 57, '', '', '', '', 0, 5, 0, 0, 'Deal_1516084288.jpg/**/Deal_151781890531740.jpg/**/Deal_151781890517029.jpg/**/', 2, '01/16/2018', 1, '2018-02-05 15:31:20', 5, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (35, 'Bata', '', 2, 10, 15, 0, 1200, 999, 16, 201, '5', '0', '2018-01-16 12:45:00', '2018-01-25 12:45:00', '2018-01-25', 'The image must be of, or pertain to, the product being sold.\r\nThe image must be in focus, professionally lit and photographed or scanned, with realistic color, and smooth edges.', '', 68, 75, 'test', '', 'test', '', 0, 50, 0, 1, 'Deal_1516087889.jpg/**/', 2, '01/16/2018', 1, '2018-01-16 13:01:29', 4, '1', '1', '1', ' We require 4 days cancellation notice prior to your scheduled arrival, otherwise we will charge you cancellation fee as below. 10% of your total amount will be charged if you do not notify us about your cancellation or any changes by 2 to 5 days before your scheduled arrival.', '', 'Generally, merchandise purchased in store or on Walmart.com can be returned or exchanged within ninety 2 days of purchase with or without a receipt. Below are exceptions to the general ninety (2) day rule. All of the exceptions listed below require the merchandise be returned with a receipt.', '', 'Replacement policy is an insurance policy between an insurance company and a consumer which promises to pay the insured the replacement value of the subject of the policy if a loss occurs.', '', 4, 2, 7);
INSERT INTO `nm_deals` VALUES (36, 'Stroller', '', 4, 6, 13, 14, 7500, 6000, 20, 1500, '3', '0', '2018-01-17 16:39:00', '2018-01-19 16:39:00', '2018-01-19', 'test', '', 68, 75, 'test', '', 'test', '', 0, 10, 0, 0, 'Deal_1516188103.jpg/**/Deal_15163681425308.jpg/**/Deal_151636814219525.jpg/**/Deal_151636814212186.jpg/**/Deal_151636814224779.jpg/**/', 0, '01/17/2018', 1, '2018-01-19 18:52:22', 3, '1', '0', '0', 'test', '', '', '', '', '', 3, 0, 0);
INSERT INTO `nm_deals` VALUES (37, 'deals today', '', 4, 6, 13, 14, 500, 250, 50, 250, '', '0', '2018-01-17 17:18:00', '2018-01-18 17:18:00', '2018-01-18', 'sfegfdg', '', 58, 59, 'dfghb', '', 'tyyuytu', '', 0, 20, 0, 0, 'Deal_1516189793.jpg/**/Deal_15163689048810.jpg/**/Deal_15163689049051.jpg/**/Deal_151636890530712.jpg/**/Deal_151636890521713.jpg/**/', 3, '01/17/2018', 1, '2018-01-19 19:05:04', 0, '1', '1', '1', 'sdg', '', 'fgfhg', '', 'wetreghfhgfh', '', 23, 23, 23);
INSERT INTO `nm_deals` VALUES (38, 'dealslls', '', 2, 10, 15, 0, 43324, 12344, 71, 30980, '23', '123', '1970-01-01 05:30:00', '1970-01-01 05:30:00', '1970-01-01', 'sew', '', 58, 59, 'ewrewr', '', 'dfgg', '', 0, 123, 0, 0, 'Deal_1516269356.jpg/**/Deal_1516269356.jpg/**/Deal_1516269356.jpg/**/', 0, '01/18/2018', 1, '2018-01-18 15:25:56', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (39, 'shirts', '', 2, 10, 15, 0, 400, 390, 2, 10, '', '0', '2018-01-18 15:30:00', '2018-01-20 15:30:00', '2018-01-20', 'test', '', 58, 59, '', '', '', '', 0, 10, 0, 2, 'Deal_1516269680.jpg/**/Deal_1516269680.jpg/**/', 0, '01/18/2018', 1, '2018-01-18 15:31:21', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (40, 'daelsid', '', 2, 10, 15, 0, 345, 123, 64, 222, '32', '120', '2018-01-18 15:50:00', '2018-02-06 18:48:00', '2018-02-06', 'sdefg', '', 41, 67, 'fdg ', '', 'fdgfdh', '', 0, 25, 0, 0, 'Deal_1516270827.jpg/**/Deal_1516270827.jpg/**/Deal_1516270828.jpg/**/Deal_15197155391385.jpg/**/', 2, '01/18/2018', 1, '2018-02-27 12:42:19', 34, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (41, 'heel', '', 3, 4, 6, 29, 500, 200, 60, 300, '', '0', '2018-01-19 18:30:00', '2018-01-20 18:30:00', '2018-01-20', 'test', '', 58, 59, '', '', '', '', 0, 7, 0, 2, 'Deal_1516366870.jpg/**/Deal_1516366871.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 18:31:11', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (42, 'deal off', '', 2, 11, 17, 0, 3435, 2343, 31, 1092, '', '0', '1970-01-01 05:30:00', '1970-01-01 05:30:00', '1970-01-01', 'fgfdh', '', 41, 57, 'rgh', '', 'fgfh', '', 0, 34, 0, 0, 'Deal_151636804612425.jpg/**/Deal_15163680466286.jpg/**/Deal_151636804626799.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 18:50:46', 434, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (43, 'deal offers', '', 2, 10, 15, 0, 45456, 1234, 97, 44222, '', '0', '2018-01-20 18:52:00', '2018-01-21 18:52:00', '2018-01-21', 'dsfdg', '', 58, 59, 'dff', '', 'sdff', '', 0, 34, 0, 5, 'Deal_1516368241.jpg/**/Deal_1516368241.jpg/**/Deal_1516368241.jpg/**/Deal_1516368241.jpg/**/Deal_1516368241.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 18:54:01', 23, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (44, 'deal offff', '', 2, 10, 15, 0, 45612, 12453, 72, 33159, '', '0', '2018-01-20 18:50:00', '2018-01-21 18:50:00', '2018-01-21', 'gfh', '', 58, 59, 'gfhj', '', 'fghj', '', 0, 34, 0, 4, 'Deal_1516368396.jpg/**/Deal_1516368396.jpg/**/Deal_1516368396.jpg/**/Deal_1516368396.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 18:56:36', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (45, 'dealssa', '', 3, 4, 5, 0, 4512, 3215, 28, 1297, '', '0', '2018-01-20 18:59:00', '2018-01-21 18:59:00', '2018-01-21', 'dfgfdghg', '', 41, 57, 'rdgfdg', '', 'fhfgh', '', 0, 23, 0, 3, 'Deal_151636866516552.jpg/**/Deal_151636866526561.jpg/**/Deal_151636866511110.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 19:01:05', 20, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (46, 'wooden Table', '', 5, 14, 23, 0, 8000, 5000, 37, 3000, '', '0', '2018-01-20 19:02:00', '2018-01-21 19:02:00', '2018-01-21', 'test', '', 68, 75, '', '', '', '', 0, 5, 0, 0, 'Deal_15163689734348.jpg/**/Deal_151636912017589.jpg/**/', 0, '01/19/2018', 1, '2018-02-06 12:35:24', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (47, 'deaaalsss', '', 3, 7, 10, 4, 232, 123, 46, 109, '', '0', '2018-01-20 19:05:00', '2018-01-21 19:05:00', '2018-01-21', 'fgfh', '', 58, 59, 'dfgfg', '', 'sdfgfd', '', 0, 56, 0, 5, 'Deal_1516369019.jpg/**/Deal_1516369019.jpg/**/Deal_1516369019.jpg/**/Deal_1516369019.jpg/**/Deal_1516369019.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 19:06:59', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (48, 'dealing process', '', 5, 14, 23, 0, 800, 600, 25, 200, '', '0', '2018-01-19 19:08:00', '2018-01-20 19:08:00', '2018-01-20', 'test', '', 68, 75, '', '', '', '', 0, 8, 0, 2, 'Deal_151636922531542.jpg/**/Deal_15163692256711.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 19:10:25', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (49, 'deall', '', 3, 7, 10, 0, 1234, 936, 24, 298, '', '0', '2018-01-20 19:11:00', '2018-01-21 19:11:00', '2018-01-21', 'safffsdag', '', 58, 59, 'sfds', '', 'dsfgd', '', 0, 26, 0, 5, 'Deal_151636935619281.jpg/**/Deal_151636935628598.jpg/**/Deal_151636935613495.jpg/**/Deal_151636935625636.jpg/**/Deal_151636935619341.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 19:12:36', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (50, 'process', '', 2, 10, 15, 0, 200, 150, 25, 50, '', '0', '2018-01-19 19:23:00', '2018-01-20 19:23:00', '2018-01-20', 'test', '', 58, 59, '', '', '', '', 0, 4, 0, 3, 'Deal_15163700505962.jpg/**/Deal_15163700509915.jpg/**/Deal_151637005010200.jpg/**/', 0, '01/19/2018', 1, '2018-01-19 19:24:10', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (51, 'ipad', '', 6, 48, 76, 0, 10000, 50, 99, 9950, '2', '0', '2018-01-26 16:16:00', '2018-03-30 16:16:00', '2018-03-30', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 60, 63, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content her', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various ', '', 0, 20, 0, 0, 'Deal_151696373326300.jpg/**/', 7, '01/26/2018', 1, '2018-02-28 18:20:43', 2, '1', '1', '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 2, 5, 2);
INSERT INTO `nm_deals` VALUES (52, 'ball', '', 7, 17, 26, 0, 1000, 500, 50, 500, '2', '0', '2018-03-19 12:49:00', '2018-03-19 16:20:00', '2018-03-19', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 60, 63, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content her', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various ', '', 0, 30, 0, 0, 'Deal_151696392113893.png/**/', 25, '01/26/2018', 1, '2018-03-19 12:48:29', 2, '1', '1', '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 23, 23, 23);
INSERT INTO `nm_deals` VALUES (53, 'dealsinprocess', '', 2, 10, 15, 0, 300, 300, 0, 0, '', '0', '1970-01-01 05:30:00', '1970-01-01 05:30:00', '1970-01-01', 'test', '', 41, 57, '', '', '', '', 0, 10, 0, 0, 'Deal_15179013219510.jpg/**/', 0, '02/03/2018', 1, '2018-02-06 12:45:21', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (54, 'Spray', '', 18, 62, 85, 0, 5000, 4000, 20, 1000, '2', '50', '2018-02-05 15:35:00', '2018-02-07 17:35:00', '2018-02-07', 'test', '', 77, 91, ' ', '', '', '', 0, 7, 0, 0, 'Deal_151782543127509.jpg/**/', 4, '02/05/2018', 1, '2018-02-27 12:40:53', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (55, 'Flower Pot', '', 18, 63, 0, 0, 1000, 850, 15, 150, '10', '30', '2018-02-06 12:27:00', '2018-02-07 12:27:00', '2018-02-07', 'trest', '', 58, 59, '', '', '', '', 0, 10, 0, 1, 'Deal_15179005334660.jpg/**/', 0, '02/06/2018', 1, '2018-02-06 12:32:13', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (56, 'Spray\'s', '', 18, 62, 85, 0, 1500, 1300, 13, 200, '', '30', '2018-04-04 16:33:00', '2018-04-05 16:33:00', '2018-04-05', 'test', '', 90, 105, '', '', '', '', 0, 10, 0, 0, 'Deal_151791541112228.jpg/**/Deal_151791541116045.jpg/**/', 10, '02/06/2018', 1, '2018-04-03 14:46:34', 0, '1', '0', '0', 'test', '', '', '', '', '', 3, 0, 0);
INSERT INTO `nm_deals` VALUES (57, 'deal_product', '', 3, 4, 5, 66, 3543, 1313, 62, 2230, '23', '32', '2018-02-23 13:35:00', '2018-02-08 13:37:00', '2018-02-08', 'htjtjyu', '', 41, 57, 'rtyt   ', '', 'thtjf', '', 0, 344, 0, 0, 'Deal_15179908115062.jpg/**/Deal_151799081220148.jpg/**/Deal_15179908122781.jpg/**/', 0, '02/07/2018', 1, '2018-02-08 18:04:55', 454, '1', '1', '1', 'rwetre', '', 'juihuhiook', '', 'refd', '', 543, 453, 435);
INSERT INTO `nm_deals` VALUES (58, 'dealsss', '', 2, 2, 4, 1, 798, 500, 37, 298, '23', '354336', '2018-02-09 15:01:00', '2018-02-09 19:01:00', '2018-02-09', 'fsdrgt', '', 41, 57, 'gfh', '', 'fghfgjd', '', 0, 65464, 0, 0, 'Deal_1518083454826.jpg/**/Deal_15190326874033.jpg/**/Deal_151903268713158.jpg/**/', 0, '02/08/2018', 0, '2018-02-19 15:01:27', 54, '1', '1', '1', 'retgd', '', 'ghhth', '', 'fgghfghd', '', 435, 435, 543);
INSERT INTO `nm_deals` VALUES (59, 'fun ', '', 2, 10, 15, 0, 455, 454, 0, 1, '', '0', '2018-02-17 10:37:00', '2018-05-24 10:37:00', '2018-05-24', 'sdfgdfsg', '', 41, 57, 'dfgdf', '', 'dfgdfg', '', 0, 56, 0, 2, 'Deal_151884423414759.jpg/**/Deal_15188442347764.jpg/**/', 0, '02/17/2018', 1, '2018-02-17 10:40:34', 0, '1', '1', '1', 'dfgdfg', '', 'fdsgfds', '', 'sdgfdsfg', '', 4, 4, 4);
INSERT INTO `nm_deals` VALUES (60, 'Duchdbuujbbubcb', '', 3, 7, 10, 4, 878, 676, 23, 202, '6', '0', '2018-02-19 13:13:00', '2018-05-10 13:13:00', '2018-05-10', 'Ychgcugvftuyvyfc ihb', '', 41, 57, 'Vhgbvcdfx has hit hdfg', '', 'Futfygsc sh sh highs Drs ', '', 0, 401, 0, 5, 'Deal_151902645412217.jpeg/**/Deal_151902645424574.jpeg/**/Deal_151902645429535.jpeg/**/Deal_151902645416812.jpeg/**/Deal_15190264543701.jpeg/**/', 0, '02/19/2018', 1, '2018-02-19 13:17:34', 0, '1', '1', '1', 'Ghzgsvzycs Krishan', '', 'Gauges hsyjsshsvsv', '', 'Cabs syshshshssgs ', '', 4, 7, 5);
INSERT INTO `nm_deals` VALUES (61, 'test', '', 2, 10, 15, 0, 500, 40, 92, 460, '', '30', '2018-02-27 12:37:00', '2018-03-30 12:37:00', '2018-03-30', 'test', '', 58, 59, ' ', '', '', '', 0, 10, 0, 0, 'Deal_151971532012186.jpg/**/Deal_151971532024779.jpg/**/', 10, '02/27/2018', 1, '2018-03-01 15:59:02', 5, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (62, 'test', '', 2, 11, 17, 0, 10, 4, 60, 6, '', '0', '2018-03-01 15:34:00', '2018-03-02 15:34:00', '2018-03-02', 'test', '', 90, 111, '', '', '', '', 0, 30, 0, 1, 'Deal_151989876011372.jpg/**/', 9, '03/01/2018', 1, '2018-03-01 15:36:00', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (63, 'shoe', '', 3, 4, 6, 29, 100, 60, 40, 40, '', '0', '2018-04-03 11:38:00', '2018-05-17 17:38:00', '2018-05-17', 'test', '', 95, 120, '    ', '', '', '', 0, 150, 0, 0, 'Deal_15199061571851.jpg/**/', 15, '03/01/2018', 1, '2018-04-11 11:08:29', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (64, 'dealadmin', '', 2, 11, 17, 0, 2132, 1223, 42, 909, '23', '23', '2018-03-02 15:30:00', '2018-03-02 21:30:00', '2018-03-02', 'dsreg', '', 0, 0, 'sdfds', '', 'dfssfgds', '', 0, 32, 0, 1, 'Deal_151998492714608.jpg/**/', 0, '03/02/2018', 1, '2018-03-02 15:32:07', 23, '1', '1', '1', 'rewrw', '', 'etre', '', 'ewrr', '', 23, 234, 43);
INSERT INTO `nm_deals` VALUES (65, 'dealadmin2', '', 3, 4, 6, 3, 3545, 2343, 33, 1202, '45', '435', '2018-03-02 15:37:00', '2018-03-02 19:36:00', '2018-03-02', 'rtyrth', '', 0, 0, 'ert', '', 'gf', '', 0, 43, 0, 1, 'Deal_151998523922895.jpg/**/', 0, '03/02/2018', 1, '2018-03-02 15:37:19', 345, '1', '1', '1', 'fgfdh', '', 'rett', '', 'grhdrh', '', 54, 434, 543);
INSERT INTO `nm_deals` VALUES (66, 'rg test', '', 6, 48, 76, 0, 10000, 100, 99, 9900, '', '200', '2018-03-13 10:34:00', '2018-08-24 10:34:00', '2018-08-24', 'dsgfdas asdfas d', '', 60, 63, 'dasfa ', '', ' asdfdas ', '', 0, 45, 0, 3, 'Deal_152092017824778.jpg/**/Deal_152092017829243.jpg/**/Deal_152092017919800.jpg/**/', 8, '03/13/2018', 1, '2018-03-13 11:19:39', 4, '1', '1', '1', 'dsfasdf ', '', 'dasfasdf ', '', 'dasfdasf ', '', 4, 4, 4);
INSERT INTO `nm_deals` VALUES (67, 'deal1', '', 2, 10, 15, 0, 10, 5, 50, 5, '', '0', '2018-03-14 12:48:00', '2018-05-25 16:48:00', '2018-05-25', 'iyui', '', 95, 120, 'ilop ', '', 'iou', '', 0, 10, 0, 0, 'Deal_152092555816215.jpg/**/', 10, '03/13/2018', 1, '2018-04-11 11:09:18', 4, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (68, 'Moto E3 Power', '', 6, 48, 76, 0, 8000, 7999, 0, 1, '2', '10', '2018-03-29 16:15:00', '2018-03-31 16:15:00', '2018-03-31', '1.Moto brings to you the E4 Plus - a smartphone that’s powered by a long-lasting 5000 mAh battery.\r\n2.Packed with a 13 MP rear camera and a 5 MP front camera, the Moto E4 Plus helps you take flaunt-worthy photos.\r\n3.It runs on Android 7.1 Nougat, and features Google Assistant for a seamless user experience.', '', 41, 67, 'test', '', 'test', '', 0, 100, 0, 1, 'Deal_152214778320490.jpeg/**/', 0, '03/27/2018', 1, '2018-03-27 16:19:43', 3, '1', '1', '1', 'Flexible', '', 'Flexible', '', 'Flexible', '', 5, 4, 4);
INSERT INTO `nm_deals` VALUES (69, 'DesignerSaree', '', 3, 7, 10, 4, 300, 200, 33, 100, '4', '5', '2018-03-28 11:02:00', '2018-03-29 11:02:00', '2018-03-29', 'test', '', 41, 67, 'test', '', 'test', '', 0, 20, 0, 1, 'Deal_152221527016440.jpg/**/', 0, '03/28/2018', 1, '2018-03-28 11:04:30', 3, '1', '1', '1', 'flexible', '', 'flexible', '', 'flexible', '', 10, 10, 20);
INSERT INTO `nm_deals` VALUES (70, 'testnoedeal', '', 2, 10, 15, 0, 200, 100, 50, 100, '2', '0', '2018-04-03 12:20:00', '2018-04-19 12:21:00', '2018-04-19', 'fgf', '', 41, 67, 'test ', '', 'test', '', 0, 3, 0, 0, 'Deal_152265164826023.jpg/**/', 0, '04/02/2018', 0, '2018-04-02 17:07:57', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (71, 'test', '', 3, 4, 6, 3, 100, 50, 50, 50, '', '0', '2018-04-03 14:49:00', '2018-04-04 14:49:00', '2018-04-04', ' nm,', '', 90, 105, 'bhjk', '', 'hj', '', 0, 10, 0, 1, 'Deal_15227472119579.jpg/**/', 0, '04/03/2018', 1, '2018-04-03 14:50:11', 4, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_deals` VALUES (72, 'new deal', '', 3, 7, 10, 4, 1000, 750, 25, 250, '', '0', '2018-04-09 14:50:00', '2018-04-28 14:50:00', '2018-04-28', 'vghj', '', 95, 120, ' njk,  ', '', '', '', 0, 108, 0, 0, 'Deal_152274729014337.jpg/**/', 3, '04/03/2018', 1, '2018-04-11 11:07:35', 3, '1', '1', '1', 'trtr<br>', '', 'fdfd<br>', '', 'fgf<br>', '', 2, 5, 45);

-- ----------------------------
-- Table structure for nm_emailsetting
-- ----------------------------
DROP TABLE IF EXISTS `nm_emailsetting`;
CREATE TABLE `nm_emailsetting`  (
  `es_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `es_contactname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_contactemail` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_skype_email_id` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_webmasteremail` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_noreplyemail` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_phone1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_phone2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `es_latitude` decimal(18, 14) NOT NULL,
  `es_longitude` decimal(18, 14) NOT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_emailsetting
-- ----------------------------
INSERT INTO `nm_emailsetting` VALUES (1, 'Laravel Ecommerce', 'sales@laravelecommerce.com', 'sales@laravelecommerce.com', 'sales@laravelecommerce.com', 'sales@laravelecommerce.com', '+919790153111', '+1 (972) 591 8222', 7.98591014355452, 80.73921674804683);

-- ----------------------------
-- Table structure for nm_enquiry
-- ----------------------------
DROP TABLE IF EXISTS `nm_enquiry`;
CREATE TABLE `nm_enquiry`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(50) NOT NULL,
  `created_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `enq_readstatus` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nm_enquiry
-- ----------------------------
INSERT INTO `nm_enquiry` VALUES (1, 'charles', 'charlesvictor.j@pofitec.com', '9498056637', 'Test Demo', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (2, 'fgfdgdf', 'dfhdfhd@gmail.com', '1234567890', 'dfsgsfgfgfdh', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (5, 'yuyuy', 'pofidevelopmentyuyuy@gmail.com', '8883152529', 'teerdt', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (7, 'ilakkiya m', 'il@gm.com', '8883152529', 'rttrtr', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (8, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'hifh', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (9, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'hi99', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (10, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'hi100', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (11, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'hi11', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (12, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'hi12', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (13, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'hi13', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (14, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'twest', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (15, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'test', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (16, 'maheshwaran', 'maheswaran@pofitec.com', '1234567890', 'test', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (17, 'Amit', 'amit.srivastava@tradebooster.com', '9350352736', 'Hi,\r\n\r\nWe would link to purchase comment with star rating plugin.\r\n\r\nPlease confirm cost.', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (18, 'raj', 'kumar@pofitec.com', '12131232', 'test', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (19, 'Teresa', 'rlbojfanxv@meldram.com', 'http://v-doc.co/nm/txxrz', 'I was just looking at your eCommerce Software; Shopping Cart Software | Laravel E Commerce website and see that your website has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website service which already has more than 16 million users, and most of the users are interested in websites like yours. By getting your site on this service you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can find out more about it here: http://hothor.se/1gj55 - Now, let me ask you... Do you need your website to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your website on the service I am describing. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything at all. All the popular websites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://www.v-diagram.com/2sv1p', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (20, 'kailash', 'kumarkailash075@gmail.com', '1234567890', 'fgdfgdfg', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (21, 'kailash', 'kumarkailash075@gmail.com', '1234567890', 'fgdfgdfgfdgfdgfd', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (22, 'kailash', 'kumarkailash075@gmail.com', '1234567890', 'ghjghjghjghj', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (23, 'kailash', 'kumarkailash075@gmail.com', '1234567890', 'ghjghjghjghj', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (24, 'kailash', 'kumarkailash075@gmail.com', '1234567890', 'ghjghjghjghj', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (25, 'fsf', 'dsfsdfds@gmail.com', '1232132313', '', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (26, 'Jennifer', 'uhjrpuumzu@rtooqjxgnx.com', 'http://hothor.se/2rsx5', 'Did you just create your new Facebook page? Do you want your page to look a little more \"established\"? I found a service that can help you with that. They can send organic and 100% real likes and followers to your social pages and you can try before you buy with their free trial. Their service is completely safe and they send all likes to your page naturally and over time so nobody will suspect that you bought them. Try their service for free here: http://korturl.no/1pwo8', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (27, 'Daniel', 'wibdaniel@outlook.com', '32352325', 'I want to receive the contact email.', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (28, 'Sandra', 'smggdhro@tpycgnzb.com', 'http://shorturl.van.ee/8', 'Did you just create your new Facebook page? Do you want your page to look a little more \"established\"? I found a service that can help you with that. They can send organic and 100% real likes and followers to your social pages and you can try before you buy with their free trial. Their service is completely safe and they send all likes to your page naturally and over time so nobody will suspect that you bought them. Try their service for free here: http://corta.co/9UC', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (29, 'palanikumar11584@gmail.com', 'palanikumar11584@gmail.com', '9677812831', 'palanikumar test query', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (30, 'Deanna Brady', 'meoinwrfacy@yaedzw.com', 'http://www.prestonkincaid.com/link/1c', 'I was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://www.prestonkincaid.com/link/1c', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (31, 'sara', 'saranya@pofitec.com', '8883857744', 'test', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (32, 'sara', 'saranya@pofitec.com', '8884447773', 'testt', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (33, 'ds', 'saranya@pofitec.com', '8884447773', 'asdasdasdasd', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (34, 'test', 'saranya@pofitec.com', '4535345', '', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (35, 'saranya', 'saranya@pofitec.com', '1234567890', 'queries', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (36, 'test', 'test@gmail.com', '9978599856', 'test', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (37, 'h', 'preetha@pofitec.com', '234567890', 'f', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (44, 'malar', 'malarvizhi@pofitec.com', '8012122975', 'alert(&#39;hgfh&#39;);', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (45, 'malar', 'malarvizhi@pofitec.com', '8012122975', 'alert(\'hgj\');', 1, '0000-00-00', 1);
INSERT INTO `nm_enquiry` VALUES (46, 'malar', 'malarvizhi@pofitec.com', '8012122975', '<script>alert(\'hgj\');</script>', 1, '2017-10-25', 1);
INSERT INTO `nm_enquiry` VALUES (47, 'malar gopal', 'malarvizhi@pofitec.com', '8012122975', 'test', 1, '2017-12-09', 1);
INSERT INTO `nm_enquiry` VALUES (48, 'test', 'suganya@pofitec.com', '8012122975', 'test', 1, '2017-12-18', 1);
INSERT INTO `nm_enquiry` VALUES (49, 'suganya', 'suganya@pofitec.com', '8012122975', 'test', 1, '2017-12-18', 1);
INSERT INTO `nm_enquiry` VALUES (50, 'suganya', 'suganya@pofitec.com', '8012122975', 'test', 1, '2017-12-18', 1);
INSERT INTO `nm_enquiry` VALUES (51, 'rtrt', 'suganya@pofitec.com', '8012122975', 'rtrtrtrtrtrtr', 1, '2017-12-20', 1);
INSERT INTO `nm_enquiry` VALUES (52, 'sugi', 'ere@gmail.com', '8012122975', 'I was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cgfgfgfI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1cdfdI was just looking at your Laravel Ecommerce website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://lis.ovh/is - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://www.prestonkincaid.com/link/1csdsd', 1, '2017-12-20', 1);
INSERT INTO `nm_enquiry` VALUES (53, 'ghg', 'ere@gmail.com', '8012122975', 'ytt', 1, '34-34-34', 1);
INSERT INTO `nm_enquiry` VALUES (54, 'sdffds fdsf', 'vinodbabu@pofitec.com', '9876543210', 'sdfdsfds', 1, '2018-01-06', 1);
INSERT INTO `nm_enquiry` VALUES (55, 'sdfdsfdsf dsfa dsf dsfds fds fdsf dsf dsfds ', 'vinodbabu@pofitec.com', '3534354354354354354354353', 'd f gdgs dfg dfg dfgdf gd ', 1, '2018-01-06', 1);
INSERT INTO `nm_enquiry` VALUES (56, 'dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf ', 'vinodbabu@pofitec.com', '9876543210342243 4343432432432432432432 432434324234234324242424 3242342342423423423', 'dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds ', 1, '2018-01-06', 1);
INSERT INTO `nm_enquiry` VALUES (57, 'dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf ', 'vinodbabu@pofitec.com', '9876543210', 'alert(&#39;&#39;);', 1, '2018-01-06', 1);
INSERT INTO `nm_enquiry` VALUES (58, 'dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf ', 'vinodbabu@pofitec.com', '0000099999999999999 9999999999999999999999999999 999999994333333333333 33333333333333333 33332222222222222222222222222222', 'dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsfds dsfa dsgf agdfg g adfkjhskdhfkkdskfhkdsfhdshfds fdsf sdf dsfdsf', 1, '2018-01-06', 1);
INSERT INTO `nm_enquiry` VALUES (59, 'dgfhg', 'dgf@dfd.df', '343543545', 'efrygh', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (60, 'retretr', 'dreg@fdgf.ggfh', '43536546', '', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (61, 'gfgfh', 'er@rdg.ghg', '432543556', '/n|', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (62, 'gfgfh', 'er@rdg.ghg', '432543556', '/n|', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (63, 'gfgfh', 'er@rdg.ghg', '432543556', '/n|', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (64, 'dfgdgf', 'gfg@rdg.hfg', '3435436546', 'fgfghg', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (65, 'dfgdgf', 'gfg@rdg.hfg', '3435436546', 'fgfghg', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (66, 'dfgdgf', 'gfg@rdg.hfg', '3435436546', 'fgfghg', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (67, 'rert', 'tret@dgfdg.ghg', '35435456', 'fgfhfgjhfgjh', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (68, 'Test', 'test@gmail.com', '9876543210', 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test ', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (69, 'suganya', 'suganya.t@pofitec.com', '9856322356', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the', 1, '2018-01-12', 1);
INSERT INTO `nm_enquiry` VALUES (70, 'ragul', 'ragulgandhi@pofitec.com', '9944349002', 'aasdasdasd', 1, '2018-01-16', 1);
INSERT INTO `nm_enquiry` VALUES (71, 'suganya', 'suganya.t@pofitec.com', '9856322356', 'ghjhkjhk', 1, '2018-02-03', 1);
INSERT INTO `nm_enquiry` VALUES (72, 'user', 'user@gmail.com', '3243543656', 'ffgfh3243', 1, '2018-02-06', 1);
INSERT INTO `nm_enquiry` VALUES (73, 'tests testes', 'malarvizhi@pofitec.com', '8012122975', 'test', 1, '2018-02-09', 1);
INSERT INTO `nm_enquiry` VALUES (74, 'suganya', 'suganya.t@pofitec.com', '7894561235', 'fdgjytujhkjhouioip', 1, '2018-04-11', 1);
INSERT INTO `nm_enquiry` VALUES (75, 'kl', 'venugopal@pofitec.com', '3456765434', 'k;kl', 1, '2018-04-12', 1);
INSERT INTO `nm_enquiry` VALUES (76, 'suganya', 'suganya.t@pofitec.com', '784197865157', 'fgfdhfghfght', 1, '2018-04-16', 1);

-- ----------------------------
-- Table structure for nm_estimate_zipcode
-- ----------------------------
DROP TABLE IF EXISTS `nm_estimate_zipcode`;
CREATE TABLE `nm_estimate_zipcode`  (
  `ez_id` int(11) NOT NULL AUTO_INCREMENT,
  `ez_code_series` int(11) NOT NULL,
  `ez_code_series_end` int(11) NOT NULL,
  `ez_code_days` int(11) NOT NULL,
  `ez_status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ez_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_estimate_zipcode
-- ----------------------------
INSERT INTO `nm_estimate_zipcode` VALUES (1, 641001, 641051, 2, 1);
INSERT INTO `nm_estimate_zipcode` VALUES (2, 642001, 642001, 3, 1);

-- ----------------------------
-- Table structure for nm_faq
-- ----------------------------
DROP TABLE IF EXISTS `nm_faq`;
CREATE TABLE `nm_faq`  (
  `faq_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `faq_name` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `faq_name_fr` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `faq_ans` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `faq_ans_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `faq_status` tinyint(4) NOT NULL COMMENT '0=>unblock,1=>block',
  PRIMARY KEY (`faq_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_faq
-- ----------------------------
INSERT INTO `nm_faq` VALUES (2, 'What is a product detail page?', 'Quelle est la page de détail d\'un produit?', 'A product detail page is the place where customers read details about a product for sale on Dip Multivendor. It includes the product image, price, description, customer reviews, ordering options, and the link to view offers from all sellers.', 'Une page de détail du produit est l\'endroit où les clients lisent les détails d\'un produit à vendre sur Dip Multivendor. Il comprend l\'image du produit, le prix, la description, les commentaires des clients, les options de commande et le lien pour voir les offres de tous les vendeurs.', 0);
INSERT INTO `nm_faq` VALUES (3, 'Why do I need to create a product detail page?', 'Pourquoi dois-je créer une page de détail du produit?', 'Dip Multivendor has one of the largest online product catalogs. But we don\'t have everything. If you can\'t find a product detail page on Dip Multivendor for something you\'d like to sell, then you need to create one. Once created, the product detail page will be available onDip Multivendor for you to sell your inventory, and other sellers can also use too.', 'Dip Multivendor possède l\'un des plus grands catalogues de produits en ligne. Mais nous n\'en avons pas tout. Si vous ne trouvez pas une page de détail sur Dip Multivendor pour quelque chose que vous souhaitez vendre, vous devez en créer un. Une fois créé, la page de détail du produit sera disponible surDip Multivendor pour que vous puissiez vendre votre inventaire, et d\'autres vendeurs peuvent également l\'utiliser également.', 0);
INSERT INTO `nm_faq` VALUES (4, 'What will the product detail page I create look like?', '', 'The product detail page you create will look like any other product page on Dip Multivendor. By creating pages that use a standard format, customers can more easily evaluate the products they want to buy..', '', 1);
INSERT INTO `nm_faq` VALUES (5, 'How do I create a product detail page?', '', 'First, you confirm that your product isn\'t already listed on Dip Multivendor. Second, you identify the product category and describe it. Third and last, you set the price and condition for each item. For more information, ', '', 1);
INSERT INTO `nm_faq` VALUES (6, 'What information can I include in my product description?', '', 'You are allowed 2,000 characters to describe your product. For some product categories, you also have five key product features (bullets) of 100 characters each for highlighting significant product attributes. ', '', 1);
INSERT INTO `nm_faq` VALUES (7, 'english questions', 'question anglaises', 'english answers', 'réponse anglaises', 1);
INSERT INTO `nm_faq` VALUES (8, 'dfg', '', 'fgdf', '', 0);
INSERT INTO `nm_faq` VALUES (9, 'sdfsdsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdfsdf dfsdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdfs  sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdsdfs fsdfsdfsdfsdfsdfsdfsdfsdfsdf', '', 'sdfsd', '', 0);
INSERT INTO `nm_faq` VALUES (10, 'dfg', '', 'dfg', '', 0);
INSERT INTO `nm_faq` VALUES (11, ' asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asda', '', 'asd asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas vv', '', 0);
INSERT INTO `nm_faq` VALUES (15, ' asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas ', '', ' asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas  asdas ', '', 1);
INSERT INTO `nm_faq` VALUES (16, 'Payapal is available?', '', 'yes', '', 0);

-- ----------------------------
-- Table structure for nm_generalsetting
-- ----------------------------
DROP TABLE IF EXISTS `nm_generalsetting`;
CREATE TABLE `nm_generalsetting`  (
  `gs_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `gs_sitename` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_sitename_fr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_sitedescription` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_sitedescription_fr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_metatitle` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_metatitle_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_metakeywords` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_metakeywords_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_metadesc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_metadesc_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_defaulttheme` tinyint(3) UNSIGNED NOT NULL,
  `gs_defaultlanguage` tinyint(3) UNSIGNED NOT NULL,
  `gs_payment_status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_paypal_payment` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_payumoney_status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_themes` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_playstore_url` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gs_apple_appstore_url` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`gs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_generalsetting
-- ----------------------------
INSERT INTO `nm_generalsetting` VALUES (1, 'Laravel Ecommerce', 'Laravel Ecommerce french', 'Developed in Native Android & iOS Platform. Well Written Structured Code. Our App is user friendly and gives ample opportunities for guests and hosts ', '', 'testlaravel testlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestla', 'Laravel Ecommerce', 'testlaravel testlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaravel', 'Laravel Ecommerce', 'testlaravel testlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaraveltestlaravel', 'Laravel Ecommerce', 1, 1, 'COD', 'Paypal', 'PayUmoney', '', '', '');

-- ----------------------------
-- Table structure for nm_image_sizes
-- ----------------------------
DROP TABLE IF EXISTS `nm_image_sizes`;
CREATE TABLE `nm_image_sizes`  (
  `image_size_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_size` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`image_size_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_image_sizes
-- ----------------------------
INSERT INTO `nm_image_sizes` VALUES (1, '{\"product\":{\"width\":800,\"height\":800},\"deals\":{\"width\":800,\"height\":800},\"logo\":{\"width\":180,\"height\":45},\"favicon\":{\"width\":16,\"height\":16},\"no_image\":{\"width\":381,\"height\":215},\"category_advertisment\":{\"width\":170,\"height\":400},\"category_banner\":{\"width\":250,\"height\":200},\"top_category\":{\"width\":200,\"height\":200},\"sub_category\":{\"width\":200,\"height\":200},\"sec_sub_category\":{\"width\":200,\"height\":200},\"ads\":{\"width\":800,\"height\":400},\"store\":{\"width\":455,\"height\":378},\"blog\":{\"width\":320,\"height\":190},\"no_image_banner\":{\"width\":870,\"height\":350}}');

-- ----------------------------
-- Table structure for nm_imagesetting
-- ----------------------------
DROP TABLE IF EXISTS `nm_imagesetting`;
CREATE TABLE `nm_imagesetting`  (
  `imgs_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `imgs_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `imgs_type` tinyint(4) NOT NULL COMMENT '1- logo,2 -Favicon,3-noimage,4-product,5-deal,6-sores,7-blog_banner,8-upload_banner,9-category,10-ads_blog_image,\'11\'=>\'category\'',
  PRIMARY KEY (`imgs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_imagesetting
-- ----------------------------
INSERT INTO `nm_imagesetting` VALUES (1, 'Logo_1521616186_png', 1);
INSERT INTO `nm_imagesetting` VALUES (2, 'Favicon_1517904843_fav_Df.png', 2);
INSERT INTO `nm_imagesetting` VALUES (3, 'No_image_No_image_1509364387_381x215.jpg', 3);
INSERT INTO `nm_imagesetting` VALUES (4, 'No_image_1522327122_800x800', 4);
INSERT INTO `nm_imagesetting` VALUES (5, 'No_image_1509364387_800x800.png', 5);
INSERT INTO `nm_imagesetting` VALUES (6, 'No_image_1509364387_455x378.png', 6);
INSERT INTO `nm_imagesetting` VALUES (7, 'No_image_1509364387_320x190.png', 7);
INSERT INTO `nm_imagesetting` VALUES (8, 'No_image_1509364387_870x350.png', 8);
INSERT INTO `nm_imagesetting` VALUES (9, 'No_image_1522661876_250x200.jpg', 9);
INSERT INTO `nm_imagesetting` VALUES (10, 'No_image_1522660971_800x400', 10);
INSERT INTO `nm_imagesetting` VALUES (11, 'No_image_1522661659_200x200.jpg', 11);

-- ----------------------------
-- Table structure for nm_inquiries
-- ----------------------------
DROP TABLE IF EXISTS `nm_inquiries`;
CREATE TABLE `nm_inquiries`  (
  `iq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iq_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iq_emailid` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iq_phonenumber` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iq_message` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inq_readstatus` int(11) NOT NULL DEFAULT 0 COMMENT '0-not read 1 read',
  PRIMARY KEY (`iq_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_inquiries
-- ----------------------------
INSERT INTO `nm_inquiries` VALUES (1, 'charles', 'charlesvictor.j@pofitec.com', '9498056637', 'Test File', 1);
INSERT INTO `nm_inquiries` VALUES (2, 'charles', 'charlesvictor.j@pofitec.com', '9498056637', 'dfhdhdf', 1);
INSERT INTO `nm_inquiries` VALUES (3, 'charles', 'charlesvictor.j@pofitec.com', '9498056637', 'sdfgfshdfh', 1);
INSERT INTO `nm_inquiries` VALUES (4, 'cffdh', 'dfhdfhfd@gmail.com', '56465456', 'dsgdgsdgsd', 1);

-- ----------------------------
-- Table structure for nm_language
-- ----------------------------
DROP TABLE IF EXISTS `nm_language`;
CREATE TABLE `nm_language`  (
  `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lang_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lang_status` int(4) NOT NULL COMMENT '1->Active,2->deactive',
  `lang_default` int(11) NOT NULL COMMENT '1->default,',
  `pack_lang` int(11) NOT NULL,
  UNIQUE INDEX `id`(`lang_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_language
-- ----------------------------
INSERT INTO `nm_language` VALUES (1, 'en', 'English', 1, 1, 1);
INSERT INTO `nm_language` VALUES (3, 'fr', 'French', 2, 0, 0);

-- ----------------------------
-- Table structure for nm_login
-- ----------------------------
DROP TABLE IF EXISTS `nm_login`;
CREATE TABLE `nm_login`  (
  `log_id` int(5) NOT NULL AUTO_INCREMENT,
  `cus_id` int(5) NOT NULL,
  `log_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `log_type` int(11) NOT NULL DEFAULT 1 COMMENT '1-wesite,2 facebook',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 635 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_login
-- ----------------------------
INSERT INTO `nm_login` VALUES (1, 186, '2017-10-03 15:23:05', 1);
INSERT INTO `nm_login` VALUES (2, 186, '2017-10-03 20:36:58', 1);
INSERT INTO `nm_login` VALUES (3, 186, '2017-10-09 19:13:05', 1);
INSERT INTO `nm_login` VALUES (4, 186, '2017-10-09 19:13:36', 1);
INSERT INTO `nm_login` VALUES (5, 186, '2017-10-16 20:23:52', 1);
INSERT INTO `nm_login` VALUES (6, 186, '2017-10-17 16:01:41', 1);
INSERT INTO `nm_login` VALUES (7, 186, '2017-10-20 13:26:25', 1);
INSERT INTO `nm_login` VALUES (8, 186, '2017-10-20 17:58:23', 1);
INSERT INTO `nm_login` VALUES (9, 188, '2017-10-21 19:30:19', 1);
INSERT INTO `nm_login` VALUES (10, 188, '2017-10-21 19:31:18', 1);
INSERT INTO `nm_login` VALUES (11, 186, '2017-10-23 14:15:58', 1);
INSERT INTO `nm_login` VALUES (12, 186, '2017-10-23 18:55:27', 1);
INSERT INTO `nm_login` VALUES (13, 186, '2017-10-23 18:57:05', 1);
INSERT INTO `nm_login` VALUES (14, 186, '2017-10-23 19:02:39', 1);
INSERT INTO `nm_login` VALUES (15, 186, '2017-10-23 19:15:40', 1);
INSERT INTO `nm_login` VALUES (16, 186, '2017-10-24 12:40:35', 1);
INSERT INTO `nm_login` VALUES (17, 186, '2017-10-24 12:40:35', 1);
INSERT INTO `nm_login` VALUES (18, 186, '2017-10-24 14:13:37', 1);
INSERT INTO `nm_login` VALUES (19, 186, '2017-10-24 14:14:38', 1);
INSERT INTO `nm_login` VALUES (20, 186, '2017-10-24 15:11:28', 1);
INSERT INTO `nm_login` VALUES (21, 186, '2017-10-24 15:37:39', 1);
INSERT INTO `nm_login` VALUES (22, 186, '2017-10-24 15:40:15', 1);
INSERT INTO `nm_login` VALUES (23, 186, '2017-10-24 16:10:34', 1);
INSERT INTO `nm_login` VALUES (24, 186, '2017-10-24 16:38:23', 1);
INSERT INTO `nm_login` VALUES (25, 186, '2017-10-24 16:39:55', 1);
INSERT INTO `nm_login` VALUES (26, 186, '2017-10-24 16:40:26', 1);
INSERT INTO `nm_login` VALUES (27, 186, '2017-10-24 16:58:01', 1);
INSERT INTO `nm_login` VALUES (28, 186, '2017-10-24 16:59:15', 1);
INSERT INTO `nm_login` VALUES (29, 186, '2017-10-24 17:01:03', 1);
INSERT INTO `nm_login` VALUES (30, 186, '2017-10-24 17:01:55', 1);
INSERT INTO `nm_login` VALUES (31, 186, '2017-10-24 17:31:46', 1);
INSERT INTO `nm_login` VALUES (32, 186, '2017-10-24 17:32:48', 1);
INSERT INTO `nm_login` VALUES (33, 186, '2017-10-24 17:36:15', 1);
INSERT INTO `nm_login` VALUES (34, 186, '2017-10-24 18:57:51', 1);
INSERT INTO `nm_login` VALUES (35, 186, '2017-10-24 18:58:28', 1);
INSERT INTO `nm_login` VALUES (36, 186, '2017-10-24 20:27:39', 1);
INSERT INTO `nm_login` VALUES (37, 186, '2017-10-24 21:16:58', 1);
INSERT INTO `nm_login` VALUES (38, 186, '2017-10-24 21:21:14', 1);
INSERT INTO `nm_login` VALUES (39, 186, '2017-10-24 21:24:56', 1);
INSERT INTO `nm_login` VALUES (40, 186, '2017-10-24 21:33:58', 1);
INSERT INTO `nm_login` VALUES (41, 186, '2017-10-24 21:43:36', 1);
INSERT INTO `nm_login` VALUES (42, 186, '2017-10-25 12:53:59', 1);
INSERT INTO `nm_login` VALUES (43, 186, '2017-10-26 15:53:38', 1);
INSERT INTO `nm_login` VALUES (44, 190, '2017-10-27 12:52:41', 1);
INSERT INTO `nm_login` VALUES (45, 186, '2017-10-27 13:48:07', 1);
INSERT INTO `nm_login` VALUES (46, 190, '2017-10-27 14:17:27', 1);
INSERT INTO `nm_login` VALUES (47, 190, '2017-10-27 15:37:24', 1);
INSERT INTO `nm_login` VALUES (48, 186, '2017-10-27 17:36:27', 1);
INSERT INTO `nm_login` VALUES (49, 193, '2017-10-27 18:20:09', 1);
INSERT INTO `nm_login` VALUES (50, 186, '2017-10-27 18:27:56', 1);
INSERT INTO `nm_login` VALUES (51, 193, '2017-10-27 18:29:57', 1);
INSERT INTO `nm_login` VALUES (52, 186, '2017-10-30 12:41:08', 1);
INSERT INTO `nm_login` VALUES (53, 186, '2017-10-30 12:52:47', 1);
INSERT INTO `nm_login` VALUES (54, 186, '2017-10-30 12:55:34', 1);
INSERT INTO `nm_login` VALUES (55, 194, '2017-10-30 13:07:26', 1);
INSERT INTO `nm_login` VALUES (56, 194, '2017-10-30 13:08:36', 1);
INSERT INTO `nm_login` VALUES (57, 186, '2017-10-30 16:06:30', 1);
INSERT INTO `nm_login` VALUES (58, 186, '2017-10-30 16:36:50', 1);
INSERT INTO `nm_login` VALUES (59, 186, '2017-10-30 16:37:40', 1);
INSERT INTO `nm_login` VALUES (60, 186, '2017-10-30 19:05:55', 1);
INSERT INTO `nm_login` VALUES (61, 186, '2017-10-30 19:10:31', 1);
INSERT INTO `nm_login` VALUES (62, 197, '2017-10-31 12:05:05', 1);
INSERT INTO `nm_login` VALUES (63, 197, '2017-10-31 12:05:17', 1);
INSERT INTO `nm_login` VALUES (64, 197, '2017-10-31 12:12:52', 1);
INSERT INTO `nm_login` VALUES (65, 197, '2017-10-31 12:29:04', 1);
INSERT INTO `nm_login` VALUES (66, 197, '2017-10-31 12:29:21', 1);
INSERT INTO `nm_login` VALUES (67, 198, '2017-10-31 12:35:28', 1);
INSERT INTO `nm_login` VALUES (68, 197, '2017-10-31 12:37:00', 1);
INSERT INTO `nm_login` VALUES (69, 198, '2017-10-31 13:02:31', 1);
INSERT INTO `nm_login` VALUES (70, 198, '2017-10-31 13:55:01', 1);
INSERT INTO `nm_login` VALUES (71, 198, '2017-10-31 13:55:04', 1);
INSERT INTO `nm_login` VALUES (72, 198, '2017-10-31 13:55:05', 1);
INSERT INTO `nm_login` VALUES (73, 198, '2017-10-31 13:55:05', 1);
INSERT INTO `nm_login` VALUES (74, 198, '2017-10-31 13:55:08', 1);
INSERT INTO `nm_login` VALUES (75, 198, '2017-10-31 13:55:08', 1);
INSERT INTO `nm_login` VALUES (76, 198, '2017-10-31 13:55:09', 1);
INSERT INTO `nm_login` VALUES (77, 198, '2017-10-31 13:55:09', 1);
INSERT INTO `nm_login` VALUES (78, 198, '2017-10-31 13:55:26', 1);
INSERT INTO `nm_login` VALUES (79, 198, '2017-10-31 13:56:47', 1);
INSERT INTO `nm_login` VALUES (80, 198, '2017-10-31 13:57:54', 1);
INSERT INTO `nm_login` VALUES (81, 198, '2017-10-31 14:01:31', 1);
INSERT INTO `nm_login` VALUES (82, 198, '2017-10-31 14:05:31', 1);
INSERT INTO `nm_login` VALUES (83, 198, '2017-10-31 14:06:23', 1);
INSERT INTO `nm_login` VALUES (84, 198, '2017-10-31 14:07:57', 1);
INSERT INTO `nm_login` VALUES (85, 198, '2017-10-31 14:10:38', 1);
INSERT INTO `nm_login` VALUES (86, 198, '2017-10-31 14:15:35', 1);
INSERT INTO `nm_login` VALUES (87, 198, '2017-10-31 14:16:11', 1);
INSERT INTO `nm_login` VALUES (88, 198, '2017-10-31 14:17:04', 1);
INSERT INTO `nm_login` VALUES (89, 198, '2017-10-31 14:22:50', 1);
INSERT INTO `nm_login` VALUES (90, 198, '2017-10-31 14:23:50', 1);
INSERT INTO `nm_login` VALUES (91, 198, '2017-10-31 14:24:08', 1);
INSERT INTO `nm_login` VALUES (92, 198, '2017-10-31 15:12:18', 1);
INSERT INTO `nm_login` VALUES (93, 198, '2017-10-31 15:12:36', 1);
INSERT INTO `nm_login` VALUES (94, 198, '2017-10-31 15:13:56', 1);
INSERT INTO `nm_login` VALUES (95, 198, '2017-10-31 15:14:41', 1);
INSERT INTO `nm_login` VALUES (96, 197, '2017-10-31 15:21:03', 1);
INSERT INTO `nm_login` VALUES (97, 197, '2017-10-31 17:34:01', 1);
INSERT INTO `nm_login` VALUES (98, 197, '2017-10-31 17:34:09', 1);
INSERT INTO `nm_login` VALUES (99, 197, '2017-11-01 18:40:56', 1);
INSERT INTO `nm_login` VALUES (100, 197, '2017-11-01 19:32:28', 1);
INSERT INTO `nm_login` VALUES (101, 197, '2017-11-01 19:40:16', 1);
INSERT INTO `nm_login` VALUES (102, 186, '2017-11-01 20:28:27', 1);
INSERT INTO `nm_login` VALUES (103, 186, '2017-11-01 20:36:12', 1);
INSERT INTO `nm_login` VALUES (104, 186, '2017-11-01 20:42:38', 1);
INSERT INTO `nm_login` VALUES (105, 197, '2017-11-02 12:20:46', 1);
INSERT INTO `nm_login` VALUES (106, 186, '2017-11-02 18:11:24', 1);
INSERT INTO `nm_login` VALUES (107, 201, '2017-11-02 18:13:21', 1);
INSERT INTO `nm_login` VALUES (108, 194, '2017-11-02 18:20:07', 1);
INSERT INTO `nm_login` VALUES (109, 186, '2017-11-02 18:28:19', 1);
INSERT INTO `nm_login` VALUES (110, 186, '2017-11-03 18:01:47', 1);
INSERT INTO `nm_login` VALUES (111, 186, '2017-11-03 18:49:50', 1);
INSERT INTO `nm_login` VALUES (112, 186, '2017-11-04 13:46:17', 1);
INSERT INTO `nm_login` VALUES (113, 201, '2017-11-04 14:56:38', 1);
INSERT INTO `nm_login` VALUES (114, 194, '2017-11-04 17:03:43', 1);
INSERT INTO `nm_login` VALUES (115, 186, '2017-11-06 19:51:43', 1);
INSERT INTO `nm_login` VALUES (116, 186, '2017-11-06 19:51:46', 1);
INSERT INTO `nm_login` VALUES (117, 186, '2017-11-06 19:51:48', 1);
INSERT INTO `nm_login` VALUES (118, 186, '2017-11-06 19:51:59', 1);
INSERT INTO `nm_login` VALUES (119, 186, '2017-11-06 19:52:11', 1);
INSERT INTO `nm_login` VALUES (120, 186, '2017-11-06 19:54:50', 1);
INSERT INTO `nm_login` VALUES (121, 186, '2017-11-07 15:24:01', 1);
INSERT INTO `nm_login` VALUES (122, 186, '2017-11-07 15:24:03', 1);
INSERT INTO `nm_login` VALUES (123, 186, '2017-11-07 15:25:52', 1);
INSERT INTO `nm_login` VALUES (124, 186, '2017-11-07 15:27:28', 1);
INSERT INTO `nm_login` VALUES (125, 186, '2017-11-07 15:42:13', 1);
INSERT INTO `nm_login` VALUES (126, 186, '2017-11-07 17:54:01', 1);
INSERT INTO `nm_login` VALUES (127, 186, '2017-11-07 17:54:01', 1);
INSERT INTO `nm_login` VALUES (128, 186, '2017-11-07 17:54:01', 1);
INSERT INTO `nm_login` VALUES (129, 197, '2017-11-08 12:38:49', 1);
INSERT INTO `nm_login` VALUES (130, 186, '2017-11-08 19:21:19', 1);
INSERT INTO `nm_login` VALUES (131, 186, '2017-11-08 19:51:44', 1);
INSERT INTO `nm_login` VALUES (132, 186, '2017-11-09 20:03:53', 1);
INSERT INTO `nm_login` VALUES (133, 198, '2017-11-09 20:59:44', 1);
INSERT INTO `nm_login` VALUES (134, 198, '2017-11-10 12:32:54', 1);
INSERT INTO `nm_login` VALUES (135, 198, '2017-11-10 12:34:31', 1);
INSERT INTO `nm_login` VALUES (136, 198, '2017-11-10 12:43:50', 1);
INSERT INTO `nm_login` VALUES (137, 198, '2017-11-10 12:44:22', 1);
INSERT INTO `nm_login` VALUES (138, 198, '2017-11-10 12:59:11', 1);
INSERT INTO `nm_login` VALUES (139, 198, '2017-11-10 13:08:34', 1);
INSERT INTO `nm_login` VALUES (140, 198, '2017-11-10 13:20:17', 1);
INSERT INTO `nm_login` VALUES (141, 186, '2017-11-11 14:19:42', 1);
INSERT INTO `nm_login` VALUES (142, 197, '2017-11-11 17:23:02', 1);
INSERT INTO `nm_login` VALUES (143, 186, '2017-11-13 15:55:00', 1);
INSERT INTO `nm_login` VALUES (144, 186, '2017-11-13 17:47:55', 1);
INSERT INTO `nm_login` VALUES (145, 197, '2017-11-13 19:05:38', 1);
INSERT INTO `nm_login` VALUES (146, 186, '2017-11-16 13:46:07', 1);
INSERT INTO `nm_login` VALUES (147, 186, '2017-11-16 18:57:27', 1);
INSERT INTO `nm_login` VALUES (148, 186, '2017-11-16 20:13:46', 1);
INSERT INTO `nm_login` VALUES (149, 186, '2017-11-17 12:02:28', 1);
INSERT INTO `nm_login` VALUES (150, 186, '2017-11-18 14:02:43', 1);
INSERT INTO `nm_login` VALUES (151, 186, '2017-11-18 15:20:48', 1);
INSERT INTO `nm_login` VALUES (152, 186, '2017-11-18 18:52:32', 1);
INSERT INTO `nm_login` VALUES (153, 186, '2017-11-18 19:23:06', 1);
INSERT INTO `nm_login` VALUES (154, 186, '2017-11-20 12:17:16', 1);
INSERT INTO `nm_login` VALUES (155, 198, '2017-11-20 12:43:55', 1);
INSERT INTO `nm_login` VALUES (156, 186, '2017-11-20 14:44:33', 1);
INSERT INTO `nm_login` VALUES (157, 197, '2017-11-20 18:07:32', 1);
INSERT INTO `nm_login` VALUES (158, 201, '2017-11-20 18:48:21', 1);
INSERT INTO `nm_login` VALUES (159, 198, '2017-11-20 20:32:16', 1);
INSERT INTO `nm_login` VALUES (160, 186, '2017-11-21 20:02:36', 1);
INSERT INTO `nm_login` VALUES (161, 188, '2017-11-23 13:55:56', 1);
INSERT INTO `nm_login` VALUES (162, 201, '2017-11-27 13:17:20', 1);
INSERT INTO `nm_login` VALUES (163, 186, '2017-11-29 17:04:15', 1);
INSERT INTO `nm_login` VALUES (164, 186, '2017-11-30 19:35:19', 1);
INSERT INTO `nm_login` VALUES (165, 188, '2017-12-04 15:15:08', 1);
INSERT INTO `nm_login` VALUES (166, 186, '2017-12-04 19:58:40', 1);
INSERT INTO `nm_login` VALUES (167, 186, '2017-12-07 15:29:17', 1);
INSERT INTO `nm_login` VALUES (168, 186, '2017-12-08 21:37:51', 1);
INSERT INTO `nm_login` VALUES (169, 202, '2017-12-09 12:55:28', 1);
INSERT INTO `nm_login` VALUES (170, 186, '2017-12-09 18:07:19', 1);
INSERT INTO `nm_login` VALUES (171, 186, '2017-12-11 13:08:40', 1);
INSERT INTO `nm_login` VALUES (172, 186, '2017-12-11 20:00:20', 1);
INSERT INTO `nm_login` VALUES (173, 186, '2017-12-11 20:30:20', 1);
INSERT INTO `nm_login` VALUES (174, 201, '2017-12-11 21:30:11', 1);
INSERT INTO `nm_login` VALUES (175, 201, '2017-12-11 23:06:43', 1);
INSERT INTO `nm_login` VALUES (176, 201, '2017-12-12 13:01:09', 1);
INSERT INTO `nm_login` VALUES (177, 197, '2017-12-12 14:53:50', 1);
INSERT INTO `nm_login` VALUES (178, 197, '2017-12-12 19:08:00', 1);
INSERT INTO `nm_login` VALUES (179, 201, '2017-12-12 20:20:20', 1);
INSERT INTO `nm_login` VALUES (180, 197, '2017-12-12 22:03:27', 1);
INSERT INTO `nm_login` VALUES (181, 197, '2017-12-13 12:24:43', 1);
INSERT INTO `nm_login` VALUES (182, 186, '2017-12-15 15:42:05', 1);
INSERT INTO `nm_login` VALUES (183, 201, '2017-12-16 14:15:24', 1);
INSERT INTO `nm_login` VALUES (184, 201, '2017-12-16 14:15:47', 1);
INSERT INTO `nm_login` VALUES (185, 201, '2017-12-16 17:20:20', 1);
INSERT INTO `nm_login` VALUES (186, 186, '2017-12-16 20:50:36', 1);
INSERT INTO `nm_login` VALUES (187, 201, '2017-12-18 12:37:46', 1);
INSERT INTO `nm_login` VALUES (188, 186, '2017-12-18 14:59:16', 1);
INSERT INTO `nm_login` VALUES (189, 201, '2017-12-18 16:09:26', 1);
INSERT INTO `nm_login` VALUES (190, 202, '2017-12-18 17:27:48', 1);
INSERT INTO `nm_login` VALUES (191, 201, '2017-12-18 17:31:43', 1);
INSERT INTO `nm_login` VALUES (192, 201, '2017-12-18 17:59:38', 1);
INSERT INTO `nm_login` VALUES (193, 197, '2017-12-19 12:39:14', 1);
INSERT INTO `nm_login` VALUES (194, 197, '2017-12-19 12:54:32', 1);
INSERT INTO `nm_login` VALUES (195, 186, '2017-12-19 13:08:27', 1);
INSERT INTO `nm_login` VALUES (196, 201, '2017-12-19 15:43:57', 1);
INSERT INTO `nm_login` VALUES (197, 197, '2017-12-19 17:25:56', 1);
INSERT INTO `nm_login` VALUES (198, 201, '2017-12-19 17:26:35', 1);
INSERT INTO `nm_login` VALUES (199, 201, '2017-12-19 20:29:23', 1);
INSERT INTO `nm_login` VALUES (200, 201, '2017-12-20 14:29:49', 1);
INSERT INTO `nm_login` VALUES (201, 201, '2017-12-21 12:41:29', 1);
INSERT INTO `nm_login` VALUES (202, 201, '2017-12-21 13:46:40', 1);
INSERT INTO `nm_login` VALUES (203, 201, '2017-12-22 12:24:32', 1);
INSERT INTO `nm_login` VALUES (204, 202, '2017-12-22 12:52:14', 1);
INSERT INTO `nm_login` VALUES (205, 203, '2017-12-22 12:59:03', 1);
INSERT INTO `nm_login` VALUES (206, 203, '2017-12-22 13:02:31', 1);
INSERT INTO `nm_login` VALUES (207, 203, '2017-12-22 13:12:09', 1);
INSERT INTO `nm_login` VALUES (208, 203, '2017-12-22 19:51:18', 1);
INSERT INTO `nm_login` VALUES (209, 201, '2017-12-22 20:47:01', 1);
INSERT INTO `nm_login` VALUES (210, 201, '2017-12-25 13:59:06', 1);
INSERT INTO `nm_login` VALUES (211, 201, '2017-12-25 20:40:12', 1);
INSERT INTO `nm_login` VALUES (212, 201, '2017-12-25 20:40:13', 1);
INSERT INTO `nm_login` VALUES (213, 201, '2017-12-26 12:46:24', 1);
INSERT INTO `nm_login` VALUES (214, 206, '2017-12-26 13:38:15', 1);
INSERT INTO `nm_login` VALUES (215, 206, '2017-12-26 21:31:32', 1);
INSERT INTO `nm_login` VALUES (216, 207, '2017-12-27 16:02:16', 1);
INSERT INTO `nm_login` VALUES (217, 207, '2017-12-27 19:27:07', 1);
INSERT INTO `nm_login` VALUES (218, 207, '2017-12-28 15:25:50', 1);
INSERT INTO `nm_login` VALUES (219, 207, '2017-12-29 19:29:26', 1);
INSERT INTO `nm_login` VALUES (220, 207, '2018-01-02 15:05:19', 1);
INSERT INTO `nm_login` VALUES (221, 197, '2018-01-03 17:35:54', 1);
INSERT INTO `nm_login` VALUES (222, 197, '2018-01-03 19:29:52', 1);
INSERT INTO `nm_login` VALUES (223, 197, '2018-01-03 21:31:59', 1);
INSERT INTO `nm_login` VALUES (224, 207, '2018-01-04 15:02:16', 1);
INSERT INTO `nm_login` VALUES (225, 207, '2018-01-04 18:45:44', 1);
INSERT INTO `nm_login` VALUES (226, 207, '2018-01-05 12:29:51', 1);
INSERT INTO `nm_login` VALUES (227, 206, '2018-01-05 14:46:01', 1);
INSERT INTO `nm_login` VALUES (228, 212, '2018-01-05 17:14:54', 1);
INSERT INTO `nm_login` VALUES (229, 213, '2018-01-05 21:56:04', 1);
INSERT INTO `nm_login` VALUES (230, 194, '2018-01-06 13:30:03', 1);
INSERT INTO `nm_login` VALUES (231, 214, '2018-01-08 13:21:47', 1);
INSERT INTO `nm_login` VALUES (232, 214, '2018-01-08 14:25:43', 1);
INSERT INTO `nm_login` VALUES (233, 220, '2018-01-08 16:11:51', 1);
INSERT INTO `nm_login` VALUES (234, 222, '2018-01-08 18:41:54', 1);
INSERT INTO `nm_login` VALUES (235, 214, '2018-01-08 18:46:17', 1);
INSERT INTO `nm_login` VALUES (236, 201, '2018-01-08 19:34:41', 1);
INSERT INTO `nm_login` VALUES (237, 214, '2018-01-09 13:40:32', 1);
INSERT INTO `nm_login` VALUES (238, 206, '2018-01-09 14:55:27', 1);
INSERT INTO `nm_login` VALUES (239, 220, '2018-01-09 19:52:20', 1);
INSERT INTO `nm_login` VALUES (240, 201, '2018-01-10 14:01:35', 1);
INSERT INTO `nm_login` VALUES (241, 201, '2018-01-10 14:08:50', 1);
INSERT INTO `nm_login` VALUES (242, 220, '2018-01-10 14:59:34', 1);
INSERT INTO `nm_login` VALUES (243, 206, '2018-01-10 18:54:30', 1);
INSERT INTO `nm_login` VALUES (244, 201, '2018-01-10 21:37:23', 1);
INSERT INTO `nm_login` VALUES (245, 212, '2018-01-10 21:44:38', 1);
INSERT INTO `nm_login` VALUES (246, 220, '2018-01-11 12:24:31', 1);
INSERT INTO `nm_login` VALUES (247, 212, '2018-01-11 12:28:35', 1);
INSERT INTO `nm_login` VALUES (248, 201, '2018-01-11 12:44:20', 1);
INSERT INTO `nm_login` VALUES (249, 231, '2018-01-11 12:52:28', 1);
INSERT INTO `nm_login` VALUES (250, 212, '2018-01-11 12:54:42', 1);
INSERT INTO `nm_login` VALUES (251, 232, '2018-01-11 12:56:36', 1);
INSERT INTO `nm_login` VALUES (252, 212, '2018-01-11 13:48:04', 1);
INSERT INTO `nm_login` VALUES (253, 212, '2018-01-11 14:32:41', 1);
INSERT INTO `nm_login` VALUES (254, 232, '2018-01-11 14:56:57', 1);
INSERT INTO `nm_login` VALUES (255, 232, '2018-01-11 16:00:28', 1);
INSERT INTO `nm_login` VALUES (256, 232, '2018-01-11 16:34:30', 1);
INSERT INTO `nm_login` VALUES (257, 212, '2018-01-11 20:55:08', 1);
INSERT INTO `nm_login` VALUES (258, 232, '2018-01-12 11:58:57', 1);
INSERT INTO `nm_login` VALUES (259, 214, '2018-01-12 13:01:01', 1);
INSERT INTO `nm_login` VALUES (260, 220, '2018-01-12 13:03:06', 1);
INSERT INTO `nm_login` VALUES (261, 232, '2018-01-12 14:21:16', 1);
INSERT INTO `nm_login` VALUES (262, 206, '2018-01-12 15:19:08', 1);
INSERT INTO `nm_login` VALUES (263, 214, '2018-01-12 15:21:59', 1);
INSERT INTO `nm_login` VALUES (264, 232, '2018-01-12 16:23:24', 1);
INSERT INTO `nm_login` VALUES (265, 214, '2018-01-12 17:02:01', 1);
INSERT INTO `nm_login` VALUES (266, 214, '2018-01-12 19:18:59', 1);
INSERT INTO `nm_login` VALUES (267, 201, '2018-01-12 20:50:17', 1);
INSERT INTO `nm_login` VALUES (268, 212, '2018-01-12 21:40:49', 1);
INSERT INTO `nm_login` VALUES (269, 201, '2018-01-13 12:06:53', 1);
INSERT INTO `nm_login` VALUES (270, 214, '2018-01-13 12:37:45', 1);
INSERT INTO `nm_login` VALUES (271, 249, '2018-01-13 20:20:16', 1);
INSERT INTO `nm_login` VALUES (272, 201, '2018-01-16 11:50:57', 1);
INSERT INTO `nm_login` VALUES (273, 250, '2018-01-16 12:35:05', 1);
INSERT INTO `nm_login` VALUES (274, 220, '2018-01-16 13:13:10', 1);
INSERT INTO `nm_login` VALUES (275, 214, '2018-01-16 14:15:17', 1);
INSERT INTO `nm_login` VALUES (276, 212, '2018-01-16 15:13:44', 1);
INSERT INTO `nm_login` VALUES (277, 250, '2018-01-16 18:23:33', 1);
INSERT INTO `nm_login` VALUES (278, 214, '2018-01-16 18:23:37', 1);
INSERT INTO `nm_login` VALUES (279, 250, '2018-01-16 18:38:15', 1);
INSERT INTO `nm_login` VALUES (280, 250, '2018-01-16 18:40:31', 1);
INSERT INTO `nm_login` VALUES (281, 250, '2018-01-16 18:46:35', 1);
INSERT INTO `nm_login` VALUES (282, 250, '2018-01-16 18:52:23', 1);
INSERT INTO `nm_login` VALUES (283, 250, '2018-01-16 18:55:04', 1);
INSERT INTO `nm_login` VALUES (284, 250, '2018-01-16 19:58:19', 1);
INSERT INTO `nm_login` VALUES (285, 250, '2018-01-16 20:09:13', 1);
INSERT INTO `nm_login` VALUES (286, 250, '2018-01-16 22:50:07', 1);
INSERT INTO `nm_login` VALUES (287, 201, '2018-01-17 13:32:14', 1);
INSERT INTO `nm_login` VALUES (288, 250, '2018-01-17 13:48:55', 1);
INSERT INTO `nm_login` VALUES (289, 250, '2018-01-17 13:52:31', 1);
INSERT INTO `nm_login` VALUES (290, 250, '2018-01-17 13:59:21', 1);
INSERT INTO `nm_login` VALUES (291, 214, '2018-01-17 15:02:29', 1);
INSERT INTO `nm_login` VALUES (292, 250, '2018-01-17 18:59:54', 1);
INSERT INTO `nm_login` VALUES (293, 250, '2018-01-17 20:32:19', 1);
INSERT INTO `nm_login` VALUES (294, 250, '2018-01-17 21:24:29', 1);
INSERT INTO `nm_login` VALUES (295, 250, '2018-01-17 21:56:26', 1);
INSERT INTO `nm_login` VALUES (296, 201, '2018-01-18 12:12:08', 1);
INSERT INTO `nm_login` VALUES (297, 214, '2018-01-18 15:50:05', 1);
INSERT INTO `nm_login` VALUES (298, 250, '2018-01-18 15:50:18', 1);
INSERT INTO `nm_login` VALUES (299, 250, '2018-01-18 16:16:50', 1);
INSERT INTO `nm_login` VALUES (300, 186, '2018-01-18 18:20:15', 1);
INSERT INTO `nm_login` VALUES (301, 201, '2018-01-18 20:56:55', 1);
INSERT INTO `nm_login` VALUES (302, 250, '2018-01-18 21:13:27', 1);
INSERT INTO `nm_login` VALUES (303, 186, '2018-01-18 22:01:20', 1);
INSERT INTO `nm_login` VALUES (304, 214, '2018-01-18 22:01:20', 1);
INSERT INTO `nm_login` VALUES (305, 250, '2018-01-19 13:03:54', 1);
INSERT INTO `nm_login` VALUES (306, 250, '2018-01-19 13:04:23', 1);
INSERT INTO `nm_login` VALUES (307, 220, '2018-01-19 14:23:04', 1);
INSERT INTO `nm_login` VALUES (308, 250, '2018-01-19 15:29:02', 1);
INSERT INTO `nm_login` VALUES (309, 250, '2018-01-19 19:05:17', 1);
INSERT INTO `nm_login` VALUES (310, 250, '2018-01-20 17:45:25', 1);
INSERT INTO `nm_login` VALUES (311, 250, '2018-01-20 18:25:04', 1);
INSERT INTO `nm_login` VALUES (312, 250, '2018-01-20 18:27:48', 1);
INSERT INTO `nm_login` VALUES (313, 201, '2018-01-23 12:24:18', 1);
INSERT INTO `nm_login` VALUES (314, 201, '2018-01-24 14:09:43', 1);
INSERT INTO `nm_login` VALUES (315, 201, '2018-01-25 11:49:52', 1);
INSERT INTO `nm_login` VALUES (316, 250, '2018-01-26 16:51:47', 1);
INSERT INTO `nm_login` VALUES (317, 250, '2018-01-26 16:55:07', 1);
INSERT INTO `nm_login` VALUES (318, 250, '2018-01-26 17:25:14', 1);
INSERT INTO `nm_login` VALUES (319, 250, '2018-01-26 18:18:51', 1);
INSERT INTO `nm_login` VALUES (320, 186, '2018-01-30 14:38:35', 1);
INSERT INTO `nm_login` VALUES (321, 201, '2018-01-31 20:58:26', 1);
INSERT INTO `nm_login` VALUES (322, 186, '2018-02-01 13:44:55', 1);
INSERT INTO `nm_login` VALUES (323, 250, '2018-02-02 14:14:23', 1);
INSERT INTO `nm_login` VALUES (324, 250, '2018-02-02 14:15:39', 1);
INSERT INTO `nm_login` VALUES (325, 250, '2018-02-02 14:44:48', 1);
INSERT INTO `nm_login` VALUES (326, 250, '2018-02-02 14:50:27', 1);
INSERT INTO `nm_login` VALUES (327, 250, '2018-02-02 14:50:50', 1);
INSERT INTO `nm_login` VALUES (328, 201, '2018-02-03 19:38:30', 1);
INSERT INTO `nm_login` VALUES (329, 229, '2018-02-05 13:16:36', 1);
INSERT INTO `nm_login` VALUES (330, 229, '2018-02-05 13:24:02', 1);
INSERT INTO `nm_login` VALUES (331, 212, '2018-02-05 18:01:54', 1);
INSERT INTO `nm_login` VALUES (332, 212, '2018-02-05 18:03:13', 1);
INSERT INTO `nm_login` VALUES (333, 201, '2018-02-05 18:58:51', 1);
INSERT INTO `nm_login` VALUES (334, 229, '2018-02-05 19:03:45', 1);
INSERT INTO `nm_login` VALUES (335, 229, '2018-02-05 19:49:32', 1);
INSERT INTO `nm_login` VALUES (336, 229, '2018-02-05 19:55:29', 1);
INSERT INTO `nm_login` VALUES (337, 201, '2018-02-05 20:03:11', 1);
INSERT INTO `nm_login` VALUES (338, 229, '2018-02-06 13:20:55', 1);
INSERT INTO `nm_login` VALUES (339, 229, '2018-02-06 13:25:16', 1);
INSERT INTO `nm_login` VALUES (340, 201, '2018-02-06 14:15:06', 1);
INSERT INTO `nm_login` VALUES (341, 229, '2018-02-06 18:12:56', 1);
INSERT INTO `nm_login` VALUES (342, 253, '2018-02-06 18:14:46', 1);
INSERT INTO `nm_login` VALUES (343, 220, '2018-02-06 18:46:02', 1);
INSERT INTO `nm_login` VALUES (344, 253, '2018-02-06 19:03:47', 1);
INSERT INTO `nm_login` VALUES (345, 229, '2018-02-06 19:23:29', 1);
INSERT INTO `nm_login` VALUES (346, 201, '2018-02-06 21:37:38', 1);
INSERT INTO `nm_login` VALUES (347, 220, '2018-02-07 14:58:31', 1);
INSERT INTO `nm_login` VALUES (348, 220, '2018-02-07 15:11:29', 1);
INSERT INTO `nm_login` VALUES (349, 229, '2018-02-07 15:28:58', 1);
INSERT INTO `nm_login` VALUES (350, 229, '2018-02-07 15:32:33', 1);
INSERT INTO `nm_login` VALUES (351, 229, '2018-02-07 15:54:15', 1);
INSERT INTO `nm_login` VALUES (352, 229, '2018-02-07 16:00:58', 1);
INSERT INTO `nm_login` VALUES (353, 229, '2018-02-09 20:23:19', 1);
INSERT INTO `nm_login` VALUES (354, 229, '2018-02-09 20:23:44', 1);
INSERT INTO `nm_login` VALUES (355, 229, '2018-02-10 17:15:31', 1);
INSERT INTO `nm_login` VALUES (356, 214, '2018-02-10 21:29:06', 1);
INSERT INTO `nm_login` VALUES (357, 229, '2018-02-10 21:58:38', 1);
INSERT INTO `nm_login` VALUES (358, 214, '2018-02-12 12:22:30', 1);
INSERT INTO `nm_login` VALUES (359, 201, '2018-02-12 13:58:06', 1);
INSERT INTO `nm_login` VALUES (360, 201, '2018-02-13 16:01:31', 1);
INSERT INTO `nm_login` VALUES (361, 220, '2018-02-13 17:48:38', 1);
INSERT INTO `nm_login` VALUES (362, 214, '2018-02-13 18:08:55', 1);
INSERT INTO `nm_login` VALUES (363, 201, '2018-02-14 11:49:31', 1);
INSERT INTO `nm_login` VALUES (364, 229, '2018-02-14 12:36:45', 1);
INSERT INTO `nm_login` VALUES (365, 201, '2018-02-14 20:29:53', 1);
INSERT INTO `nm_login` VALUES (366, 201, '2018-02-15 12:21:20', 1);
INSERT INTO `nm_login` VALUES (367, 229, '2018-02-15 15:32:07', 1);
INSERT INTO `nm_login` VALUES (368, 229, '2018-02-16 18:46:30', 1);
INSERT INTO `nm_login` VALUES (369, 220, '2018-02-17 17:46:20', 1);
INSERT INTO `nm_login` VALUES (370, 229, '2018-02-17 21:23:50', 1);
INSERT INTO `nm_login` VALUES (371, 220, '2018-02-20 16:04:17', 1);
INSERT INTO `nm_login` VALUES (372, 220, '2018-02-20 20:01:10', 1);
INSERT INTO `nm_login` VALUES (373, 220, '2018-02-21 22:45:28', 1);
INSERT INTO `nm_login` VALUES (374, 220, '2018-02-22 12:54:27', 1);
INSERT INTO `nm_login` VALUES (375, 220, '2018-02-23 19:36:20', 1);
INSERT INTO `nm_login` VALUES (376, 220, '2018-02-27 16:17:28', 1);
INSERT INTO `nm_login` VALUES (377, 220, '2018-02-27 19:50:40', 1);
INSERT INTO `nm_login` VALUES (378, 186, '2018-02-27 21:37:17', 1);
INSERT INTO `nm_login` VALUES (379, 229, '2018-02-27 21:37:53', 1);
INSERT INTO `nm_login` VALUES (380, 201, '2018-02-27 21:42:50', 1);
INSERT INTO `nm_login` VALUES (381, 220, '2018-02-28 12:06:17', 1);
INSERT INTO `nm_login` VALUES (382, 229, '2018-02-28 12:28:06', 1);
INSERT INTO `nm_login` VALUES (383, 220, '2018-02-28 13:38:33', 1);
INSERT INTO `nm_login` VALUES (384, 220, '2018-02-28 14:03:44', 1);
INSERT INTO `nm_login` VALUES (385, 229, '2018-02-28 15:45:45', 1);
INSERT INTO `nm_login` VALUES (386, 220, '2018-02-28 16:53:02', 1);
INSERT INTO `nm_login` VALUES (387, 220, '2018-03-01 12:39:12', 1);
INSERT INTO `nm_login` VALUES (388, 229, '2018-03-01 13:30:52', 1);
INSERT INTO `nm_login` VALUES (389, 220, '2018-03-01 18:39:36', 1);
INSERT INTO `nm_login` VALUES (390, 220, '2018-03-01 18:42:43', 1);
INSERT INTO `nm_login` VALUES (391, 186, '2018-03-01 22:05:57', 1);
INSERT INTO `nm_login` VALUES (392, 229, '2018-03-01 22:06:27', 1);
INSERT INTO `nm_login` VALUES (393, 229, '2018-03-02 12:44:42', 1);
INSERT INTO `nm_login` VALUES (394, 229, '2018-03-02 21:30:56', 1);
INSERT INTO `nm_login` VALUES (395, 229, '2018-03-02 21:39:57', 1);
INSERT INTO `nm_login` VALUES (396, 220, '2018-03-03 13:43:34', 1);
INSERT INTO `nm_login` VALUES (397, 229, '2018-03-03 14:17:38', 1);
INSERT INTO `nm_login` VALUES (398, 186, '2018-03-03 14:51:17', 1);
INSERT INTO `nm_login` VALUES (399, 220, '2018-03-03 18:05:10', 1);
INSERT INTO `nm_login` VALUES (400, 229, '2018-03-03 21:47:58', 1);
INSERT INTO `nm_login` VALUES (401, 229, '2018-03-05 12:23:26', 1);
INSERT INTO `nm_login` VALUES (402, 220, '2018-03-05 13:38:57', 1);
INSERT INTO `nm_login` VALUES (403, 220, '2018-03-05 15:15:39', 1);
INSERT INTO `nm_login` VALUES (404, 229, '2018-03-05 17:53:47', 1);
INSERT INTO `nm_login` VALUES (405, 220, '2018-03-07 19:00:59', 1);
INSERT INTO `nm_login` VALUES (406, 201, '2018-03-08 14:52:24', 1);
INSERT INTO `nm_login` VALUES (407, 220, '2018-03-08 15:12:18', 1);
INSERT INTO `nm_login` VALUES (408, 201, '2018-03-08 17:51:04', 1);
INSERT INTO `nm_login` VALUES (409, 201, '2018-03-08 19:45:24', 1);
INSERT INTO `nm_login` VALUES (410, 201, '2018-03-08 20:32:54', 1);
INSERT INTO `nm_login` VALUES (411, 220, '2018-03-08 21:38:08', 1);
INSERT INTO `nm_login` VALUES (412, 220, '2018-03-08 21:47:33', 1);
INSERT INTO `nm_login` VALUES (413, 220, '2018-03-08 21:55:28', 1);
INSERT INTO `nm_login` VALUES (414, 220, '2018-03-08 21:58:34', 1);
INSERT INTO `nm_login` VALUES (415, 220, '2018-03-08 22:00:27', 1);
INSERT INTO `nm_login` VALUES (416, 220, '2018-03-08 22:14:09', 1);
INSERT INTO `nm_login` VALUES (417, 220, '2018-03-08 22:18:26', 1);
INSERT INTO `nm_login` VALUES (418, 220, '2018-03-09 13:00:51', 1);
INSERT INTO `nm_login` VALUES (419, 250, '2018-03-13 13:58:00', 1);
INSERT INTO `nm_login` VALUES (420, 250, '2018-03-13 14:03:02', 1);
INSERT INTO `nm_login` VALUES (421, 201, '2018-03-13 17:33:12', 1);
INSERT INTO `nm_login` VALUES (422, 250, '2018-03-13 22:42:32', 1);
INSERT INTO `nm_login` VALUES (423, 250, '2018-03-14 13:24:09', 1);
INSERT INTO `nm_login` VALUES (424, 201, '2018-03-14 16:24:43', 1);
INSERT INTO `nm_login` VALUES (425, 201, '2018-03-14 17:18:45', 1);
INSERT INTO `nm_login` VALUES (426, 201, '2018-03-15 21:06:14', 1);
INSERT INTO `nm_login` VALUES (427, 201, '2018-03-16 17:47:39', 1);
INSERT INTO `nm_login` VALUES (428, 271, '2018-03-16 21:13:53', 1);
INSERT INTO `nm_login` VALUES (429, 250, '2018-03-19 13:08:25', 1);
INSERT INTO `nm_login` VALUES (430, 250, '2018-03-19 13:12:38', 1);
INSERT INTO `nm_login` VALUES (431, 201, '2018-03-19 17:50:19', 1);
INSERT INTO `nm_login` VALUES (432, 201, '2018-03-20 15:48:30', 1);
INSERT INTO `nm_login` VALUES (433, 201, '2018-03-20 17:25:30', 1);
INSERT INTO `nm_login` VALUES (434, 201, '2018-03-20 20:39:27', 1);
INSERT INTO `nm_login` VALUES (435, 201, '2018-03-21 12:45:04', 1);
INSERT INTO `nm_login` VALUES (436, 201, '2018-03-21 14:50:49', 1);
INSERT INTO `nm_login` VALUES (437, 272, '2018-03-26 19:52:37', 1);
INSERT INTO `nm_login` VALUES (438, 272, '2018-03-26 20:21:44', 1);
INSERT INTO `nm_login` VALUES (439, 272, '2018-03-27 13:49:42', 1);
INSERT INTO `nm_login` VALUES (440, 272, '2018-03-28 13:00:23', 1);
INSERT INTO `nm_login` VALUES (441, 201, '2018-03-29 15:02:23', 1);
INSERT INTO `nm_login` VALUES (442, 272, '2018-03-29 15:09:30', 1);
INSERT INTO `nm_login` VALUES (443, 272, '2018-03-29 17:45:47', 1);
INSERT INTO `nm_login` VALUES (444, 201, '2018-03-29 22:13:21', 1);
INSERT INTO `nm_login` VALUES (445, 272, '2018-03-30 12:26:20', 1);
INSERT INTO `nm_login` VALUES (446, 272, '2018-03-30 14:12:03', 1);
INSERT INTO `nm_login` VALUES (447, 273, '2018-03-30 19:03:48', 1);
INSERT INTO `nm_login` VALUES (448, 273, '2018-03-31 12:45:55', 1);
INSERT INTO `nm_login` VALUES (449, 273, '2018-04-02 17:08:52', 1);
INSERT INTO `nm_login` VALUES (450, 273, '2018-04-03 18:55:47', 1);
INSERT INTO `nm_login` VALUES (451, 273, '2018-04-05 17:20:14', 1);
INSERT INTO `nm_login` VALUES (452, 220, '2018-04-05 17:37:09', 1);
INSERT INTO `nm_login` VALUES (453, 273, '2018-04-06 16:20:54', 1);
INSERT INTO `nm_login` VALUES (454, 273, '2018-04-06 18:26:49', 1);
INSERT INTO `nm_login` VALUES (455, 273, '2018-04-06 18:30:19', 1);
INSERT INTO `nm_login` VALUES (456, 273, '2018-04-06 18:35:31', 1);
INSERT INTO `nm_login` VALUES (457, 273, '2018-04-07 12:47:51', 1);
INSERT INTO `nm_login` VALUES (458, 273, '2018-04-07 12:50:58', 1);
INSERT INTO `nm_login` VALUES (459, 201, '2018-04-07 15:33:26', 1);
INSERT INTO `nm_login` VALUES (460, 273, '2018-04-07 16:24:03', 1);
INSERT INTO `nm_login` VALUES (461, 273, '2018-04-07 16:25:21', 1);
INSERT INTO `nm_login` VALUES (462, 273, '2018-04-07 16:26:07', 1);
INSERT INTO `nm_login` VALUES (463, 273, '2018-04-07 16:26:42', 1);
INSERT INTO `nm_login` VALUES (464, 273, '2018-04-07 16:28:21', 1);
INSERT INTO `nm_login` VALUES (465, 273, '2018-04-07 16:30:29', 1);
INSERT INTO `nm_login` VALUES (466, 273, '2018-04-07 16:37:55', 1);
INSERT INTO `nm_login` VALUES (467, 273, '2018-04-07 16:38:30', 1);
INSERT INTO `nm_login` VALUES (468, 273, '2018-04-07 16:39:53', 1);
INSERT INTO `nm_login` VALUES (469, 273, '2018-04-07 17:35:11', 1);
INSERT INTO `nm_login` VALUES (470, 273, '2018-04-07 18:10:28', 1);
INSERT INTO `nm_login` VALUES (471, 273, '2018-04-07 18:15:06', 1);
INSERT INTO `nm_login` VALUES (472, 275, '2018-04-09 12:20:32', 1);
INSERT INTO `nm_login` VALUES (473, 201, '2018-04-09 13:59:12', 1);
INSERT INTO `nm_login` VALUES (474, 273, '2018-04-09 14:06:37', 1);
INSERT INTO `nm_login` VALUES (475, 276, '2018-04-09 15:13:54', 1);
INSERT INTO `nm_login` VALUES (476, 275, '2018-04-09 15:35:51', 1);
INSERT INTO `nm_login` VALUES (477, 277, '2018-04-09 16:02:36', 1);
INSERT INTO `nm_login` VALUES (478, 278, '2018-04-09 16:03:37', 1);
INSERT INTO `nm_login` VALUES (479, 279, '2018-04-09 16:04:54', 1);
INSERT INTO `nm_login` VALUES (480, 280, '2018-04-09 16:11:01', 1);
INSERT INTO `nm_login` VALUES (481, 281, '2018-04-09 16:13:48', 1);
INSERT INTO `nm_login` VALUES (482, 282, '2018-04-09 16:14:55', 1);
INSERT INTO `nm_login` VALUES (483, 283, '2018-04-09 16:19:34', 1);
INSERT INTO `nm_login` VALUES (484, 284, '2018-04-09 16:22:34', 1);
INSERT INTO `nm_login` VALUES (485, 283, '2018-04-09 17:38:50', 1);
INSERT INTO `nm_login` VALUES (486, 283, '2018-04-09 17:44:10', 1);
INSERT INTO `nm_login` VALUES (487, 283, '2018-04-09 17:44:24', 1);
INSERT INTO `nm_login` VALUES (488, 275, '2018-04-09 17:45:53', 1);
INSERT INTO `nm_login` VALUES (489, 283, '2018-04-09 18:06:07', 1);
INSERT INTO `nm_login` VALUES (490, 283, '2018-04-09 18:07:15', 1);
INSERT INTO `nm_login` VALUES (491, 285, '2018-04-09 18:08:18', 1);
INSERT INTO `nm_login` VALUES (492, 201, '2018-04-09 18:32:17', 1);
INSERT INTO `nm_login` VALUES (493, 201, '2018-04-09 18:35:30', 1);
INSERT INTO `nm_login` VALUES (494, 286, '2018-04-09 19:10:58', 1);
INSERT INTO `nm_login` VALUES (495, 286, '2018-04-09 19:25:16', 1);
INSERT INTO `nm_login` VALUES (496, 201, '2018-04-09 20:45:39', 1);
INSERT INTO `nm_login` VALUES (497, 273, '2018-04-09 21:00:29', 1);
INSERT INTO `nm_login` VALUES (498, 201, '2018-04-09 21:10:41', 1);
INSERT INTO `nm_login` VALUES (499, 273, '2018-04-09 21:48:08', 1);
INSERT INTO `nm_login` VALUES (500, 201, '2018-04-10 11:49:37', 1);
INSERT INTO `nm_login` VALUES (501, 201, '2018-04-10 12:11:16', 1);
INSERT INTO `nm_login` VALUES (502, 273, '2018-04-10 13:05:15', 1);
INSERT INTO `nm_login` VALUES (503, 273, '2018-04-10 13:39:57', 1);
INSERT INTO `nm_login` VALUES (504, 201, '2018-04-10 13:43:53', 1);
INSERT INTO `nm_login` VALUES (505, 201, '2018-04-10 15:59:43', 1);
INSERT INTO `nm_login` VALUES (506, 201, '2018-04-10 16:06:19', 1);
INSERT INTO `nm_login` VALUES (507, 273, '2018-04-10 17:37:18', 1);
INSERT INTO `nm_login` VALUES (508, 275, '2018-04-10 17:48:31', 1);
INSERT INTO `nm_login` VALUES (509, 275, '2018-04-10 17:53:01', 1);
INSERT INTO `nm_login` VALUES (510, 275, '2018-04-10 18:19:05', 1);
INSERT INTO `nm_login` VALUES (511, 275, '2018-04-10 18:19:56', 1);
INSERT INTO `nm_login` VALUES (512, 275, '2018-04-10 18:20:55', 1);
INSERT INTO `nm_login` VALUES (513, 275, '2018-04-10 18:52:05', 1);
INSERT INTO `nm_login` VALUES (514, 273, '2018-04-11 12:24:15', 1);
INSERT INTO `nm_login` VALUES (515, 201, '2018-04-11 12:38:39', 1);
INSERT INTO `nm_login` VALUES (516, 273, '2018-04-11 12:40:17', 1);
INSERT INTO `nm_login` VALUES (517, 201, '2018-04-11 12:53:26', 1);
INSERT INTO `nm_login` VALUES (518, 201, '2018-04-11 12:59:44', 1);
INSERT INTO `nm_login` VALUES (519, 201, '2018-04-11 13:14:54', 1);
INSERT INTO `nm_login` VALUES (520, 273, '2018-04-11 13:18:15', 1);
INSERT INTO `nm_login` VALUES (521, 273, '2018-04-11 13:21:50', 1);
INSERT INTO `nm_login` VALUES (522, 273, '2018-04-11 14:08:12', 1);
INSERT INTO `nm_login` VALUES (523, 201, '2018-04-11 14:26:20', 1);
INSERT INTO `nm_login` VALUES (524, 235, '2018-04-11 15:19:00', 1);
INSERT INTO `nm_login` VALUES (525, 273, '2018-04-11 16:05:08', 1);
INSERT INTO `nm_login` VALUES (526, 273, '2018-04-11 17:14:17', 1);
INSERT INTO `nm_login` VALUES (527, 220, '2018-04-11 18:02:39', 1);
INSERT INTO `nm_login` VALUES (528, 220, '2018-04-11 18:36:42', 1);
INSERT INTO `nm_login` VALUES (529, 201, '2018-04-11 19:19:21', 1);
INSERT INTO `nm_login` VALUES (530, 201, '2018-04-11 19:26:11', 1);
INSERT INTO `nm_login` VALUES (531, 220, '2018-04-11 21:42:04', 1);
INSERT INTO `nm_login` VALUES (532, 220, '2018-04-11 21:45:33', 1);
INSERT INTO `nm_login` VALUES (533, 201, '2018-04-12 12:04:30', 1);
INSERT INTO `nm_login` VALUES (534, 201, '2018-04-12 12:05:17', 1);
INSERT INTO `nm_login` VALUES (535, 201, '2018-04-12 12:24:06', 1);
INSERT INTO `nm_login` VALUES (536, 201, '2018-04-12 12:27:00', 1);
INSERT INTO `nm_login` VALUES (537, 201, '2018-04-12 12:28:47', 1);
INSERT INTO `nm_login` VALUES (538, 273, '2018-04-12 12:38:47', 1);
INSERT INTO `nm_login` VALUES (539, 273, '2018-04-12 12:46:50', 1);
INSERT INTO `nm_login` VALUES (540, 273, '2018-04-12 12:54:19', 1);
INSERT INTO `nm_login` VALUES (541, 201, '2018-04-12 13:41:03', 1);
INSERT INTO `nm_login` VALUES (542, 201, '2018-04-12 13:52:17', 1);
INSERT INTO `nm_login` VALUES (543, 201, '2018-04-12 14:07:46', 1);
INSERT INTO `nm_login` VALUES (544, 213, '2018-04-12 15:43:58', 1);
INSERT INTO `nm_login` VALUES (545, 201, '2018-04-12 16:09:39', 1);
INSERT INTO `nm_login` VALUES (546, 201, '2018-04-12 16:20:50', 1);
INSERT INTO `nm_login` VALUES (547, 201, '2018-04-12 18:15:34', 1);
INSERT INTO `nm_login` VALUES (548, 220, '2018-04-12 19:55:39', 1);
INSERT INTO `nm_login` VALUES (549, 201, '2018-04-12 20:00:00', 1);
INSERT INTO `nm_login` VALUES (550, 220, '2018-04-12 20:46:49', 1);
INSERT INTO `nm_login` VALUES (551, 220, '2018-04-12 21:01:08', 1);
INSERT INTO `nm_login` VALUES (552, 220, '2018-04-12 21:23:02', 1);
INSERT INTO `nm_login` VALUES (553, 220, '2018-04-12 21:24:07', 1);
INSERT INTO `nm_login` VALUES (554, 275, '2018-04-12 21:26:08', 1);
INSERT INTO `nm_login` VALUES (555, 220, '2018-04-12 21:39:07', 1);
INSERT INTO `nm_login` VALUES (556, 289, '2018-04-12 22:04:14', 1);
INSERT INTO `nm_login` VALUES (557, 220, '2018-04-12 22:18:44', 1);
INSERT INTO `nm_login` VALUES (558, 201, '2018-04-13 12:21:12', 1);
INSERT INTO `nm_login` VALUES (559, 201, '2018-04-13 12:29:04', 1);
INSERT INTO `nm_login` VALUES (560, 275, '2018-04-13 12:29:05', 1);
INSERT INTO `nm_login` VALUES (561, 201, '2018-04-13 12:36:50', 1);
INSERT INTO `nm_login` VALUES (562, 290, '2018-04-13 12:37:26', 1);
INSERT INTO `nm_login` VALUES (563, 220, '2018-04-13 12:38:26', 1);
INSERT INTO `nm_login` VALUES (564, 273, '2018-04-13 12:46:26', 1);
INSERT INTO `nm_login` VALUES (565, 273, '2018-04-13 12:46:38', 1);
INSERT INTO `nm_login` VALUES (566, 275, '2018-04-13 12:51:23', 1);
INSERT INTO `nm_login` VALUES (567, 201, '2018-04-13 12:52:37', 1);
INSERT INTO `nm_login` VALUES (568, 273, '2018-04-13 12:55:02', 1);
INSERT INTO `nm_login` VALUES (569, 273, '2018-04-13 13:16:51', 1);
INSERT INTO `nm_login` VALUES (570, 273, '2018-04-13 13:58:23', 1);
INSERT INTO `nm_login` VALUES (571, 201, '2018-04-13 15:04:46', 1);
INSERT INTO `nm_login` VALUES (572, 220, '2018-04-13 15:05:25', 1);
INSERT INTO `nm_login` VALUES (573, 201, '2018-04-13 15:42:34', 1);
INSERT INTO `nm_login` VALUES (574, 201, '2018-04-13 15:49:36', 1);
INSERT INTO `nm_login` VALUES (575, 273, '2018-04-13 16:22:10', 1);
INSERT INTO `nm_login` VALUES (576, 273, '2018-04-13 16:23:19', 1);
INSERT INTO `nm_login` VALUES (577, 273, '2018-04-13 16:24:19', 1);
INSERT INTO `nm_login` VALUES (578, 273, '2018-04-13 16:26:42', 1);
INSERT INTO `nm_login` VALUES (579, 273, '2018-04-13 16:30:44', 1);
INSERT INTO `nm_login` VALUES (580, 273, '2018-04-13 16:32:01', 1);
INSERT INTO `nm_login` VALUES (581, 273, '2018-04-13 16:32:24', 1);
INSERT INTO `nm_login` VALUES (582, 273, '2018-04-13 16:33:38', 1);
INSERT INTO `nm_login` VALUES (583, 273, '2018-04-13 16:34:14', 1);
INSERT INTO `nm_login` VALUES (584, 273, '2018-04-13 16:35:06', 1);
INSERT INTO `nm_login` VALUES (585, 273, '2018-04-13 16:36:15', 1);
INSERT INTO `nm_login` VALUES (586, 273, '2018-04-13 16:37:16', 1);
INSERT INTO `nm_login` VALUES (587, 273, '2018-04-13 16:37:51', 1);
INSERT INTO `nm_login` VALUES (588, 201, '2018-04-13 17:24:55', 1);
INSERT INTO `nm_login` VALUES (589, 273, '2018-04-13 17:25:13', 1);
INSERT INTO `nm_login` VALUES (590, 273, '2018-04-13 17:34:13', 1);
INSERT INTO `nm_login` VALUES (591, 273, '2018-04-13 17:34:43', 1);
INSERT INTO `nm_login` VALUES (592, 273, '2018-04-13 17:36:03', 1);
INSERT INTO `nm_login` VALUES (593, 273, '2018-04-13 17:37:07', 1);
INSERT INTO `nm_login` VALUES (594, 273, '2018-04-13 17:38:50', 1);
INSERT INTO `nm_login` VALUES (595, 273, '2018-04-13 17:49:47', 1);
INSERT INTO `nm_login` VALUES (596, 273, '2018-04-13 17:50:13', 1);
INSERT INTO `nm_login` VALUES (597, 273, '2018-04-13 17:51:03', 1);
INSERT INTO `nm_login` VALUES (598, 273, '2018-04-13 18:30:39', 1);
INSERT INTO `nm_login` VALUES (599, 273, '2018-04-13 18:39:55', 1);
INSERT INTO `nm_login` VALUES (600, 273, '2018-04-13 18:46:23', 1);
INSERT INTO `nm_login` VALUES (601, 201, '2018-04-13 18:46:29', 1);
INSERT INTO `nm_login` VALUES (602, 201, '2018-04-13 18:48:20', 1);
INSERT INTO `nm_login` VALUES (603, 250, '2018-04-13 18:50:41', 1);
INSERT INTO `nm_login` VALUES (604, 201, '2018-04-13 19:30:49', 1);
INSERT INTO `nm_login` VALUES (605, 273, '2018-04-13 19:31:56', 1);
INSERT INTO `nm_login` VALUES (606, 273, '2018-04-13 19:37:59', 1);
INSERT INTO `nm_login` VALUES (607, 273, '2018-04-13 19:41:41', 1);
INSERT INTO `nm_login` VALUES (608, 250, '2018-04-13 20:13:31', 1);
INSERT INTO `nm_login` VALUES (609, 201, '2018-04-13 20:14:19', 1);
INSERT INTO `nm_login` VALUES (610, 201, '2018-04-13 20:15:40', 1);
INSERT INTO `nm_login` VALUES (611, 201, '2018-04-13 20:20:31', 1);
INSERT INTO `nm_login` VALUES (612, 220, '2018-04-13 21:39:18', 1);
INSERT INTO `nm_login` VALUES (613, 220, '2018-04-16 12:06:19', 1);
INSERT INTO `nm_login` VALUES (614, 291, '2018-04-16 12:14:18', 1);
INSERT INTO `nm_login` VALUES (615, 201, '2018-04-16 12:18:22', 1);
INSERT INTO `nm_login` VALUES (616, 201, '2018-04-16 12:37:33', 1);
INSERT INTO `nm_login` VALUES (617, 273, '2018-04-16 13:07:19', 1);
INSERT INTO `nm_login` VALUES (618, 201, '2018-04-16 13:52:01', 1);
INSERT INTO `nm_login` VALUES (619, 220, '2018-04-16 13:57:52', 1);
INSERT INTO `nm_login` VALUES (620, 201, '2018-04-16 14:14:12', 1);
INSERT INTO `nm_login` VALUES (621, 201, '2018-04-16 15:51:30', 1);
INSERT INTO `nm_login` VALUES (622, 273, '2018-04-17 15:02:00', 1);
INSERT INTO `nm_login` VALUES (623, 201, '2018-04-17 18:09:51', 1);
INSERT INTO `nm_login` VALUES (624, 220, '2018-04-20 18:54:10', 1);
INSERT INTO `nm_login` VALUES (625, 273, '2018-04-21 15:46:53', 1);
INSERT INTO `nm_login` VALUES (626, 220, '2018-04-21 15:53:57', 1);
INSERT INTO `nm_login` VALUES (627, 250, '2018-04-24 12:59:35', 1);
INSERT INTO `nm_login` VALUES (628, 250, '2018-04-25 13:13:57', 1);
INSERT INTO `nm_login` VALUES (629, 250, '2018-04-27 15:43:29', 1);
INSERT INTO `nm_login` VALUES (630, 213, '2018-05-02 14:54:39', 1);
INSERT INTO `nm_login` VALUES (631, 213, '2018-05-02 14:56:26', 1);
INSERT INTO `nm_login` VALUES (632, 220, '2018-05-02 22:28:31', 1);
INSERT INTO `nm_login` VALUES (633, 220, '2018-05-02 22:32:17', 1);
INSERT INTO `nm_login` VALUES (634, 201, '2018-05-03 19:51:03', 1);

-- ----------------------------
-- Table structure for nm_maincategory
-- ----------------------------
DROP TABLE IF EXISTS `nm_maincategory`;
CREATE TABLE `nm_maincategory`  (
  `mc_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mc_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mc_name_fr` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mc_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mc_img` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mc_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`mc_id`) USING BTREE,
  INDEX `mc_status`(`mc_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_maincategory
-- ----------------------------
INSERT INTO `nm_maincategory` VALUES (2, 'MEN', 'HOMMES', '1,1,1', 'Top_category_151064392814413.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (3, 'WOMEN', 'FEMMES', '1,1,1', 'Top_category_15106439877938.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (4, 'BABY & KIDS', 'BABY & KIDS', '1,1,1', 'Top_category_1513600877_200-200.png', 1);
INSERT INTO `nm_maincategory` VALUES (5, 'HOME & KITCHEN', 'ACCUEIL & CUISINE', '1,1,1', 'dead-shopping-cartfVTnMIGJ.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (6, 'ELECTRONICS', 'ÉLECTRONIQUE', '1,1,1', 'shopping cart 2ltqacj52.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (7, 'SPORTS', 'DES SPORTS', '1,1,1', 'profilexyUXsTa9.png', 1);
INSERT INTO `nm_maincategory` VALUES (8, 'AUTO MOBILES', 'AUTO MOBILES', '1,1,1', 'sedan-512xMcVlTeV.png', 1);
INSERT INTO `nm_maincategory` VALUES (9, 'BOOKS', 'LIVRES', '1,1,1', 'books-icon-512q6gJrb9I.png', 1);
INSERT INTO `nm_maincategory` VALUES (12, 'yuyuyuyuyuyuyuyuyuyuyuyuyuy', '', '1,1,1', 'Top_category_1513766717_200x200_10.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (13, 'tytyt', '', '1,1,1', 'Top_category_1513766812_200x200_11.png', 0);
INSERT INTO `nm_maincategory` VALUES (14, 'dsds', '', '1,1,1', 'Top_category_1513767909.png', 1);
INSERT INTO `nm_maincategory` VALUES (17, 'Fashion', '', '1,1,1', 'Top_category_1515132272.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (18, 'Agri', '', '1,1,1', 'Top_category_1517816866.jpg', 1);
INSERT INTO `nm_maincategory` VALUES (19, 'Stationaries', '', '1,1,1', 'Top_category_1521193352.png', 1);
INSERT INTO `nm_maincategory` VALUES (20, 'category1', '', '1,1,1', 'Top_category_1521542565.jpg', 1);

-- ----------------------------
-- Table structure for nm_merchant
-- ----------------------------
DROP TABLE IF EXISTS `nm_merchant`;
CREATE TABLE `nm_merchant`  (
  `mer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `addedby` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0=>admin',
  `mer_fname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_lname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_password` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_address1` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_address2` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_ci_id` int(10) UNSIGNED NOT NULL COMMENT 'city id',
  `mer_co_id` smallint(5) UNSIGNED NOT NULL COMMENT 'country id',
  `mer_payment` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_payu_key` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_payu_salt` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mer_commission` tinyint(4) NOT NULL,
  `created_date` date NOT NULL,
  `mer_staus` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-unblock,0-block',
  `mer_pro_status` int(11) NOT NULL COMMENT '1=>unblock, 0=>block',
  `mer_country_status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'A',
  `mer_logintype` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1' COMMENT '1=>Admin user, 2=> Website User, 3=> Facebook User',
  PRIMARY KEY (`mer_id`) USING BTREE,
  INDEX `mer_pro_status`(`mer_pro_status`) USING BTREE,
  INDEX `mer_staus`(`mer_staus`) USING BTREE,
  INDEX `mer_co_id`(`mer_co_id`) USING BTREE,
  INDEX `mer_ci_id`(`mer_ci_id`) USING BTREE,
  INDEX `mer_logintype`(`mer_logintype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_merchant
-- ----------------------------
INSERT INTO `nm_merchant` VALUES (41, '0', 'Asuganya', 'A', '1234567', 'suganya.t@pofitec.com', '1234567890', 'test', 'test', 1, 1, 'vinodbabu.89-buyer-1@gmail.com', 'gtKFFx', 'eCwWELxi', 5, '2017-05-16', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (58, '0', 'Malar', 'host', '123456', 'malarvizhi@pofitec.com', '8883337733', '5th street', 'ram nagar', 2, 1, 'malarvizhi@pofitec.com', '', '', 21, '2017-09-29', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (59, '', 'Preetha', 'pofi', '123456', 'venugopal1@pofitec.com', '8883857742', 'address1', 'address2', 4, 1, 'malarvizhi@pofitec.com', '', '', 10, '2017-10-04', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (60, '0', 'Ragul', 'gandhi', '123456', 'ragulgandhii@pofitec.com', '9944349002', 'Coimbatore', 'Coimbatore', 1, 1, '454545454545', '', '', 10, '2017-11-09', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (62, '', 'Venu', 'gfh', 'HTeg3UuA', 'venugopal@pofitec.com', '3445', 'ghgf', 'gfhfh', 1, 1, '', '', '', 1, '2017-12-12', 1, 1, 'A', '2');
INSERT INTO `nm_merchant` VALUES (63, '0', 'asdas', 'asd', '4kios879', 'sasdads@h.com', '3456765434', 'jhkjhkk', 'jhkj', 1, 1, '', '', '', 4, '2017-12-18', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (64, '0', 'uytyuyu', 'tytytyyu', 'NqWKuBqa', 'ere@gmail.com', '8012122975', 'df', 'dfdf', 1, 1, '', '', '', 2, '2017-12-21', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (65, '0', 'fdgf', 'fgfgf', '2Xqjx1CR', 'fgff@pofitec.com', '8012122975', 'nbn', 'nbnb', 4, 1, '', '', '', 33, '2017-12-21', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (66, '0', 'ytyt', 'ttyt', 'mpWQrI1n', 'ereerere@gmail.com', '9874569856', 'nbn', 'nbnb', 4, 1, '', '', '', 4, '2017-12-21', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (67, '0', 'venugopal', 'cena', 'qNacYpO0', 'gdvenr@gmail.com', '3456765434', 'jhkjhkk', 'jhkj', 1, 1, 'ajo@gmail.com', '', '', 10, '2017-12-21', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (68, '', 'ragul', 'gandhi', '123456', 'ragulgandhi5@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, 'ragulgandhi@pofitec.com', '', '', 4, '2018-01-05', 1, 1, 'A', '2');
INSERT INTO `nm_merchant` VALUES (69, '0', 'dsfdsfs2432432', 'dsfds32432432', 'OMMkhcsZ', 'vinodbabu@pofitec.com', '9876543210', 'test ship addr1', 'test ship addr2', 14, 1, ' d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskd', '', '', 127, '2018-01-06', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (70, '0', 'sdfds', 'fdsfds', 'qyygOuyB', 'vinod@gmail.com', '9876543210', 'test address1', 'test address2', 1, 1, 'dsfds', '', '', 0, '2018-01-06', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (71, '0', 'ghfghf90 ', 'vcbcv', '5p8QdM7Z', 'cvb@g.com', '1234567890', 'ghjgh', 'hgjhg', 1, 1, 'gfhfh', '', '', 34, '2018-01-08', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (72, '0', 'rtertrtrt_-', 'fgdhgfhg', 'ZDdJHUKO', 'venusssgopal@pofitec.com', '3456765434', 'jhkjhkk', 'jhkj', 1, 1, 'venug111opal@pofitec.com', '', '', 12, '2018-01-08', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (73, '0', 'sdffdgdfgdfgdfgdfgdfgdfgdfgdfgdg', 'sdfsdf_dfgdfgdfgdfgdfgdfgdfg', 'Zag0MLOK', 'venugopaqql@pofitec.com', '3456765434', '155, kalai nagae, kalmadu sillai, coimbatore dist, vadavlli post, cbe', '155, kalai nagae, kalmadu sillai, coimbatore dist, vadavlli post, cbe', 1, 1, 'venugopal@pofitec.com', '', '', 9, '2018-01-08', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (74, '0', 'gdfgdfgdfgdfgd fdg675_fdgfdgdfg_-- erter--------', 'gfh', 'h4pepCBQ', 'gg@h.com', '3456765434', 'jhkjhkk', 'jhkj', 1, 1, '', '', '', 45, '2018-01-08', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (75, '0', 'fdg_------__', 'gfh', 'M0eiLrmK', 'micheal@gmail.com', '3455343565464564', 'jhkjhkk', 'jhkj', 1, 1, 'venugopal@pofitec.com', '', '', 99, '2018-01-08', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (76, '0', 'hfgh', 'gfhdgf', 'uEfXzTPF', 'ragulaero@gmail.com', '9994446464', 'vcbvcb', 'xcvbxvcb', 1, 1, 'xcvzzxcv', '', '', 1, '2018-01-09', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (77, '0', 'bala', 'R', '123456', 'bala@gmail.com', '9874569856', 'gandhipuram', 'Bus stand', 1, 1, 'bala@gmail.com', '', '', 99, '2018-01-09', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (78, '0', 'john', 'R', 'd2qAFTaW', 'john@gmail.com', '9876543210', 'peelamedu', 'covai', 6, 1, 'johny@gmail.com', '', '', 99, '2018-01-09', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (79, '0', 'balaji', 'g', 'j3St6M6S', 'muru@gmail.com', '986584562', 'ukkadam', 'covai', 1, 1, 'bala@gmail.com', '', '', 2, '2018-01-09', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (80, '0', 'peter', 'm', 'HohEitBK', 'gary@gmail.com', '9874569856', 'gandhipuram', 'Bus stand', 17, 1, 'bala@gmail.com', '', '', 2, '2018-01-09', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (81, '0', 'sathya', 'seelan', 'FPxgxmbU', 'sathyaseelan1@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 17, 1, 'ragulaero@gmail.com', '', '', 2, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (82, '0', 'ragul', 'gandhi', 'cxirScQs', 'ragulgandhi1@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, 'ragulaero@gmail.com', '', '', 5, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (83, '0', 'ragul', 'gandhi', 'QixqweqJ', 'ragulgandhi9@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, '', '', '', 5, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (84, '0', 'ragul', 'gandhi', 'Wtm7ASj7', 'raguli@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, '', '', '', 4, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (85, '0', 'ragul', 'gandhi', 'MTtMDf38', 'raghi@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, '', '', '', 4, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (86, '0', 'ragul', 'gandhi', 'jo9AzyYR', 'ragulgdsfhfdhgandhi@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, '', '', '', 4, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (87, '0', 'ragul', 'gf', '0JDtF4ry', 'ragulganuytuytruytudhi@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, 'ragulaero@gmail.com', '', '', 3, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (88, '0', 'ragul', 'gandhi', 'j2GSEMI5', 'ragulgafasdwrweqweandhi@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, '', '', '', 3, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (89, '0', 'ragul', 'gandhi', '123456', 'ragulgandhi@pofitec.com', '9944349002', 'coimbatore', 'coimbatore', 1, 1, 'ragulaero@gmail.com', '', '', 4, '2018-01-13', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (90, '0', 'bala', 'R', '123456', 'balamurugan@pofitec.com', '9874569856', 'Ram nagar', 'ramnagar', 12, 14, 'bala@gmail.com', '', '', 1, '2018-01-25', 1, 0, 'A', '1');
INSERT INTO `nm_merchant` VALUES (91, '', 'suganya', 't', 'Or88laOz', 'suganya1.t@pofitec.com', '9856322356', 'sfsdf', 'df', 1, 1, 'suganya.t@pofitec.com', '', '', 0, '2018-02-13', 0, 1, 'A', '2');
INSERT INTO `nm_merchant` VALUES (92, '0', 'test', 'e', 'UlIh1bK7', 'dasfd@gmail.com', '453453345', 'fgdsgfds', 'sdfsdf', 1, 1, '', '', '', 1, '2018-02-15', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (93, '', 'Alec', 'Cross', 'cghU9ukb', 'vifomukig@hotmail.com', '68', 'Consequatur et quia laboriosam nihil quis distinctio Mollit voluptate placeat id cupiditate quaerat', 'Consectetur laboris magnam explicabo Et magnam at quia anim dolor hic in sunt qui quo et', 12, 14, 'Consequatur eum ipsam minima maiores dolore minus quaerat ut placeat', 'Ratione mollit ipsa non minus quasi aut velit adipisicing proident alias voluptas eiusmod id rerum est eum lorem', 'Sint eu dolorum id sint consequatur Ipsum eum qui cupiditate sit quis quia velit ab consectetur vel adipisci fuga', 0, '2018-03-01', 0, 1, 'A', '2');
INSERT INTO `nm_merchant` VALUES (94, '0', 'mer_check_cal', 'Beard', '9Euapzs7', 'mer_check_cal@yahoo.com', '558764060460', 'Iste dolore nesciunt ab magna pariatur Culpa et unde cupidatat enim maxime est mollit adipisci rerum placeat est fugiat nostrum', 'Laudantium nulla beatae dolore et', 24, 7, 'Numquam sint asperiores dolorem consectetur impedit temporibus', 'Nihil quia itaque eligendi in id quia', 'Neque voluptatem quis pariatur Quia aliquam aute aut commodi laboriosam sint aut facere commodi voluptates dolor ut earum possimus', 10, '2018-03-07', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (95, '0', 'calc3_7_2018', 'Sanchez', '123456', 'calc@hotmail.com', '142986102371', 'Eu id molestiae a dolores tempore voluptatum rerum qui maxime non elit a beatae officia cupiditate sed aliquip', 'Illum aut voluptas dolor quasi veniam vero aut mollitia in quam officiis ut adipisci est', 1, 1, 'venugopal-buyer@pofitec.com', '', '', 7, '2018-03-07', 1, 1, 'A', '1');
INSERT INTO `nm_merchant` VALUES (96, '', 'vishnu', 'vr', '62IOno6l', 'vishnu@pofitec.com', '8989898989', 'fdsgdsfg', 'dfsgdsg', 1, 1, 'vishnu@pofitec.com', 'gdsfgdsgdsfg', 'gsdfgsdfg', 1, '2018-04-12', 0, 1, 'A', '2');
INSERT INTO `nm_merchant` VALUES (97, '', 'Galvin', 'Stuart', 'HLaw7gD6', 'vicuq@mailinator.net', '1234567890', 'Dignissimos eos est magnam sit magnam explicabo Porro vel assumenda voluptatem qui rerum velit sit rem sit elit aliquam maiores', 'Excepturi vero vero architecto sed qui mollitia aliquam dolorum nemo', 4, 1, 'Aliquip voluptas voluptatem facilis irure cumque et ad labore ut qui est aperiam doloribus eiusmod e', 'Eos et perferendis doloribus tempora quae reiciendis voluptatem eum est voluptates eiusmod minima neque voluptatem', 'Perferendis doloremque ducimus nostrud amet ut aliqua Do blanditiis non reprehenderit et irure dignissimos sint atque', 1, '2018-04-16', 0, 1, 'A', '2');

-- ----------------------------
-- Table structure for nm_merchant_overallorders
-- ----------------------------
DROP TABLE IF EXISTS `nm_merchant_overallorders`;
CREATE TABLE `nm_merchant_overallorders`  (
  `overOrd_id` int(11) NOT NULL AUTO_INCREMENT,
  `over_mer_id` int(11) NOT NULL,
  `over_tot_ord_amt` decimal(10, 2) NOT NULL,
  `over_tot_offline_amt` decimal(10, 2) NOT NULL,
  `over_tot_online_amt` decimal(10, 2) NOT NULL,
  `over_tot_coupon_amt` decimal(10, 2) NOT NULL,
  `over_tot_wallet_amt` decimal(10, 2) NOT NULL,
  `commissionAmt` decimal(10, 2) NOT NULL,
  `merchantAmt` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`overOrd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_merchant_overallorders
-- ----------------------------
INSERT INTO `nm_merchant_overallorders` VALUES (6, 41, 955001.81, 846845.97, 109024.44, 0.00, 21875.60, 48514.51, 135509.14);
INSERT INTO `nm_merchant_overallorders` VALUES (7, 60, 164967.08, 144173.08, 20794.00, 0.00, 303.00, 15352.29, 27129.60);
INSERT INTO `nm_merchant_overallorders` VALUES (8, 67, 183313.00, 162774.00, 20539.00, 0.00, 18.00, 16277.40, 18485.10);
INSERT INTO `nm_merchant_overallorders` VALUES (9, 58, 63577.62, 29795.47, 33782.15, 232.00, 9951.96, 431.62, 26687.89);
INSERT INTO `nm_merchant_overallorders` VALUES (10, 68, 253371.00, 204898.16, 48472.84, 0.00, 0.00, 1903.08, 46634.94);
INSERT INTO `nm_merchant_overallorders` VALUES (11, 62, 99999999.99, 99999999.99, 7756.50, 0.00, 0.00, 9953988.78, 7678.94);
INSERT INTO `nm_merchant_overallorders` VALUES (12, 77, 16520.00, 12390.00, 4130.00, 0.00, 0.00, 0.00, 41.30);
INSERT INTO `nm_merchant_overallorders` VALUES (13, 90, 16480.00, 15730.00, 750.00, 20.00, 0.00, 157.30, 1762.50);
INSERT INTO `nm_merchant_overallorders` VALUES (14, 95, 4104.12, 2177.12, 1927.00, 100.00, 330.04, 145.40, 1822.11);
INSERT INTO `nm_merchant_overallorders` VALUES (15, 59, 40.00, 30.00, 10.00, 2.00, 0.00, 3.00, 8.00);
INSERT INTO `nm_merchant_overallorders` VALUES (16, 89, 150.00, 150.00, 0.00, 0.00, 0.00, 6.00, 0.00);

-- ----------------------------
-- Table structure for nm_modulesettings
-- ----------------------------
DROP TABLE IF EXISTS `nm_modulesettings`;
CREATE TABLE `nm_modulesettings`  (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_dealmodule` int(11) NOT NULL,
  `ms_productmodule` int(11) NOT NULL,
  `ms_auctionmodule` int(11) NOT NULL,
  `ms_blogmodule` int(11) NOT NULL,
  `ms_nearmemapmodule` int(11) NOT NULL,
  `ms_storelistmodule` int(11) NOT NULL,
  `ms_pastdealmodule` int(11) NOT NULL,
  `ms_faqmodule` int(11) NOT NULL,
  `ms_cod` int(11) NOT NULL,
  `ms_paypal` int(11) NOT NULL,
  `ms_creditcard` int(11) NOT NULL,
  `ms_googlecheckout` int(11) NOT NULL,
  `ms_shipping` int(11) NOT NULL COMMENT '1=>Free shipping, 2=> Flat shipping, 3=> Product per shippin, 4=> Per Item shipping',
  `ms_newsletter_template` int(11) NOT NULL COMMENT '1=> Temp 1, 2=>Temp 2, 3=> Temp 3, 4=> Temp 4',
  `ms_citysettings` int(11) NOT NULL COMMENT '1=> With city, 0=> Without city',
  PRIMARY KEY (`ms_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_newsletter_subscribers
-- ----------------------------
DROP TABLE IF EXISTS `nm_newsletter_subscribers`;
CREATE TABLE `nm_newsletter_subscribers`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `post_dt` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nm_newsletter_subscribers
-- ----------------------------
INSERT INTO `nm_newsletter_subscribers` VALUES (37, 'suganya@pofitec.com', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (30, 'malarvizhi@pofitec.com', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (35, 'venugopal@pofitec.com', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (36, 'pgpreethu45@gmail.com', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (38, 'venugopal@pofgitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (39, 'venugcccopal@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (40, 'premalatha@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (41, 'suganssya.t@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (42, 'premalahhtha@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (43, 'venugopal@pjofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (44, 'venugopal@pofitjec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (45, 'venugopal@poffitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (46, 'ragulgandhi@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (47, 'ragulgandhi1@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (48, 'ragulgandhi@pofitec.com1', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (49, 'ragulgan5dhi@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (50, 'ragulasdfaero@gmail.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (51, 'ragulgsdfdsfandhi@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (52, 'ragulaedfsro@gmail.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (53, 'ragulgadsfsdfndhi@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (54, 'ragulgasdasandhi@pofitec.com', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `nm_newsletter_subscribers` VALUES (55, 'ragulgasdfdsfndhi@pofitec.com', 0, 1, '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for nm_order
-- ----------------------------
DROP TABLE IF EXISTS `nm_order`;
CREATE TABLE `nm_order`  (
  `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_cus_id` int(10) UNSIGNED NOT NULL,
  `order_pro_id` int(11) UNSIGNED NOT NULL,
  `order_prod_unitPrice` double NOT NULL DEFAULT 0,
  `order_type` tinyint(4) NOT NULL COMMENT '1-product,2-deals',
  `transaction_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_amt` decimal(15, 2) NOT NULL COMMENT '(unit price * quantity)',
  `order_tax` decimal(10, 2) NOT NULL COMMENT 'tax per unit (in %)',
  `order_taxAmt` decimal(10, 2) NOT NULL,
  `currency_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_ack` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_status` tinyint(4) NOT NULL COMMENT '1-sucess,2-complete,3-hold,4-failed',
  `delivery_status` int(11) NOT NULL DEFAULT 2 COMMENT '1->order_placed,2->order_packed,3->Dispatched,4->Delivered,5->cancel pending,6->cancelled,7->return pending ,8->returned,9->replace pending,10->replaced',
  `order_paytype` smallint(6) NOT NULL DEFAULT 1 COMMENT '1-paypal',
  `order_pro_color` int(11) NOT NULL,
  `order_pro_size` int(11) NOT NULL,
  `order_shipping_amt` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_shipping_add` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_merchant_id` int(11) NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_amount_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_total_amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wallet_amount` double NOT NULL,
  `mer_commission_amt` decimal(10, 2) NOT NULL,
  `mer_amt` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_cus_id`(`order_cus_id`, `order_pro_id`, `order_status`, `delivery_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_order
-- ----------------------------
INSERT INTO `nm_order` VALUES (28, 201, 36, 10, 1, 'iZII4IEh9TEBmTKaw', '', '', '', 1, 10.00, 5.00, 0.50, '', '', '', '2017-12-21 08:47:58', '', '', 1, 6, 2, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 16.47, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (29, 201, 35, 5, 1, 'iZII4IEh9TEBmTKaw', '', '', '', 1, 5.00, 4.00, 0.20, '', '', '', '2017-12-21 08:47:58', '', '', 1, 6, 2, 23, 14, '4', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 8.23, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (30, 201, 36, 10, 1, '9R416707CH5978206', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-2C207225HT7184238', 'Success', '2017-12-25 03:53:01', '', 'unverified', 1, 6, 1, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (31, 201, 36, 10, 1, '0RY18511MJ490792B', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-3RR22142310400222', 'Success', '2017-12-25 03:58:56', '', 'unverified', 1, 6, 1, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (32, 201, 36, 10, 1, '5HE291760N2586152', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-45A79903CB517980P', 'Success', '2017-12-25 04:01:22', '', 'unverified', 1, 8, 1, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (33, 201, 36, 10, 1, 'ORDER1519821906TVBEFg', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-05V368365K507540W', 'Success', '2017-12-25 04:02:25', '', 'unverified', 1, 8, 2, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (34, 201, 36, 10, 1, 'ORDER1519822739Y3pxxS', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-9VD38671RX5375824', 'Success', '2017-12-25 05:46:31', '', 'unverified', 1, 10, 2, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (35, 201, 36, 10, 1, '4EB761201X023850H', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-1VA86417VW5347932', 'Success', '2017-12-25 05:48:09', '', 'unverified', 1, 8, 1, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (36, 201, 36, 10, 1, '7HY02061W0863332R', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 10.00, 5.00, 0.50, 'INR', 'EC-2Y505800RP283200X', 'Success', '2017-12-25 06:06:58', '', 'unverified', 1, 10, 1, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (37, 201, 1, 1200, 2, '1GY19202KC5728326', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 1200.00, 5.00, 60.00, 'INR', 'EC-62U26285AG418543E', 'Success', '2017-12-25 07:14:37', '', 'unverified', 1, 6, 1, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 63.25, 1201.75);
INSERT INTO `nm_order` VALUES (38, 201, 1, 1200, 2, '1SE07703430416241', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 1200.00, 5.00, 60.00, 'INR', 'EC-69A64958W1946135J', 'Success', '2017-12-25 07:17:16', '', 'unverified', 1, 10, 1, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 63.25, 1201.75);
INSERT INTO `nm_order` VALUES (39, 201, 1, 1200, 2, '58X139085H000343K', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 1200.00, 5.00, 60.00, 'INR', 'EC-0KC88858BM037551W', 'Success', '2017-12-25 07:22:45', '', 'unverified', 1, 8, 1, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 63.25, 1201.75);
INSERT INTO `nm_order` VALUES (40, 201, 1, 1200, 2, '2NP83756FC070680U', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 1200.00, 5.00, 60.00, 'INR', 'EC-63543002A9314461U', 'Success', '2017-12-25 07:48:11', '', 'unverified', 1, 10, 1, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 63.25, 1201.75);
INSERT INTO `nm_order` VALUES (41, 201, 1, 1200, 2, '2F716716P51046008', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 1200.00, 5.00, 60.00, 'INR', 'EC-8N7978974F118031P', 'Success', '2017-12-26 13:01:01', '', 'unverified', 1, 8, 1, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com', 41, '0', '0', '0', '0', '0', 0, 63.25, 1201.75);
INSERT INTO `nm_order` VALUES (42, 201, 9, 100, 2, '4XK542811B041453X', 'suganya.t@pofitec.com', 'SN6X6BJGBPQYX', 'test', 1, 100.00, 0.00, 0.00, 'INR', 'EC-546252229G917673X', 'Success', '2017-12-29 09:37:59', '', 'verified', 1, 4, 1, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 5.00, 95.00);
INSERT INTO `nm_order` VALUES (43, 201, 9, 100, 2, '4XK542811B041453X', 'suganya.t@pofitec.com', 'SN6X6BJGBPQYX', 'test', 1, 100.00, 0.00, 0.00, 'INR', 'EC-546252229G917673X', 'Success', '2017-12-29 09:57:57', '', 'verified', 1, 4, 1, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 5.00, 95.00);
INSERT INTO `nm_order` VALUES (44, 214, 170, 5, 1, '3PY20343PJ9472408', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-8EP631545F9424223', 'Success', '2018-01-08 03:30:33', '', 'verified', 1, 1, 1, 20, 4, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state22,123456,4244114321312543543545435,vinodbabu@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (45, 214, 170, 5, 1, '9EK709210D1805016', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-4SP468172U3996217', 'Success', '2018-01-08 07:30:55', '', 'verified', 1, 5, 1, 20, 5, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state22,123456,4244114321312543543545435,vinodbabu@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (46, 207, 169, 305, 1, 'PAY-18X32451H0459092JKO7KFUI', 'suganya.t@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'testuset', 2, 610.00, 3.00, 18.30, 'INR', 'A21AAGTeB3HkEF5hsEbBkgWUnDJAv1', 'Success', '2018-01-08 08:18:12', '', 'verified', 1, 1, 1, 0, 0, '0', 'testuset,\"test addr1\",\"test addr2\",tamil nadu,123456,7200285584,suganya.t@pofitec.com', 68, '', '', '', '', '', 0, 0.00, 628.30);
INSERT INTO `nm_order` VALUES (47, 214, 173, 80, 1, '8Y116078LD8996354', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 80.00, 1.00, 0.80, 'INR', 'EC-5FM876263C044450G', 'Success', '2018-01-08 08:53:21', '', 'verified', 1, 1, 1, 0, 4, '1', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.82, 80.98);
INSERT INTO `nm_order` VALUES (48, 214, 172, 40, 1, '8Y116078LD8996354', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 40.00, 0.00, 0.00, 'INR', 'EC-5FM876263C044450G', 'Success', '2018-01-08 08:53:21', '', 'verified', 1, 1, 1, 11, 9, '10', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.50, 49.50);
INSERT INTO `nm_order` VALUES (49, 220, 170, 5, 1, '8BM34143MC985384A', 'venugopal-buyer-1@pofitec.com', 'H7JMX8Z6VUTQW', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-60078191FD7795847', 'Success', '2018-01-11 03:59:21', '', 'verified', 1, 1, 1, 20, 4, '5', 'venugopal,ghjh,ghj,hgjghj,7567,3456765434,venugopal@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (50, 212, 170, 5, 1, '7XV261868K389481E', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-71L456868F594263G', 'Success', '2018-01-11 09:03:54', '', 'verified', 1, 1, 1, 20, 4, '5', 'bala,gandhipuram,Bus stand,tn,640122,0123456789,balamurugan@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (51, 212, 27, 620, 2, '3UC24031A3721333C', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 620.00, 2.00, 12.40, 'INR', 'EC-8F680282XA954690X', 'Success', '2018-01-11 09:37:33', '', 'verified', 1, 1, 1, 0, 0, '0', 'bala,gandhipuram,Bus stand,tn,640122,9874569856,balamurugan@pofitec.com', 68, '0', '0', '0', '0', '0', 0, 0.00, 632.40);
INSERT INTO `nm_order` VALUES (52, 212, 27, 620, 2, '9V914517RB797302W', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 620.00, 2.00, 12.40, 'INR', 'EC-3X34709558818241K', 'Success', '2018-01-11 09:52:39', '', 'verified', 1, 4, 1, 0, 0, '0', 'bala,gandhipuram,Bus stand,tn,640122,0123456,balamurugan@pofitec.com', 68, '0', '0', '0', '0', '0', 0, 0.00, 632.40);
INSERT INTO `nm_order` VALUES (53, 201, 170, 5, 1, '1SG46085LT8632335', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-9VM28921WA121873B', 'Success', '2018-01-12 09:14:47', '', 'verified', 1, 1, 1, 20, 4, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (54, 201, 27, 620, 2, '1SG46085LT8632335', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 620.00, 2.00, 12.40, 'INR', 'EC-9VM28921WA121873B', 'Success', '2018-01-12 09:14:47', '', 'verified', 1, 6, 1, 0, 0, '0', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com', 68, '0', '0', '0', '0', '0', 0, 0.00, 632.40);
INSERT INTO `nm_order` VALUES (55, 201, 170, 5, 1, '8FR3459685178804M', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-3HW12919LV854203B', 'Success', '2018-01-13 13:21:56', '', 'verified', 1, 1, 1, 20, 5, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (56, 201, 160, 85001, 1, '4FM70563FJ6525317', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 85001.00, 5.00, 4250.05, 'INR', 'EC-77D73079490575105', 'Success', '2018-01-13 13:34:26', '', 'verified', 1, 5, 1, 0, 14, '40', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com', 41, '0', '0', '0', '0', '0', 17821, 4464.55, 84826.50);
INSERT INTO `nm_order` VALUES (57, 220, 27, 620, 2, '164717853P1072731', 'venugopal-buyer-1@pofitec.com', 'H7JMX8Z6VUTQW', 'test', 1, 620.00, 2.00, 12.40, 'INR', 'EC-2MA98261R2145282B', 'Success', '2018-01-16 13:20:59', '', 'verified', 1, 1, 1, 0, 0, '0', 'venugopal,dfgg,dfgdg,dfgff,545345,3456765434,venugopal@pofitec.com', 68, '0', '0', '0', '0', '0', 0, 25.30, 607.10);
INSERT INTO `nm_order` VALUES (58, 214, 174, 1, 1, '3NG03799FS3061112', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-6NL55788M4788554T', 'Success', '2018-01-16 14:40:00', '', 'verified', 1, 1, 1, 0, 4, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (59, 214, 170, 5, 1, '3NG03799FS3061112', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 2.00, 0.10, 'INR', 'EC-6NL55788M4788554T', 'Success', '2018-01-16 14:40:00', '', 'verified', 1, 1, 1, 15, 5, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com', 62, '0', '0', '0', '0', '0', 0, 0.10, 10.00);
INSERT INTO `nm_order` VALUES (60, 214, 174, 1, 1, '9T787111J2070714B', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-7X434775NP352445W', 'Success', '2018-01-16 03:47:51', '', 'verified', 1, 1, 1, 0, 8, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (61, 214, 35, 5, 1, '9T787111J2070714B', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 4.00, 0.20, 'INR', 'EC-7X434775NP352445W', 'Success', '2018-01-16 03:47:51', '', 'verified', 1, 1, 1, 23, 0, '4', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (62, 214, 168, 350, 1, '74V572964R970435M', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 350.00, 0.00, 0.00, 'INR', 'EC-0KM5721068744121P', 'Success', '2018-01-16 04:13:33', '', 'verified', 1, 1, 1, 21, 18, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 68, '0', '0', '0', '0', '0', 0, 14.00, 336.00);
INSERT INTO `nm_order` VALUES (63, 214, 35, 5, 1, '74V572964R970435M', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 4.00, 0.20, 'INR', 'EC-0KM5721068744121P', 'Success', '2018-01-16 04:13:33', '', 'verified', 1, 1, 1, 23, 0, '4', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (64, 214, 174, 1, 1, '', '', '', '', 1, 1.00, 0.00, 0.00, '', '', '', '2018-01-16 05:29:49', '', '', 3, 1, 1, 0, 12, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (65, 214, 35, 5, 1, '', '', '', '', 1, 5.00, 4.00, 0.20, '', '', '', '2018-01-16 05:29:49', '', '', 3, 1, 1, 23, 0, '4', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (66, 214, 174, 1, 1, '', '', '', '', 1, 1.00, 0.00, 0.00, '', '', '', '2018-01-16 05:29:49', '', '', 3, 1, 1, 0, 12, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (67, 214, 35, 5, 1, '', '', '', '', 1, 5.00, 4.00, 0.20, '', '', '', '2018-01-16 05:29:49', '', '', 3, 1, 1, 23, 0, '4', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (68, 214, 174, 1, 1, '', '', '', '', 1, 1.00, 0.00, 0.00, '', '', '', '2018-01-16 05:32:07', '', '', 3, 1, 1, 0, 12, '0', 'vinod bab,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (69, 214, 35, 5, 1, '', '', '', '', 1, 5.00, 4.00, 0.20, '', '', '', '2018-01-16 05:32:07', '', '', 3, 1, 1, 23, 0, '4', 'vinod bab,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (70, 214, 174, 1, 1, '3BR68107MB001423L', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-65X24976GU0878927', 'Success', '2018-01-16 05:32:07', '', 'verified', 1, 1, 1, 0, 12, '0', 'vinod bab,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (71, 214, 35, 5, 1, '3BR68107MB001423L', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 4.00, 0.20, 'INR', 'EC-65X24976GU0878927', 'Success', '2018-01-16 05:32:07', '', 'verified', 1, 1, 1, 23, 0, '4', 'vinod bab,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.46, 8.74);
INSERT INTO `nm_order` VALUES (72, 220, 177, 11200, 1, '5CY08665XH8540825', 'venugopal-buyer-1@pofitec.com', 'H7JMX8Z6VUTQW', 'test', 1, 11200.00, 2.00, 224.00, 'INR', 'EC-1H430429LE504493C', 'Success', '2018-01-16 06:06:47', '', 'verified', 1, 1, 1, 25, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 67, '0', '0', '0', '0', '0', 18, 1142.40, 10281.60);
INSERT INTO `nm_order` VALUES (73, 201, 24, 40229, 2, '6CU05309P59494244', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 40229.00, 0.00, 0.00, 'INR', 'EC-4NC87298HV5293242', 'Success', '2018-01-16 08:54:45', '', 'verified', 1, 6, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 68, '0', '0', '0', '0', '0', 0, 1609.16, 38619.84);
INSERT INTO `nm_order` VALUES (74, 214, 174, 1, 1, '1LL41476VJ1615912', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 2, 2.00, 0.00, 0.00, 'INR', 'EC-80R19448DR640764K', 'Success', '2018-01-17 15:25:06', '', 'verified', 1, 1, 1, 0, 4, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.20, 1.80);
INSERT INTO `nm_order` VALUES (75, 214, 36, 10, 1, '1LL41476VJ1615912', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 10.00, 5.00, 0.50, 'INR', 'EC-80R19448DR640764K', 'Success', '2018-01-17 15:25:06', '', 'verified', 1, 1, 1, 24, 14, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com,Lahore,India', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (76, 214, 168, 350, 1, '68L07932E58851627', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 350.00, 0.00, 0.00, 'INR', 'EC-99T77422NN668731R', 'Success', '2018-01-17 05:28:40', '', 'verified', 1, 1, 1, 21, 18, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 68, '0', '0', '0', '0', '0', 0, 14.00, 336.00);
INSERT INTO `nm_order` VALUES (77, 214, 174, 1, 1, '68L07932E58851627', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-99T77422NN668731R', 'Success', '2018-01-17 05:28:40', '', 'verified', 1, 1, 1, 0, 4, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (78, 214, 174, 1, 1, '56E0726737616602T', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-7V431947DJ388383E', 'Success', '2018-01-17 05:40:27', '', 'verified', 1, 1, 1, 0, 8, '0', 'vinod babu,test address1,test address2,Test state21,123456,9790417157,vinodbabu@pofitec.com,vadavalli,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (79, 214, 33, 45, 2, '56E0726737616602T', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 45.00, 10.00, 4.50, 'INR', 'EC-7V431947DJ388383E', 'Success', '2018-01-17 05:40:27', '', 'verified', 1, 4, 1, 0, 0, '0', 'vinod babu,test address1,test address2,Test state21,123456,9790417157,vinodbabu@pofitec.com,vadavalli,India', 41, '0', '0', '0', '0', '0', 0, 2.48, 47.03);
INSERT INTO `nm_order` VALUES (80, 201, 37, 250, 2, '3D239866UL551162H', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 2, 500.00, 0.00, 0.00, 'INR', 'EC-9NJ66463MU255813F', 'Success', '2018-01-17 07:50:46', '', 'verified', 1, 8, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 0, 105.00, 395.00);
INSERT INTO `nm_order` VALUES (81, 250, 34, 23, 2, '9YN55284MV039463P', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 23.00, 44.00, 10.12, 'INR', 'EC-4CP02573MY487653E', 'Success', '2018-01-17 08:34:24', '', 'verified', 1, 10, 1, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 1.66, 31.46);
INSERT INTO `nm_order` VALUES (82, 250, 174, 1, 1, '7UA06428H85103338', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-4L728121YN2639700', 'Success', '2018-01-17 08:54:07', '', 'verified', 1, 1, 1, 0, 8, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (83, 250, 181, 750, 1, '85A49672BE817862B', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 750.00, 3.00, 22.50, 'INR', 'EC-841612962X842814F', 'Success', '2018-01-18 08:06:48', '', 'verified', 1, 1, 1, 11, 4, '0', 'ragul,coimbatore,coimbatore,tamilnadu,641102,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 30.90, 741.60);
INSERT INTO `nm_order` VALUES (84, 229, 174, 1, 1, '3P6520629W955813U', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-7X149997R36351739', 'Success', '2018-02-05 07:56:46', '', 'verified', 1, 4, 1, 0, 8, '0', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (85, 229, 40, 123, 2, '0BF64068RG828243R', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 2, 246.00, 32.00, 78.72, 'INR', 'EC-6EE39439HW3025024', 'Success', '2018-02-05 09:01:01', '', 'verified', 1, 4, 1, 0, 0, '240', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 28.24, 536.48);
INSERT INTO `nm_order` VALUES (86, 229, 36, 10, 1, '2DB3789912043444P', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 10.00, 5.00, 0.50, 'INR', 'EC-90Y711414W2135452', 'Success', '2018-02-06 13:27:24', '', 'verified', 1, 4, 1, 24, 14, '5', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 0.78, 14.73);
INSERT INTO `nm_order` VALUES (87, 229, 52, 500, 2, '00B391695E622323V', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 500.00, 2.00, 10.00, 'INR', 'EC-2Y33775845359344B', 'Success', '2018-02-06 13:39:37', '', 'verified', 1, 10, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 51.00, 459.00);
INSERT INTO `nm_order` VALUES (88, 229, 54, 4000, 2, '2D4253430C282510E', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 4000.00, 2.00, 80.00, 'INR', 'EC-8BE59910MD4171604', 'Success', '2018-02-07 03:57:58', '', 'verified', 1, 10, 1, 0, 0, '50', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 77, '0', '0', '0', '0', '0', 0, 4088.70, 41.30);
INSERT INTO `nm_order` VALUES (89, 229, 134, 100, 1, '52B74444A5176283B', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 100.00, 0.00, 0.00, 'INR', 'EC-55X16320W70858623', 'Success', '2018-02-07 04:03:39', '', 'verified', 1, 4, 1, 11, 5, '50', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 67, '0', '0', '0', '0', '0', 0, 15.00, 135.00);
INSERT INTO `nm_order` VALUES (90, 229, 174, 1, 1, '9WR947581X8183918', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 0.00, 0.00, 'INR', 'EC-7EA71965KY2738244', 'Success', '2018-02-14 13:36:03', '', 'verified', 1, 8, 1, 0, 4, '0', 'balaa,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 0.10, 0.90);
INSERT INTO `nm_order` VALUES (91, 220, 95, 100, 1, '48X82225YX0460820', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 2, 200.00, 0.00, 0.00, 'INR', 'EC-22S44108W8627714R', 'Success', '2018-02-23 08:14:43', '', 'verified', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 42.00, 158.00);
INSERT INTO `nm_order` VALUES (92, 229, 161, 1, 1, '96K86894UA423315R', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 1.00, 3.00, 0.03, 'INR', 'EC-7BP95889U7292010B', 'Success', '2018-02-27 09:50:38', '', 'verified', 1, 1, 1, 21, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, '0', '0', '0', '0', '0', 0, 0.22, 0.81);
INSERT INTO `nm_order` VALUES (93, 229, 47, 7502, 1, '9KK20004A38663738', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 7502.00, 0.00, 0.00, 'INR', 'EC-0GN824134A107693N', 'Success', '2018-03-03 05:58:43', '', 'verified', 1, 1, 1, 5, 4, '52', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 62, '0', '0', '0', '0', '0', 0, 75.54, 7478.46);
INSERT INTO `nm_order` VALUES (94, 229, 171, 60, 1, '3BD73522RR768160V', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 60.00, 0.00, 0.00, 'INR', 'EC-00L10092JR385070K', 'Success', '2018-03-05 13:01:21', '', 'verified', 1, 1, 1, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order` VALUES (95, 220, 171, 100, 1, '3KK12016GN4813604', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 100.00, 0.00, 0.00, 'INR', 'EC-34E62358WH764241J', 'Success', '2018-03-07 09:42:49', '', 'verified', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, '0', '0', '0', '0', '0', 0, 7.00, 93.00);
INSERT INTO `nm_order` VALUES (96, 201, 171, 100, 1, '3FN48224BD5999131', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 100.00, 0.00, 0.00, 'INR', 'EC-2E449215HC7383324', 'Success', '2018-03-08 05:51:26', '', 'verified', 1, 1, 1, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '6zwrw49Jtv', 'productcoupon', '1', '20', '80', 0, 7.00, 93.00);
INSERT INTO `nm_order` VALUES (97, 201, 197, 5, 1, '5KM51120KY2373525', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 0.00, 0.00, 'INR', 'EC-1W422634VJ048684W', 'Success', '2018-03-14 04:28:03', '', 'verified', 1, 1, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 59, '0', '0', '0', '0', '0', 0, 0.50, 4.50);
INSERT INTO `nm_order` VALUES (98, 201, 197, 5, 1, '8T650245VM497843C', 'vinodbabu.89-buyer-1@gmail.com', '58HF7RHS3MG2E', 'test', 1, 5.00, 0.00, 0.00, 'INR', 'EC-32X59811G06987804', 'Success', '2018-03-14 05:21:31', '', 'verified', 1, 1, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 59, 'MzwJrsJqEq', 'productcoupon', '1', '1', '4', 0, 0.50, 4.50);
INSERT INTO `nm_order` VALUES (99, 201, 193, 40, 1, 'ORDER1521119275mwXG6T', '', '', '', 1, 40.00, 0.00, 0.00, '', '', '', '2018-03-15 09:07:55', '', '', 1, 1, 2, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '0', '0', '0', '0', '0', 40, 2.80, 37.20);
INSERT INTO `nm_order` VALUES (100, 201, 66, 100, 2, 'ORDER1521119275mwXG6T', '', '', '', 1, 100.00, 0.00, 0.00, '', '', '', '2018-03-15 09:07:55', '', '', 1, 5, 2, 0, 0, '200', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 60, '0', '0', '0', '0', '0', 300, 30.00, 270.00);
INSERT INTO `nm_order` VALUES (101, 272, 171, 100, 1, '36K38055GJ032682S', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 100.00, 0.00, 0.00, 'INR', 'EC-1X571204Y1374824D', 'Success', '2018-03-27 14:58:11', '', 'unverified', 1, 1, 1, 0, 14, '0', 'Suganya,Ramnagar,Gan,Tamil Nadu,123654,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 7.00, 93.00);
INSERT INTO `nm_order` VALUES (102, 272, 176, 421, 1, '9NG36189H8313451T', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 421.00, 0.00, 0.00, 'INR', 'EC-60N16772EK349733S', 'Success', '2018-03-27 15:10:19', '', 'unverified', 1, 5, 1, 0, 14, '1', 'Suganya,Gandhipuram,Mtp,Tamil Nadu,123456,1234567890,suganya@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 42.20, 379.80);
INSERT INTO `nm_order` VALUES (103, 272, 179, 899, 1, '3B595938SW8090046', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 899.00, 2.00, 17.98, 'INR', 'EC-77S60075CL509431M', 'Success', '2018-03-30 04:42:38', '', 'unverified', 1, 1, 1, 0, 14, '30', 'Suganya,mettupalayam,mettupalayam,Tamilnadu,600042,1234567890,suganya@pofitec.com,Delhi,India', 68, '0', '0', '0', '0', '0', 0, 37.88, 909.10);
INSERT INTO `nm_order` VALUES (104, 273, 179, 899, 1, '6DR414542C078684R', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 899.00, 2.00, 17.98, 'INR', 'EC-8YJ23227J69521223', 'Success', '2018-03-30 08:01:17', '', 'unverified', 1, 4, 1, 0, 14, '30', 'suganya,mettupalayam,mettupalayam,Tamilnadu,600042,1234567890,suganya@pofitec.com,Delhi,India', 68, '0', '0', '0', '0', '0', 0, 37.88, 909.10);
INSERT INTO `nm_order` VALUES (105, 275, 178, 23, 1, '5KH6307008680393V', 'venugopal-buyer@pofitec.com', 'KGR9RTWSZFZGA', 'test', 1, 23.00, 0.00, 0.00, 'INR', 'EC-1L847803LX006174Y', 'Success', '2018-04-09 12:27:11', '', 'verified', 1, 1, 1, 0, 14, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 20, 4.83, 18.17);
INSERT INTO `nm_order` VALUES (106, 283, 163, 3, 1, '1V043942HV8450455', 'venugopal-buyer@pofitec.com', 'KGR9RTWSZFZGA', 'test', 1, 3.00, 4.00, 0.12, 'INR', 'EC-22W60577SL949623H', 'Success', '2018-04-09 05:19:38', '', 'verified', 1, 1, 1, 20, 4, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 0.66, 2.46);
INSERT INTO `nm_order` VALUES (107, 201, 189, 800, 1, '07767225X2743033K', 'venugopal-buyer@pofitec.com', 'KGR9RTWSZFZGA', 'test', 1, 800.00, 3.00, 24.00, 'INR', 'EC-6YR39358P82410829', 'Success', '2018-04-12 12:06:25', '', 'verified', 1, 1, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 173.04, 650.96);
INSERT INTO `nm_order` VALUES (108, 273, 196, 100, 1, '2H152882V33480439', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 100.00, 3.00, 3.00, 'INR', 'EC-1WB98177SW6226456', 'Success', '2018-04-12 08:22:09', '', 'unverified', 1, 1, 1, 0, 0, '0', 'suganya,uiu,uiu,Tamil Nadu,767676,1234567890,suganya@pofitec.com,Chennai,India', 95, '0', '0', '0', '0', '0', 0, 7.21, 95.79);
INSERT INTO `nm_order` VALUES (109, 273, 161, 30, 1, '2H152882V33480439', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 30.00, 0.00, 0.00, 'INR', 'EC-1WB98177SW6226456', 'Success', '2018-04-12 08:22:09', '', 'unverified', 1, 1, 1, 0, 4, '0', 'suganya,uiu,uiu,Tamil Nadu,767676,1234567890,suganya@pofitec.com,Chennai,India', 95, '0', '0', '0', '0', '0', 0, 2.10, 27.90);
INSERT INTO `nm_order` VALUES (110, 201, 112, 7500, 1, 'ORDER1523625861RSFchz', '', '', '', 1, 7500.00, 0.00, 0.00, '', '', '', '2018-04-13 09:24:21', '', '', 1, 1, 2, 0, 0, '50', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 58, 'rxz0MJGqou', 'productcoupon', '1', '12', '7488', 7538, 1585.50, 5964.50);
INSERT INTO `nm_order` VALUES (111, 201, 189, 800, 1, 'ORDER1523625861RSFchz', '', '', '', 2, 1600.00, 3.00, 48.00, '', '', '', '2018-04-13 09:24:21', '', '', 1, 1, 2, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 1648, 346.08, 1301.92);
INSERT INTO `nm_order` VALUES (112, 273, 196, 100, 1, 'ORDER1523628427AaBJar', '', '', '', 1, 100.00, 3.00, 3.00, '', '', '', '2018-04-13 10:07:07', '', '', 1, 1, 2, 0, 0, '0', 'suganya,rtrt,rtrtr,rtrtr,123456,1234567890,suganya@pofitec.com,Chennai,India', 95, '0', '0', '0', '0', '0', 103, 7.21, 95.79);
INSERT INTO `nm_order` VALUES (113, 273, 161, 30, 1, 'ORDER1523628427AaBJar', '', '', '', 1, 30.00, 0.00, 0.00, '', '', '', '2018-04-13 10:07:07', '', '', 1, 1, 2, 0, 4, '0', 'suganya,rtrt,rtrtr,rtrtr,123456,1234567890,suganya@pofitec.com,Chennai,India', 95, '0', '0', '0', '0', '0', 30, 2.10, 27.90);
INSERT INTO `nm_order` VALUES (114, 273, 196, 100, 1, '93730221G0400623E', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 100.00, 3.00, 3.00, 'INR', 'EC-0W628989K5992684L', 'Success', '2018-04-13 10:11:49', '', 'unverified', 1, 1, 1, 0, 0, '0', 'suganya,rtrtr,rt,rtrtr,123456,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 133, 7.21, 95.79);
INSERT INTO `nm_order` VALUES (115, 273, 193, 40, 1, '90A962132A6099009', 'malarvizhi@pofitec.com', 'BDP23VH5L3RZ8', 'malar', 1, 40.00, 0.00, 0.00, 'INR', 'EC-69035996RF914692E', 'Success', '2018-04-16 13:07:41', '', 'unverified', 1, 1, 1, 0, 0, '0', 'suganya,test,rtr,Tamil Nadu,54321,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 2.80, 37.20);

-- ----------------------------
-- Table structure for nm_order_auction
-- ----------------------------
DROP TABLE IF EXISTS `nm_order_auction`;
CREATE TABLE `nm_order_auction`  (
  `oa_id` int(11) NOT NULL AUTO_INCREMENT,
  `oa_pro_id` int(11) NOT NULL,
  `oa_cus_id` int(11) NOT NULL,
  `oa_cus_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `oa_cus_email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `oa_cus_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `oa_bid_amt` int(11) NOT NULL,
  `oa_bid_shipping_amt` int(11) NOT NULL,
  `oa_original_bit_amt` int(11) NOT NULL,
  `oa_bid_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `oa_bid_winner` int(11) NOT NULL COMMENT '1=> Winner, 0=> Bidders',
  `oa_bid_item_status` int(11) NOT NULL COMMENT '0=> Onprocess, 1=> Send,  3=>Cancelled',
  `oa_delivery_date` datetime(0) NOT NULL,
  PRIMARY KEY (`oa_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_order_delivery_status
-- ----------------------------
DROP TABLE IF EXISTS `nm_order_delivery_status`;
CREATE TABLE `nm_order_delivery_status`  (
  `delStatus_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_cust_id` int(11) NOT NULL,
  `cod_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `mer_id` int(11) NOT NULL,
  `order_type` int(11) NOT NULL COMMENT '\'1\'-product,\'2\'-deal',
  `transaction_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '\'0\'->cod,\'1\'->paypal',
  `delivery_statuss` int(11) NOT NULL,
  `cancel_status` int(11) NOT NULL COMMENT '\'0\'->not done,\'1\'->cancel pending ,\'2\'->cancelled,\'3\'->hold,4->\"Disapproved\"',
  `cancel_notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cancel_date` datetime(0) NOT NULL,
  `cancel_approved_date` datetime(0) NOT NULL,
  `return_status` int(11) NOT NULL COMMENT '\'0\'-not done,\'1\'-return pending,\'3\'->hold,\'2\'-returned,4->\"Disapproved\"',
  `return_notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `return_date` datetime(0) NOT NULL,
  `return_approved_date` datetime(0) NOT NULL,
  `replace_status` int(11) NOT NULL COMMENT '\'0\'-not done,\'1\'-replace pending,\'3\'->hold,\'2\'-replaced,4->\"Disapproved\"',
  `replace_notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `replace_date` datetime(0) NOT NULL,
  `replace_approved_date` datetime(0) NOT NULL,
  PRIMARY KEY (`delStatus_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_order_delivery_status
-- ----------------------------
INSERT INTO `nm_order_delivery_status` VALUES (1, 201, 35, 0, 36, 41, 1, 'ORDER1003', 0, 0, 4, 'tyty', '2017-12-25 11:29:51', '2017-12-25 13:00:23', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (2, 201, 36, 0, 36, 41, 1, 'ORDER1004', 0, 0, 2, 'hghg', '2017-12-25 11:31:46', '2017-12-25 12:50:19', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (3, 201, 0, 30, 36, 41, 1, '9R416707CH5978206', 1, 0, 2, 'rtrtr', '2017-12-25 13:24:28', '2017-12-25 13:30:31', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (4, 201, 0, 31, 36, 41, 1, '0RY18511MJ490792B', 1, 0, 2, 'hhh', '2017-12-25 13:30:04', '2017-12-25 13:30:51', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (5, 201, 0, 33, 36, 41, 1, '0L636862BX7370612', 1, 0, 4, 'yuyuy', '2017-12-25 13:33:49', '2017-12-25 13:34:18', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (6, 201, 37, 0, 36, 41, 1, 'ORDER1005', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'uyy', '2017-12-25 14:59:04', '2017-12-25 14:59:24', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (7, 201, 38, 0, 36, 41, 1, 'ORDER1006', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'ssd', '2017-12-25 15:01:09', '2017-12-25 15:03:02', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (8, 201, 39, 0, 36, 41, 1, 'ORDER1007', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'ssd', '2017-12-25 15:02:24', '2017-12-25 15:02:46', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (9, 201, 40, 0, 36, 41, 1, 'ORDER1008', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'tytyt', '2017-12-25 15:08:36', '2017-12-25 15:09:01');
INSERT INTO `nm_order_delivery_status` VALUES (10, 201, 0, 35, 36, 41, 1, '4EB761201X023850H', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'gffg', '2017-12-25 15:19:45', '2017-12-25 15:33:47', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (11, 201, 0, 34, 36, 41, 1, '1XP685263D264494M', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'hhh', '2017-12-25 15:20:08', '2017-12-25 15:36:09');
INSERT INTO `nm_order_delivery_status` VALUES (12, 201, 0, 36, 36, 41, 1, '7HY02061W0863332R', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'trr', '2017-12-25 15:38:14', '2017-12-25 15:38:31', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (13, 201, 42, 0, 1, 41, 2, 'ORDER1010', 0, 0, 2, 'hjh', '2017-12-25 16:12:28', '2017-12-25 16:13:28', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (14, 201, 43, 0, 1, 41, 2, 'ORDER1011', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'hghg', '2017-12-25 16:12:45', '2017-12-25 16:27:05', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (15, 201, 44, 0, 1, 41, 2, 'ORDER1012', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'tyty', '2017-12-25 16:43:39', '2017-12-25 16:44:01', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (16, 201, 0, 37, 1, 41, 2, '1GY19202KC5728326', 1, 0, 2, 'hgh', '2017-12-25 16:46:04', '2017-12-25 16:46:25', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (17, 201, 0, 38, 1, 41, 2, '1SE07703430416241', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'fgfgf', '2017-12-25 16:48:42', '2017-12-25 16:52:15');
INSERT INTO `nm_order_delivery_status` VALUES (18, 201, 0, 39, 1, 41, 2, '58X139085H000343K', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'gf', '2017-12-25 16:55:28', '2017-12-25 16:57:49', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (19, 197, 65, 0, 160, 41, 1, 'ORDER1003', 0, 0, 2, 'gi', '2018-01-03 17:02:14', '2018-01-03 17:03:35', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (20, 214, 0, 47, 173, 62, 1, '8Y116078LD8996354', 1, 0, 4, '', '2018-01-08 18:33:43', '2018-01-08 18:37:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (21, 212, 105, 0, 167, 68, 1, 'ORDER1012', 0, 0, 1, 'dont like', '2018-01-11 10:18:27', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (22, 212, 108, 0, 173, 62, 1, 'ORDER1015', 0, 0, 1, 'no', '2018-01-11 10:49:24', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (23, 249, 151, 0, 160, 41, 1, 'ORDER1515846205151', 0, 0, 1, 'dont like', '2018-01-13 17:53:53', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (24, 249, 152, 0, 160, 41, 1, 'ORDER1515846895152', 0, 0, 1, 'dsfgdsfg', '2018-01-13 18:05:16', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (25, 249, 153, 0, 160, 41, 1, 'ORDER1515846987153', 0, 0, 1, 'dfgdfg', '2018-01-13 18:06:52', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (26, 249, 154, 0, 160, 41, 1, 'ORDER1515847427154', 0, 0, 1, 'dfgsdfg', '2018-01-13 18:14:08', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (27, 249, 156, 0, 176, 60, 1, 'ORDER1515851015156', 0, 0, 1, 'sdasd', '2018-01-13 19:14:11', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (28, 201, 185, 0, 160, 41, 1, 'ORDER1516105593185', 0, 0, 1, '', '2018-01-16 18:08:06', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (29, 201, 184, 0, 139, 67, 1, 'ORDER1516105593185', 0, 0, 1, '<dfd>sdfsdgv/nhmn', '2018-01-16 18:11:53', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (30, 201, 165, 0, 36, 41, 1, 'ORDER1516083178166', 0, 0, 2, '', '2018-01-16 18:18:40', '2018-01-17 11:00:11', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (31, 201, 0, 56, 160, 41, 1, '4FM70563FJ6525317', 1, 0, 1, 'sdfd#@$#$#$^', '2018-01-16 18:19:57', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (32, 201, 163, 0, 36, 41, 1, 'ORDER1516078039163', 0, 0, 2, '', '2018-01-16 19:12:33', '2018-01-17 10:09:36', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (33, 220, 95, 0, 167, 68, 1, 'ORDER1005', 0, 0, 1, '', '2018-01-16 19:13:08', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (34, 201, 0, 73, 24, 68, 2, '6CU05309P59494244', 1, 0, 2, '', '2018-01-16 19:13:26', '2018-02-03 17:52:20', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (35, 206, 100, 0, 167, 68, 1, 'ORDER1009', 0, 0, 1, '', '2018-01-16 19:19:14', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (36, 201, 87, 0, 164, 62, 1, 'lTcWNf4F', 0, 0, 1, '', '2018-01-16 19:24:36', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (37, 201, 158, 0, 160, 41, 1, 'ORDER1516076276158', 0, 0, 1, 'sxfdsfgfghgfhgf', '2018-01-17 16:33:09', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (38, 201, 187, 0, 36, 41, 1, 'ORDER1516167174187', 0, 0, 1, 'safsdfgfdhgfh', '2018-01-17 16:33:56', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (39, 201, 162, 0, 172, 62, 1, '', 0, 0, 1, 'No interest to buy', '2018-01-17 16:37:13', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (40, 229, 208, 0, 52, 60, 2, 'ORDER1517807965208', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'test', '2018-02-05 11:00:12', '2018-02-05 11:01:54', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (41, 229, 0, 87, 52, 60, 2, '00B391695E622323V', 1, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'test', '2018-02-06 15:48:16', '2018-02-06 15:51:23');
INSERT INTO `nm_order_delivery_status` VALUES (42, 229, 219, 0, 196, 90, 1, 'ORDER1517916234219', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'test', '2018-02-06 17:10:13', '2018-02-06 17:10:48', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (43, 229, 227, 0, 35, 41, 1, 'ORDER1518586507227', 0, 0, 1, 'test', '2018-02-15 14:59:16', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (44, 229, 222, 0, 52, 60, 2, 'ORDER1517990184222', 0, 0, 2, 'test', '2018-02-16 16:16:54', '2018-02-17 18:48:34', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (45, 229, 230, 0, 51, 60, 2, 'ORDER1518873841230', 0, 0, 2, 'ddsgg', '2018-02-17 18:54:48', '2018-02-17 18:55:43', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (46, 229, 214, 0, 52, 60, 2, 'ORDER1517835128214', 0, 0, 2, 'test', '2018-02-17 19:25:52', '2018-02-17 19:26:28', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (47, 214, 0, 45, 170, 62, 1, '9EK709210D1805016', 1, 0, 1, 'testing', '2018-03-01 17:52:25', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (48, 229, 0, 50, 191, 90, 1, 'd11e6e7890108a03620e', 1, 0, 2, 'test', '2018-03-01 19:44:17', '2018-03-01 19:52:07', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (49, 229, 246, 0, 177, 67, 1, 'ORDER1519997476246', 0, 0, 1, 'test', '2018-03-05 15:26:33', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (50, 201, 0, 100, 66, 60, 2, 'ORDER1521119275mwXG6T', 2, 0, 1, '', '2018-03-16 15:25:15', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (51, 201, 265, 0, 66, 60, 2, 'ORDER1521194729265', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'sfsdfgdg', '2018-03-16 16:30:41', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (52, 201, 264, 0, 198, 58, 1, 'ORDER1521194410264', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'sdsfdsf', '2018-03-16 16:31:32', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (53, 272, 269, 0, 176, 60, 1, 'ORDER1522134551269', 0, 0, 1, 'ghghgh', '2018-03-27 13:13:07', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (54, 272, 0, 102, 176, 60, 1, '9NG36189H8313451T', 1, 0, 1, 'tedst', '2018-03-27 13:14:12', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (55, 272, 271, 0, 179, 68, 1, 'ORDER1522143986271', 0, 0, 1, '', '2018-03-27 15:45:39', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (56, 272, 274, 0, 179, 68, 1, 'ORDER1522327282274', 0, 0, 1, '', '2018-03-29 18:19:29', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (57, 272, 275, 0, 179, 68, 1, 'ORDER1522327329275', 0, 0, 1, 'klklk', '2018-03-29 19:24:27', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `nm_order_delivery_status` VALUES (58, 273, 0, 79, 72, 90, 2, '77baf2687873ae5aa98b', 1, 0, 1, 'ghgg', '2018-04-03 18:44:01', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for nm_order_payu
-- ----------------------------
DROP TABLE IF EXISTS `nm_order_payu`;
CREATE TABLE `nm_order_payu`  (
  `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_cus_id` int(10) UNSIGNED NOT NULL,
  `order_pro_id` int(11) UNSIGNED NOT NULL,
  `order_prod_unitPrice` double NOT NULL DEFAULT 0,
  `order_type` tinyint(4) NOT NULL COMMENT '1-product,2-deals',
  `transaction_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_amt` decimal(15, 2) NOT NULL COMMENT '(unit price * quantity)',
  `order_tax` decimal(10, 2) NOT NULL COMMENT 'tax per unit (in %)',
  `order_taxAmt` decimal(10, 2) NOT NULL,
  `currency_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_ack` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payer_status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_status` tinyint(4) NOT NULL COMMENT '1-sucess,2-complete,3-hold,4-failed',
  `delivery_status` int(11) NOT NULL DEFAULT 2 COMMENT '1->order_placed,2->order_packed,3->Dispatched,4->Delivered,5->cancel pending,6->cancelled,7->return pending ,8->returned,9->replace pending,10->replaced',
  `order_paytype` smallint(6) NOT NULL DEFAULT 1 COMMENT '1-paypal',
  `order_pro_color` int(11) NOT NULL,
  `order_pro_size` int(11) NOT NULL,
  `order_shipping_amt` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_shipping_add` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_merchant_id` int(11) NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_amount_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_total_amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wallet_amount` double NOT NULL,
  `mer_commission_amt` decimal(10, 2) NOT NULL,
  `mer_amt` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_cus_id`(`order_cus_id`, `order_pro_id`, `order_status`, `delivery_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_order_payu
-- ----------------------------
INSERT INTO `nm_order_payu` VALUES (1, 220, 161, 100, 1, '', '', '', '', 1, 100.00, 3.00, 3.00, '', '', '', '2018-02-28 14:09:09', '', '', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 21.63, 81.37);
INSERT INTO `nm_order_payu` VALUES (2, 220, 171, 60, 1, '', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 03:32:50', '', '', 3, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (3, 220, 171, 60, 1, '', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 03:32:50', '', '', 3, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (4, 220, 171, 60, 1, '5992b77cced87dd7df08', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 15:32:52', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (5, 220, 171, 60, 1, '5992b77cced87dd7df08', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 15:32:52', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (6, 220, 171, 60, 1, '5992b77cced87dd7df08', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 15:32:52', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (7, 220, 157, 100, 1, '5992b77cced87dd7df08', '', '', '', 1, 100.00, 8.00, 8.00, '', '', '', '2018-02-28 15:32:52', '', '', 1, 1, 1, 11, 4, '56', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 1.64, 162.36);
INSERT INTO `nm_order_payu` VALUES (8, 220, 171, 60, 1, '5992b77cced87dd7df08', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 15:32:52', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (9, 220, 157, 100, 1, '5992b77cced87dd7df08', '', '', '', 1, 100.00, 8.00, 8.00, '', '', '', '2018-02-28 15:32:52', '', '', 1, 1, 1, 11, 4, '56', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 1.64, 162.36);
INSERT INTO `nm_order_payu` VALUES (10, 220, 168, 350, 1, 'b289180adcf4fc6fe85b', '', '', '', 1, 350.00, 0.00, 0.00, '', '', '', '2018-02-28 16:54:36', '', '', 1, 1, 1, 21, 17, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 68, '0', '0', '0', '0', '0', 0, 14.00, 336.00);
INSERT INTO `nm_order_payu` VALUES (11, 220, 171, 60, 1, 'b289180adcf4fc6fe85b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 16:54:36', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (12, 220, 171, 60, 1, '8d1d632b64bd245bae80', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 17:15:34', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (13, 220, 157, 100, 1, '8d1d632b64bd245bae80', '', '', '', 1, 100.00, 8.00, 8.00, '', '', '', '2018-02-28 17:15:34', '', '', 1, 1, 1, 11, 4, '56', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 1.64, 162.36);
INSERT INTO `nm_order_payu` VALUES (14, 220, 171, 60, 1, '8d1d632b64bd245bae80', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 17:15:34', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (15, 220, 157, 100, 1, '8d1d632b64bd245bae80', '', '', '', 1, 100.00, 8.00, 8.00, '', '', '', '2018-02-28 17:15:34', '', '', 1, 1, 1, 11, 4, '56', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 1.64, 162.36);
INSERT INTO `nm_order_payu` VALUES (16, 220, 171, 60, 1, '8d1d632b64bd245bae80', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 17:15:34', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (17, 220, 157, 100, 1, '8d1d632b64bd245bae80', '', '', '', 1, 100.00, 8.00, 8.00, '', '', '', '2018-02-28 17:15:34', '', '', 1, 1, 1, 11, 4, '56', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 1.64, 162.36);
INSERT INTO `nm_order_payu` VALUES (18, 220, 171, 60, 1, '1d807a8896f3aa9d7ee3', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 17:41:28', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (19, 220, 95, 100, 1, '1d807a8896f3aa9d7ee3', '', '', '', 1, 100.00, 0.00, 0.00, '', '', '', '2018-02-28 17:41:28', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 21.00, 79.00);
INSERT INTO `nm_order_payu` VALUES (20, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (21, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (22, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (23, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (24, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (25, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (26, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (27, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (28, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (29, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (30, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (31, 220, 171, 60, 1, 'f714a5964e443a3dfa0b', '', '', '', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:01:11', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (32, 220, 95, 100, 1, 'b647bd8f4ecd2d139e02', 'venugopal@pofitec.com', '', 'venugopal', 1, 100.00, 0.00, 0.00, '', '', '', '2018-02-28 19:44:01', '', '', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 21.00, 79.00);
INSERT INTO `nm_order_payu` VALUES (33, 220, 171, 60, 1, '468544edd4b2daca74e7', 'venugopal@pofitec.com', '', 'venugopal', 1, 60.00, 0.00, 0.00, '', '', '', '2018-02-28 19:47:12', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (34, 220, 51, 50, 2, '2458047c4f71f91ddaba', 'venugopal@pofitec.com', '', 'venugopal', 2, 100.00, 2.00, 2.00, '', '', '', '2018-02-28 20:51:20', '', 'success', 1, 1, 1, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 3, 10.20, 91.80);
INSERT INTO `nm_order_payu` VALUES (35, 229, 161, 3, 1, 'ce850aafa72be1761c1b', 'balamurugan@pofitec.com', '', 'bala', 3, 9.00, 0.00, 0.00, '', '', '', '2018-03-01 13:32:20', '', 'success', 1, 1, 1, 0, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, '0', '0', '0', '0', '0', 0, 1.89, 7.11);
INSERT INTO `nm_order_payu` VALUES (36, 220, 171, 60, 1, '247896d2542de383dadf', 'venugopal@pofitec.com', '', 'venugopal', 1, 60.00, 0.00, 0.00, '', '', '', '2018-03-01 13:39:10', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (37, 220, 51, 50, 2, '247896d2542de383dadf', 'venugopal@pofitec.com', '', 'venugopal', 1, 50.00, 2.00, 1.00, '', '', '', '2018-03-01 13:39:10', '', 'success', 1, 6, 1, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 5.10, 45.90);
INSERT INTO `nm_order_payu` VALUES (38, 229, 190, 4, 1, 'd9f2b5986a4bc93efed0', 'balamurugan@pofitec.com', '', 'bala', 1, 4.00, 0.00, 0.00, '', '', '', '2018-03-01 18:14:27', '', 'success', 1, 8, 1, 9, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.04, 3.96);
INSERT INTO `nm_order_payu` VALUES (39, 220, 171, 60, 1, 'd0fb26af598f198b152f', 'venugopal@pofitec.com', '', 'venugopal', 1, 60.00, 0.00, 0.00, '', '', '', '2018-03-01 18:43:23', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 6.00, 54.00);
INSERT INTO `nm_order_payu` VALUES (40, 220, 61, 40, 2, 'd0fb26af598f198b152f', 'venugopal@pofitec.com', '', 'venugopal', 3, 120.00, 0.00, 0.00, '', '', '', '2018-03-01 18:43:23', '', 'success', 1, 1, 1, 0, 0, '90', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 44.10, 165.90);
INSERT INTO `nm_order_payu` VALUES (41, 229, 190, 4, 1, '30fcb112016c45c1655e', 'balamurugan@pofitec.com', '', 'bala', 2, 8.00, 0.00, 0.00, '', '', '', '2018-03-01 19:18:11', '', 'success', 1, 6, 1, 9, 5, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.08, 7.92);
INSERT INTO `nm_order_payu` VALUES (42, 229, 62, 4, 2, '14e58b691d16f7daff58', 'balamurugan@pofitec.com', '', 'bala', 1, 4.00, 0.00, 0.00, '', '', '', '2018-03-01 19:19:57', '', 'success', 1, 6, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.04, 3.96);
INSERT INTO `nm_order_payu` VALUES (43, 229, 62, 4, 2, '4cb87f43757948455676', 'balamurugan@pofitec.com', '', 'bala', 1, 4.00, 0.00, 0.00, '', '', '', '2018-03-01 19:48:58', '', 'success', 1, 10, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.04, 3.96);
INSERT INTO `nm_order_payu` VALUES (44, 229, 171, 60, 1, '990aa13ad82aef28c774', 'balamurugan@pofitec.com', '', 'bala', 2, 120.00, 0.00, 0.00, '', '', '', '2018-03-01 20:12:52', '', 'success', 1, 1, 1, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 12.00, 108.00);
INSERT INTO `nm_order_payu` VALUES (45, 229, 191, 3, 1, '7b89f04b2169ab1fff80', 'balamurugan@pofitec.com', '', 'bala', 2, 6.00, 0.00, 0.00, '', '', '', '2018-03-01 20:15:51', '', 'success', 1, 10, 1, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.06, 5.94);
INSERT INTO `nm_order_payu` VALUES (46, 229, 62, 4, 2, '98e8d799fa60914e3828', 'balamurugan@pofitec.com', '', 'bala', 1, 4.00, 0.00, 0.00, '', '', '', '2018-03-01 20:41:23', '', 'success', 1, 8, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.04, 3.96);
INSERT INTO `nm_order_payu` VALUES (47, 229, 191, 3, 1, '5bb15302256e2f6562ff', 'balamurugan@pofitec.com', '', 'bala', 2, 6.00, 0.00, 0.00, '', '', '', '2018-03-01 20:49:05', '', 'success', 1, 6, 1, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.06, 5.94);
INSERT INTO `nm_order_payu` VALUES (48, 229, 62, 4, 2, 'b9a23a0ba178c1b07987', 'balamurugan@pofitec.com', '', 'bala', 2, 8.00, 0.00, 0.00, '', '', '', '2018-03-01 20:52:15', '', 'success', 1, 8, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.08, 7.92);
INSERT INTO `nm_order_payu` VALUES (49, 229, 189, 800, 1, 'e3f5db72fd0b9d5b816e', 'balamurugan@pofitec.com', '', 'bala', 3, 2400.00, 3.00, 72.00, '', '', '', '2018-03-01 21:24:17', '', 'success', 1, 1, 1, 13, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, 'LyDGsECzKv', 'productcoupon', '1', '30', '2370', 0, 519.12, 1952.88);
INSERT INTO `nm_order_payu` VALUES (50, 229, 191, 3, 1, 'd11e6e7890108a03620e', 'balamurugan@pofitec.com', '', 'bala', 1, 3.00, 0.00, 0.00, '', '', '', '2018-03-01 22:06:51', '', 'success', 1, 6, 1, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.03, 2.97);
INSERT INTO `nm_order_payu` VALUES (51, 229, 62, 4, 2, 'b3c6520df608a957f861', 'balamurugan@pofitec.com', '', 'bala', 2, 8.00, 0.00, 0.00, '', '', '', '2018-03-01 22:08:19', '', 'success', 1, 10, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.08, 7.92);
INSERT INTO `nm_order_payu` VALUES (52, 229, 189, 800, 1, '9f850433dfa62a117b8a', 'balamurugan@pofitec.com', '', 'bala', 3, 2400.00, 3.00, 72.00, '', '', '', '2018-03-01 22:10:06', '', 'success', 1, 6, 1, 8, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, 'LyDGsECzKv', 'productcoupon', '1', '30', '2370', 0, 519.12, 1952.88);
INSERT INTO `nm_order_payu` VALUES (53, 229, 62, 4, 2, 'e543bc373d50c9cde89a', 'balamurugan@pofitec.com', '', 'bala', 1, 4.00, 0.00, 0.00, '', '', '', '2018-03-01 22:12:33', '', 'success', 1, 8, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.04, 3.96);
INSERT INTO `nm_order_payu` VALUES (54, 229, 171, 60, 1, 'ba75ebec441f7b0883be', 'balamurugan@pofitec.com', '', 'bala', 2, 120.00, 0.00, 0.00, '', '', '', '2018-03-02 13:12:20', '', 'success', 1, 1, 1, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 12.00, 108.00);
INSERT INTO `nm_order_payu` VALUES (55, 229, 62, 4, 2, 'e8cfc26079c1738d0185', 'balamurugan@pofitec.com', '', 'bala', 1, 4.00, 0.00, 0.00, '', '', '', '2018-03-02 13:15:59', '', 'success', 1, 1, 1, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 0.04, 3.96);
INSERT INTO `nm_order_payu` VALUES (56, 220, 52, 500, 2, '39aa66cb2a27a859cee3', 'venugopal@pofitec.com', '', 'venugopal', 1, 500.00, 2.00, 10.00, '', '', '', '2018-03-03 13:48:44', '', 'success', 1, 1, 1, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 51.00, 459.00);
INSERT INTO `nm_order_payu` VALUES (57, 201, 171, 100, 1, 'ebcdedbb3a4ce1403ec1', 'suganya.t@pofitec.com', '', 'suganya', 1, 100.00, 0.00, 0.00, '', '', '', '2018-03-08 19:46:40', '', 'success', 1, 1, 1, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '6zwrw49Jtv', 'productcoupon', '1', '20', '80', 0, 7.00, 93.00);
INSERT INTO `nm_order_payu` VALUES (58, 220, 193, 40, 1, '39eedd89e3ba0e1e5b86', 'venugopal@pofitec.com', '', 'venugopal', 1, 40.00, 0.00, 0.00, '', '', '', '2018-03-08 21:39:10', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 90, 'MnwvpFnptK', 'productcoupon', '1', '20', '20', 0, 0.40, 39.60);
INSERT INTO `nm_order_payu` VALUES (59, 220, 193, 40, 1, 'e755631bed08eb6bef3d', 'venugopal@pofitec.com', '', 'venugopal', 1, 40.00, 0.00, 0.00, '', '', '', '2018-03-08 21:48:17', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, 'MnwvpFnptK', 'productcoupon', '1', '20', '20', 0, 2.80, 37.20);
INSERT INTO `nm_order_payu` VALUES (60, 220, 193, 40, 1, '79ccbaf93c0130ce3698', 'venugopal@pofitec.com', '', 'venugopal', 1, 40.00, 0.00, 0.00, '', '', '', '2018-03-08 21:55:56', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, '0', '0', '0', '0', '0', 0, 2.80, 37.20);
INSERT INTO `nm_order_payu` VALUES (61, 220, 193, 40, 1, '9b1c2c4186260cf47694', 'venugopal@pofitec.com', '', 'venugopal', 1, 40.00, 0.00, 0.00, '', '', '', '2018-03-08 22:00:54', '', 'success', 1, 1, 1, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, '0', '0', '0', '0', '0', 0, 2.80, 37.20);
INSERT INTO `nm_order_payu` VALUES (62, 220, 161, 30, 1, '4c28051e7786d1117917', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:15:15', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (63, 220, 161, 30, 1, '4d7a77a3912a8e89c6c3', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:19:02', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (64, 220, 161, 30, 1, '4d7a77a3912a8e89c6c3', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:19:02', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (65, 220, 161, 30, 1, '4d7a77a3912a8e89c6c3', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:19:02', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (66, 220, 161, 30, 1, '4d7a77a3912a8e89c6c3', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:19:02', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (67, 220, 161, 30, 1, '4d7a77a3912a8e89c6c3', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:19:02', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (68, 220, 161, 30, 1, '4d7a77a3912a8e89c6c3', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:19:02', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (69, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (70, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (71, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (72, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (73, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (74, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (75, 220, 161, 30, 1, '949057169e835d161b05', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:25:55', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 6.30, 23.70);
INSERT INTO `nm_order_payu` VALUES (76, 220, 161, 30, 1, '940479095d5dd3b17b6f', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:29:22', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 2.10, 27.90);
INSERT INTO `nm_order_payu` VALUES (77, 220, 161, 30, 1, '940479095d5dd3b17b6f', 'venugopal@pofitec.com', '', 'venugopal', 1, 30.00, 0.00, 0.00, '', '', '', '2018-03-08 22:29:22', '', 'success', 1, 1, 1, 0, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, 'zzLKHCFFLL', 'productcoupon', '1', '20', '10', 0, 2.10, 27.90);
INSERT INTO `nm_order_payu` VALUES (78, 273, 179, 899, 1, '30e8822151683a1abf4d', 'suganya@pofitec.com', '', 'suganya', 1, 899.00, 2.00, 17.98, '', '', '', '2018-04-03 20:51:18', '', 'success', 1, 1, 1, 0, 14, '30', 'suganya,dfd,dfdfd,dfdfd,123456,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 37.88, 909.10);
INSERT INTO `nm_order_payu` VALUES (79, 273, 72, 750, 2, '77baf2687873ae5aa98b', 'suganya@pofitec.com', '', 'suganya', 1, 750.00, 0.00, 0.00, '', '', '', '2018-04-03 21:03:44', '', 'success', 1, 5, 1, 0, 0, '0', 'suganya,tyty,tyt,tytyt,123456,1234567890,suganya@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 7.50, 742.50);
INSERT INTO `nm_order_payu` VALUES (80, 275, 178, 23, 1, 'ee4701bd60f59804f437', 'nagoor@pofitec.com', '', 'Nagoor meeran', 1, 23.00, 0.00, 0.00, '', '', '', '2018-04-09 12:28:27', '', 'success', 1, 1, 1, 0, 14, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 20, 4.83, 18.17);
INSERT INTO `nm_order_payu` VALUES (81, 201, 171, 100, 1, '244fff4c45bd2451b423', 'suganya.t@pofitec.com', '', 'suganya', 1, 100.00, 0.00, 0.00, '', '', '', '2018-04-12 12:08:44', '', 'success', 1, 1, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 7.00, 93.00);
INSERT INTO `nm_order_payu` VALUES (82, 201, 184, 5, 1, 'c4cc1d2b07a2d502e685', 'suganya.t@pofitec.com', '', 'suganya', 1, 5.00, 0.00, 0.00, '', '', '', '2018-04-12 19:48:53', '', 'success', 1, 1, 1, 0, 0, '50', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 3.85, 51.15);
INSERT INTO `nm_order_payu` VALUES (83, 201, 67, 5, 2, 'c4cc1d2b07a2d502e685', 'suganya.t@pofitec.com', '', 'suganya', 1, 5.00, 0.00, 0.00, '', '', '', '2018-04-12 19:48:53', '', 'success', 1, 1, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 0.35, 4.65);
INSERT INTO `nm_order_payu` VALUES (84, 273, 181, 750, 1, 'b5406e429779f579966a', 'suganya@pofitec.com', '', 'suganya', 1, 750.00, 3.00, 22.50, '', '', '', '2018-04-12 21:02:09', '', 'success', 1, 1, 1, 0, 0, '0', 'suganya,ttyt,yty,syfdfdf,121232,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 30.90, 741.60);
INSERT INTO `nm_order_payu` VALUES (85, 273, 161, 30, 1, 'fdb8245504ed6c513f8a', 'suganya@pofitec.com', '', 'suganya', 1, 30.00, 0.00, 0.00, '', '', '', '2018-04-12 21:04:02', '', 'success', 1, 1, 1, 0, 4, '0', 'suganya,fgfg,fgfg,fyyy,123456,1234567890,suganya@pofitec.com,Chennai,India', 95, '0', '0', '0', '0', '0', 0, 2.10, 27.90);
INSERT INTO `nm_order_payu` VALUES (86, 273, 196, 100, 1, 'deea6a51d0a8e2a39ae7', 'suganya@pofitec.com', '', 'suganya', 1, 100.00, 3.00, 3.00, '', '', '', '2018-04-12 21:26:46', '', 'success', 1, 1, 1, 0, 0, '0', 'suganya,xfdf,dfdf,dfdf,123456,1234567890,suganya@pofitec.com,Chennai,India', 95, '0', '0', '0', '0', '0', 0, 7.21, 95.79);
INSERT INTO `nm_order_payu` VALUES (87, 201, 112, 7500, 1, 'baf3cca6b08a6277bc7e', 'suganya.t@pofitec.com', '', 'suganya', 3, 22500.00, 0.00, 0.00, '', '', '', '2018-04-13 22:08:33', '', 'success', 1, 1, 1, 0, 0, '150', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 725.96, 4756.50, 17893.50);
INSERT INTO `nm_order_payu` VALUES (88, 201, 72, 750, 2, 'baf3cca6b08a6277bc7e', 'suganya.t@pofitec.com', '', 'suganya', 1, 750.00, 0.00, 0.00, '', '', '', '2018-04-13 22:08:33', '', 'success', 1, 1, 1, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '0', '0', '0', '0', '0', 24.04, 52.50, 697.50);
INSERT INTO `nm_order_payu` VALUES (89, 201, 67, 5, 2, 'e0aee06be67b524efcea', 'suganya.t@pofitec.com', '', 'suganya.t', 7, 35.00, 0.00, 0.00, '', '', '', '2018-04-16 16:12:04', '', 'success', 1, 1, 1, 0, 0, '0', 'suganya.t,ram nagar,cbe,tn,123456,8012122975 ,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 2.45, 32.55);

-- ----------------------------
-- Table structure for nm_ordercod
-- ----------------------------
DROP TABLE IF EXISTS `nm_ordercod`;
CREATE TABLE `nm_ordercod`  (
  `cod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cod_transaction_id` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cod_cus_id` int(10) UNSIGNED NOT NULL,
  `cod_pro_id` int(11) UNSIGNED NOT NULL,
  `cod_prod_unitPrice` double NOT NULL DEFAULT 0,
  `cod_order_type` tinyint(4) NOT NULL COMMENT '1-product,2-deals',
  `cod_qty` int(11) NOT NULL,
  `cod_amt` decimal(10, 2) NOT NULL COMMENT '(unit_price*quantity)',
  `cod_tax` decimal(10, 2) NOT NULL COMMENT 'per_product_tax (in %)',
  `cod_taxAmt` decimal(10, 2) NOT NULL,
  `cod_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cod_status` tinyint(4) NOT NULL COMMENT '1-sucess,2-complete,3-hold,4-failed',
  `delivery_status` int(11) NOT NULL COMMENT '1->order_placed,2->order_packed,3->Dispatched,4->Delivered,5->cancel pending,6->cancelled,7->return pending ,8->returned,9->replace pending,10->replaced',
  `created_date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cod_paytype` smallint(6) NOT NULL COMMENT '0=>cash on delivery',
  `cod_pro_color` tinyint(4) NOT NULL,
  `cod_pro_size` tinyint(4) NOT NULL,
  `cod_shipping_amt` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cod_ship_addr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cod_merchant_id` int(11) NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_amount_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_amount` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_total_amount` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wallet_amount` double NOT NULL,
  `cod_prod_actualprice` double NOT NULL,
  `mer_commission_amt` decimal(10, 2) NOT NULL,
  `mer_amt` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`cod_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 316 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_ordercod
-- ----------------------------
INSERT INTO `nm_ordercod` VALUES (33, 'ORDER1001', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-22 03:47:15', 1, 4, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (34, 'ORDER1002', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-22 04:48:42', 3, 6, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (36, 'ORDER1004', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-25 14:01:26', 3, 6, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (37, 'ORDER1005', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-25 05:25:23', 1, 8, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (38, 'ORDER1006', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-25 05:30:12', 1, 8, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (40, 'ORDER1008', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-25 05:38:03', 1, 10, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (41, 'ORDER1009', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-25 05:46:06', 3, 6, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (42, 'ORDER1010', 201, 1, 1200, 2, 1, 1200.00, 5.00, 60.00, '2017-12-25 06:39:35', 3, 5, '', 0, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 63.25, 1201.75);
INSERT INTO `nm_ordercod` VALUES (43, 'ORDER1011', 201, 1, 1200, 2, 1, 1200.00, 5.00, 60.00, '2017-12-25 06:41:00', 1, 8, '', 0, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 63.25, 1201.75);
INSERT INTO `nm_ordercod` VALUES (44, 'ORDER1012', 201, 1, 1200, 2, 1, 1200.00, 5.00, 60.00, '2017-12-25 07:13:00', 1, 8, '', 0, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 63.25, 1201.75);
INSERT INTO `nm_ordercod` VALUES (45, 'ORDER1013', 201, 1, 1200, 2, 1, 1200.00, 5.00, 60.00, '2017-12-25 07:28:51', 1, 8, '', 0, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 63.25, 1201.75);
INSERT INTO `nm_ordercod` VALUES (46, 'ORDER1014', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2017-12-25 08:40:24', 1, 6, '', 0, 24, 14, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (47, 'ORDER1015', 201, 1, 1200, 2, 1, 1200.00, 5.00, 60.00, '2017-12-26 12:46:52', 1, 10, '', 0, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 63.25, 1201.75);
INSERT INTO `nm_ordercod` VALUES (48, 'ORDER1016', 201, 1, 1200, 2, 1, 1200.00, 5.00, 60.00, '2017-12-26 13:00:38', 1, 8, '', 0, 0, 0, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,city english,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 63.25, 1201.75);
INSERT INTO `nm_ordercod` VALUES (49, 'ORDER1017', 207, 13, 800, 2, 1, 800.00, 0.00, 0.00, '2017-12-27 04:03:07', 3, 1, '', 0, 0, 0, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 1000, 168.00, 632.00);
INSERT INTO `nm_ordercod` VALUES (50, 'Sc8ninTt', 207, 9, 100, 2, 1, 100.00, 0.00, 0.00, '2017-12-29 07:32:28', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 5.00, 95.00);
INSERT INTO `nm_ordercod` VALUES (51, 'SPJ2F40E', 207, 9, 100, 2, 1, 100.00, 0.00, 0.00, '2017-12-29 07:33:35', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 5.00, 95.00);
INSERT INTO `nm_ordercod` VALUES (52, 'ORDER1001', 207, 38, 2, 1, 1, 2.00, 5.00, 0.10, '2017-12-29 07:36:37', 3, 1, '', 0, 0, 14, '5', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 500, 0.36, 6.75);
INSERT INTO `nm_ordercod` VALUES (53, 'ORDER1001', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 07:36:37', 3, 1, '', 0, 0, 0, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 1000, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (54, 'RQ8EghQa', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 07:58:34', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (55, 'TPE3BLG8', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 08:19:55', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (56, 'DusasjPs', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 08:40:52', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (57, 'Fo0ZAzVo', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 08:42:11', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (58, 'djqcV7Nu', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 08:58:33', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (59, '0dWtnzPb', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 09:20:59', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (60, '3IsXsnFK', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 09:33:53', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (61, 'UqXnt3g1', 207, 9, 100, 2, 2, 200.00, 0.00, 0.00, '2017-12-29 09:50:56', 3, 1, '', 0, 0, 0, '0', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 41, '', '', '', '', '', 0, 0, 10.00, 190.00);
INSERT INTO `nm_ordercod` VALUES (62, 'ORDER1001', 207, 44, 11, 1, 1, 11.00, 0.00, 0.00, '2018-01-02 03:50:30', 3, 1, '', 0, 0, 14, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 23, 0.55, 10.45);
INSERT INTO `nm_ordercod` VALUES (63, 'ORDER1002', 207, 44, 11, 1, 1, 11.00, 0.00, 0.00, '2018-01-02 04:11:04', 3, 1, '', 0, 0, 14, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 23, 0.55, 10.45);
INSERT INTO `nm_ordercod` VALUES (64, 'ORDER1003', 197, 41, 5, 1, 1, 5.00, 0.00, 0.00, '2018-01-03 07:31:37', 3, 6, '', 0, 0, 14, '0', 'venugopal,jhkjhkk,jhkj,jkk,645678877,3456765434,venugopal@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 20, 1.05, 3.95);
INSERT INTO `nm_ordercod` VALUES (65, 'ORDER1003', 197, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-03 07:31:37', 3, 6, '', 0, 0, 14, '40', 'venugopal,jhkjhkk,jhkj,jkk,645678877,3456765434,venugopal@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (66, 'ORDER1004', 197, 16, 8500, 2, 5, 42500.00, 5.00, 2125.00, '2018-01-03 09:32:22', 3, 1, '', 0, 0, 0, '200', 'venugopal,jhkjhkk,jhkj,jkk,645678877,3456765434,venugopal@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 9000, 2241.25, 42583.75);
INSERT INTO `nm_ordercod` VALUES (67, 'ORDER1005', 207, 19, 250, 2, 2, 500.00, 5.00, 25.00, '2018-01-04 15:03:15', 3, 1, '', 0, 0, 0, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 500, 26.25, 498.75);
INSERT INTO `nm_ordercod` VALUES (68, 'ORDER1006', 207, 118, 100, 1, 4, 400.00, 0.00, 0.00, '2018-01-04 05:50:39', 3, 1, '', 0, 0, 0, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 67, '0', '0', '0', '0', '0', 0, 200, 40.00, 360.00);
INSERT INTO `nm_ordercod` VALUES (69, 'ORDER1007', 207, 41, 5, 1, 7, 35.00, 0.00, 0.00, '2018-01-04 06:46:10', 1, 4, '', 0, 0, 14, '0', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 20, 7.35, 27.65);
INSERT INTO `nm_ordercod` VALUES (70, 'ORDER1008', 207, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2018-01-04 06:51:25', 3, 1, '', 0, 24, 14, '5', 'suganya,sfsdf,df,tamilnadu,614523,9856322356,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (71, 'ORDER1009', 206, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2018-01-05 14:46:31', 3, 1, '', 0, 24, 14, '5', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (72, 'ORDER1009', 206, 167, 300, 1, 1, 300.00, 12.00, 36.00, '2018-01-05 14:46:31', 3, 1, '', 0, 37, 7, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 456, 0.00, 336.00);
INSERT INTO `nm_ordercod` VALUES (73, 'ORDER1010', 212, 168, 350, 1, 2, 700.00, 0.00, 0.00, '2018-01-05 05:17:06', 3, 1, '', 0, 13, 17, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 450, 0.00, 700.00);
INSERT INTO `nm_ordercod` VALUES (74, 'ORDER1011', 212, 168, 350, 1, 1, 350.00, 0.00, 0.00, '2018-01-05 05:22:31', 3, 1, '', 0, 18, 17, '0', 'bala,Coimbatore  ram nagar,ram nagar,Tamil Nadu,641001,9874569856,bala@gmail.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 450, 0.00, 350.00);
INSERT INTO `nm_ordercod` VALUES (75, 'ORDER1012', 212, 25, 300, 2, 1, 300.00, 0.00, 0.00, '2018-01-05 05:25:30', 3, 1, '', 0, 0, 0, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 600, 0.00, 300.00);
INSERT INTO `nm_ordercod` VALUES (76, 'ORDER1013', 213, 167, 300, 1, 1, 300.00, 12.00, 36.00, '2018-01-05 09:58:04', 3, 1, '', 0, 47, 4, '0', 'vishnu.v.r,coimbatore,coimbatore,tamilnadu,641104,8891619125,vishnu@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 456, 0.00, 336.00);
INSERT INTO `nm_ordercod` VALUES (77, 'ORDER1014', 214, 170, 5, 1, 2, 10.00, 2.00, 0.20, '2018-01-08 14:19:29', 3, 1, '', 0, 20, 4, '10', 'test name  sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@,test address1  sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@,test address2   sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@,test state  sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@,654321,4244114321312,vinodbabu@pofitec.com,TEst city   sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@,test ccountry   sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@', 62, '0', '0', '0', '0', '0', 0, 10, 0.00, 20.20);
INSERT INTO `nm_ordercod` VALUES (78, 'ORDER1015', 214, 170, 5, 1, 3, 15.00, 2.00, 0.30, '2018-01-08 14:29:03', 3, 1, '', 0, 15, 5, '15', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.00, 30.30);
INSERT INTO `nm_ordercod` VALUES (79, 'ORDER1016', 214, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-08 14:55:08', 3, 1, '', 0, 9, 8, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.00, 10.10);
INSERT INTO `nm_ordercod` VALUES (80, 'ORDER1017', 214, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-08 15:00:55', 3, 1, '', 0, 20, 9, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.00, 10.10);
INSERT INTO `nm_ordercod` VALUES (81, 'rBbSwFlK', 201, 23, 1800, 2, 1, 1800.00, 5.00, 90.00, '2018-01-08 07:37:37', 3, 1, '', 0, 0, 0, '50', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 68, '', '', '', '', '', 0, 0, 0.00, 1940.00);
INSERT INTO `nm_ordercod` VALUES (82, 'dda54NE1', 201, 23, 1800, 2, 2, 3600.00, 5.00, 180.00, '2018-01-08 07:38:21', 3, 1, '', 0, 0, 0, '100', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 68, '', '', '', '', '', 0, 0, 0.00, 3880.00);
INSERT INTO `nm_ordercod` VALUES (83, 'ORDER1001', 214, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-08 07:47:56', 3, 1, '', 0, 13, 7, '5', 'test,dfgd,dfdasf,sdfdsfds,324324,3245243242,vinodbabu@pofitec.com,sdfdsfds,sdfdsfds', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (84, 'xBlz8M7J', 207, 169, 305, 1, 19, 5795.00, 3.00, 173.85, '2018-01-08 08:03:40', 3, 1, '', 0, 0, 0, '0.00', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 68, '', '', '', '', '', 0, 0, 0.00, 5968.85);
INSERT INTO `nm_ordercod` VALUES (85, '4MSRxmW4', 207, 169, 305, 1, 2, 610.00, 3.00, 18.30, '2018-01-08 08:04:08', 3, 1, '', 0, 0, 0, '0.00', 'suganya,test ship addr1,test ship addr2,TN,654321,7373857689,suganya.t@pofitec.com', 68, '', '', '', '', '', 0, 0, 0.00, 628.30);
INSERT INTO `nm_ordercod` VALUES (86, '2eNWsiCd', 207, 169, 305, 1, 2, 610.00, 3.00, 18.30, '2018-01-08 08:13:17', 3, 1, '', 0, 0, 0, '0', 'gahdhi,test ship addr1,test ship addr2,TN,641654,9944349002,suganyya.t@pofitec.com', 68, '', '', '', '', '', 0, 0, 0.00, 628.30);
INSERT INTO `nm_ordercod` VALUES (87, 'lTcWNf4F', 201, 164, 30000, 1, 2, 60000.00, 10.00, 6000.00, '2018-01-08 08:29:35', 3, 5, '', 0, 10, 7, '2400', 'gahdhi,test ship addr1,test ship addr2,TN,641654,9944349002,suganyya.t@pofitec.com', 62, '', '', '', '', '', 0, 0, 684.00, 67716.00);
INSERT INTO `nm_ordercod` VALUES (88, 'lTcWNf4F', 201, 138, 8500, 1, 5, 42500.00, 10.00, 4250.00, '2018-01-08 08:29:35', 3, 1, '', 0, 10, 5, '750', 'gahdhi,test ship addr1,test ship addr2,TN,641654,9944349002,suganyya.t@pofitec.com', 60, '', '', '', '', '', 0, 0, 4750.00, 42750.00);
INSERT INTO `nm_ordercod` VALUES (89, 'ORDER1001', 201, 173, 80, 1, 2, 160.00, 1.00, 1.60, '2018-01-10 14:10:38', 3, 1, '', 0, 0, 0, '2', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 100, 1.64, 161.96);
INSERT INTO `nm_ordercod` VALUES (90, 'ORDER1001', 201, 172, 40, 1, 2, 80.00, 0.00, 0.00, '2018-01-10 14:10:38', 3, 1, '', 0, 0, 0, '20', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 50, 1.00, 99.00);
INSERT INTO `nm_ordercod` VALUES (91, 'ORDER1001', 201, 28, 10000, 2, 5, 50000.00, 5.00, 2500.00, '2018-01-10 14:10:38', 3, 1, '', 0, 0, 0, '1250', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 25000, 537.50, 53212.50);
INSERT INTO `nm_ordercod` VALUES (92, 'ORDER1002', 201, 28, 10000, 2, 5, 50000.00, 5.00, 2500.00, '2018-01-10 14:18:43', 3, 1, '', 0, 0, 0, '1250', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 25000, 537.50, 53212.50);
INSERT INTO `nm_ordercod` VALUES (93, 'ORDER1003', 201, 28, 10000, 2, 5, 50000.00, 5.00, 2500.00, '2018-01-10 15:02:05', 3, 1, '', 0, 0, 0, '1250', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 25000, 537.50, 53212.50);
INSERT INTO `nm_ordercod` VALUES (94, 'ORDER1004', 220, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-10 15:16:01', 3, 1, '', 0, 11, 9, '10', 'venugopal,dsfsd,sdfsd,fsdfsdf,4345,3456765434,venugopal@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (95, 'ORDER1005', 220, 167, 300, 1, 1, 300.00, 12.00, 36.00, '2018-01-10 15:25:43', 3, 5, '', 0, 37, 4, '0', 'venugopal,dsfsd,sdfsd,fsdfsdf,546456,3456765434,venugopal@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 456, 0.00, 336.00);
INSERT INTO `nm_ordercod` VALUES (96, 'ORDER1006', 220, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-10 03:38:28', 3, 1, '', 0, 11, 11, '10', 'venugopal,rwer,34,3423,4234,3456765434,venugopal@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (97, 'ORDER1007', 220, 173, 80, 1, 1, 80.00, 1.00, 0.80, '2018-01-10 04:09:51', 3, 1, '', 0, 0, 7, '1', 'venugopal,l;\'l,l;\',8978,987978,3456765434,venugopal@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 0.82, 80.98);
INSERT INTO `nm_ordercod` VALUES (98, 'ORDER1007', 220, 173, 80, 1, 1, 80.00, 1.00, 0.80, '2018-01-10 04:09:51', 3, 1, '', 0, 8, 7, '1', 'venugopal,l;\'l,l;\',8978,987978,3456765434,venugopal@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 0.82, 80.98);
INSERT INTO `nm_ordercod` VALUES (99, 'ORDER1008', 201, 30, 2500, 2, 5, 12500.00, 0.00, 0.00, '2018-01-10 06:33:18', 3, 1, '', 0, 0, 0, '0', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 0, 5200, 2625.00, 9875.00);
INSERT INTO `nm_ordercod` VALUES (100, 'ORDER1009', 206, 167, 300, 1, 1, 300.00, 12.00, 36.00, '2018-01-10 06:59:49', 3, 5, '', 0, 47, 5, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 456, 0.00, 336.00);
INSERT INTO `nm_ordercod` VALUES (101, 'ORDER1009', 206, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-10 06:59:49', 3, 1, '', 0, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 0.00, 632.40);
INSERT INTO `nm_ordercod` VALUES (102, 'ORDER1009', 206, 21, 100000000, 2, 1, 99999999.99, 99.00, 99000000.00, '2018-01-10 06:59:49', 3, 1, '', 0, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 1000000000, 1990000.00, 99999999.99);
INSERT INTO `nm_ordercod` VALUES (103, 'ORDER1010', 201, 31, 250, 2, 5, 1250.00, 2.00, 25.00, '2018-01-10 09:37:38', 3, 1, '', 0, 0, 0, '115', 'suganya,cbe,cbe,tn,123456,8012122975,suganya@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 0, 520, 291.90, 1098.10);
INSERT INTO `nm_ordercod` VALUES (104, 'ORDER1011', 212, 173, 80, 1, 2, 160.00, 1.00, 1.60, '2018-01-10 09:45:46', 3, 1, '', 0, 5, 5, '2', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 1.64, 161.96);
INSERT INTO `nm_ordercod` VALUES (105, 'ORDER1012', 212, 167, 300, 1, 2, 600.00, 12.00, 72.00, '2018-01-10 09:50:55', 3, 5, '', 0, 47, 5, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 456, 0.00, 672.00);
INSERT INTO `nm_ordercod` VALUES (106, 'ORDER1013', 212, 173, 80, 1, 1, 80.00, 1.00, 0.80, '2018-01-10 09:54:09', 3, 1, '', 0, 8, 4, '1', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 0.82, 80.98);
INSERT INTO `nm_ordercod` VALUES (107, 'ORDER1014', 212, 173, 80, 1, 1, 80.00, 1.00, 0.80, '2018-01-10 09:57:36', 3, 1, '', 0, 8, 5, '1', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 0.82, 80.98);
INSERT INTO `nm_ordercod` VALUES (108, 'ORDER1015', 212, 173, 80, 1, 1, 80.00, 1.00, 0.80, '2018-01-11 12:44:35', 3, 5, '', 0, 8, 5, '1', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 0.82, 80.98);
INSERT INTO `nm_ordercod` VALUES (109, 'ORDER1016', 201, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-11 12:46:36', 3, 1, '', 0, 20, 4, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (110, 'ORDER1017', 212, 26, 22000, 2, 1, 22000.00, 0.00, 0.00, '2018-01-11 12:56:19', 3, 1, '', 0, 0, 0, '500', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 25000, 0.00, 22500.00);
INSERT INTO `nm_ordercod` VALUES (111, 'ORDER1018', 212, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-11 13:09:47', 3, 1, '', 0, 0, 0, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,balamurugan@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 0.00, 632.40);
INSERT INTO `nm_ordercod` VALUES (112, 'ORDER1019', 212, 26, 22000, 2, 1, 22000.00, 0.00, 0.00, '2018-01-11 13:12:20', 3, 1, '', 0, 0, 0, '500', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,balamurugan@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 25000, 0.00, 22500.00);
INSERT INTO `nm_ordercod` VALUES (113, 'ORDER1020', 212, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-11 13:21:55', 3, 1, '', 0, 10, 9, '10', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,balamurugan@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (114, 'ORDER1021', 212, 168, 350, 1, 1, 350.00, 0.00, 0.00, '2018-01-11 13:48:38', 3, 1, '', 0, 18, 18, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,balamurugan@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 450, 0.00, 350.00);
INSERT INTO `nm_ordercod` VALUES (115, 'ORDER1022', 220, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-11 14:35:59', 3, 1, '', 0, 20, 4, '5', 'venugopal_shipping name,shipping adress 1,shipping adress2,shipping state,111111,0000000000,shippingID@pofitec.com,shipping city,shipping country', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (116, 'ORDER1023', 220, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-11 14:41:09', 3, 1, '', 0, 0, 0, '0', 'venugopal_shippin,shipping adress  Line1,shipping Address Line2,shipping state,333333,2222222222,shippingvenugopal@pofitec.com,Coimbatore,shipping  India', 68, '0', '0', '0', '0', '0', 0, 750, 0.00, 632.40);
INSERT INTO `nm_ordercod` VALUES (117, 'ORDER1024', 220, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-11 03:56:29', 3, 1, '', 0, 20, 4, '5', 'venugopal_s,gfh,gfh,gf,123456,3456765434,venugopal@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (118, 'ORDER1025', 232, 167, 300, 1, 1, 300.00, 12.00, 36.00, '2018-01-11 05:17:25', 3, 1, '', 0, 47, 4, '0', 'qwerty,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 456, 0.00, 336.00);
INSERT INTO `nm_ordercod` VALUES (119, 'ORDER1026', 232, 164, 30000, 1, 1, 30000.00, 10.00, 3000.00, '2018-01-11 05:22:29', 3, 1, '', 0, 47, 4, '1200', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,etrhgfh,123456,7418529635,suganya.t@pofitec.com,werewtre,tyrytjhg', 62, '0', '0', '0', '0', '0', 0, 90000, 342.00, 33858.00);
INSERT INTO `nm_ordercod` VALUES (120, 'ORDER1026', 232, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-11 05:22:29', 3, 1, '', 0, 11, 9, '10', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,etrhgfh,123456,7418529635,suganya.t@pofitec.com,werewtre,tyrytjhg', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (121, 'ORDER1027', 232, 138, 8500, 1, 1, 8500.00, 10.00, 850.00, '2018-01-11 05:43:49', 3, 1, '', 0, 10, 5, '150', 'users,wadsedfggh,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 9000, 950.00, 8550.00);
INSERT INTO `nm_ordercod` VALUES (122, 'ORDER1028', 232, 138, 8500, 1, 1, 8500.00, 10.00, 850.00, '2018-01-11 05:54:11', 3, 1, '', 0, 10, 5, '150', 'users,rtryuy57,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 9000, 950.00, 8550.00);
INSERT INTO `nm_ordercod` VALUES (123, 'ORDER1029', 212, 174, 1, 1, 2, 2.00, 12.00, 0.24, '2018-01-11 08:59:12', 3, 1, '', 0, 0, 4, '0', 'bala,gandhipuram,Bus stand,tn,640122,0123456789,bala@gmail.com,1,1', 60, '0', '0', '0', '0', '0', 0, 12, 0.22, 2.02);
INSERT INTO `nm_ordercod` VALUES (124, 'ORDER1030', 212, 27, 620, 2, 2, 1240.00, 2.00, 24.80, '2018-01-11 09:11:41', 3, 1, '', 0, 0, 0, '0', 'bala,gandhipuram,Bus stand,tn,640122,0123456789,balamurugan@pofitec.com,12,1', 68, '0', '0', '0', '0', '0', 0, 750, 0.00, 1264.80);
INSERT INTO `nm_ordercod` VALUES (125, 'ORDER1031', 212, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-11 09:15:55', 3, 1, '', 0, 15, 5, '5', 'bala,gandhipuram,Bus stand,tn,640122,0123456789,balamurugan@pofitec.com,22,7', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (126, 'ORDER1032', 212, 174, 1, 1, 1, 1.00, 12.00, 0.12, '2018-01-11 09:32:13', 3, 1, '', 0, 0, 4, '0', 'bala,gandhipuram,Bus stand,tn,640122,9874569856,balamurugan@pofitec.com,18,8', 60, '0', '0', '0', '0', '0', 0, 12, 0.11, 1.01);
INSERT INTO `nm_ordercod` VALUES (127, 'ORDER1033', 212, 168, 350, 1, 1, 350.00, 0.00, 0.00, '2018-01-11 10:03:51', 3, 1, '', 0, 13, 18, '0', 'bala,gandhipuram,Bus stand,tn,640122,9874569856,balamurugan@pofitec.com,1,1', 68, '0', '0', '0', '0', '0', 0, 450, 0.00, 350.00);
INSERT INTO `nm_ordercod` VALUES (128, 'ORDER1034', 232, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-12 12:09:41', 3, 1, '', 0, 20, 4, '5', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,14,1', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (129, 'ORDER1035', 214, 174, 1, 1, 1, 1.00, 12.00, 0.12, '2018-01-12 13:01:39', 3, 1, '', 0, 0, 4, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu1@pofitec.com,14,1', 60, '0', '0', '0', '0', '0', 0, 12, 0.11, 1.01);
INSERT INTO `nm_ordercod` VALUES (130, 'ORDER1036', 214, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-12 13:21:27', 3, 1, '', 0, 20, 4, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,14,1', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (131, 'ORDER1037', 232, 174, 1, 1, 2, 2.00, 12.00, 0.24, '2018-01-12 14:13:59', 3, 1, '', 0, 0, 4, '0', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Indira,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.22, 2.02);
INSERT INTO `nm_ordercod` VALUES (132, 'ORDER1037', 232, 138, 8500, 1, 1, 8500.00, 10.00, 850.00, '2018-01-12 14:13:59', 3, 1, '', 0, 10, 5, '150', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Indira,India', 60, '0', '0', '0', '0', '0', 0, 9000, 950.00, 8550.00);
INSERT INTO `nm_ordercod` VALUES (133, 'ORDER1038', 232, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-12 14:26:52', 3, 1, '', 0, 11, 9, '10', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,,United States of America', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (134, 'ORDER1039', 232, 164, 30000, 1, 1, 30000.00, 10.00, 3000.00, '2018-01-12 14:46:17', 3, 1, '', 0, 11, 4, '1200', 'dsfds,fggfh,fdgfg,fdh,342353,43254365656545,reg@dfd.cvc,0,0', 62, '0', '0', '0', '0', '0', 0, 90000, 342.00, 33858.00);
INSERT INTO `nm_ordercod` VALUES (135, 'ORDER1040', 232, 174, 1, 1, 1, 1.00, 12.00, 0.12, '2018-01-12 14:54:12', 3, 1, '', 0, 0, 4, '0', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,0,0', 60, '0', '0', '0', '0', '0', 0, 12, 0.11, 1.01);
INSERT INTO `nm_ordercod` VALUES (136, 'ORDER1041', 232, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-12 14:55:24', 3, 1, '', 0, 20, 4, '5', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,0,0', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (137, 'ORDER1042', 232, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-12 14:57:19', 3, 1, '', 0, 20, 4, '5', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,0,0', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (138, 'ORDER1043', 232, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-12 15:02:39', 3, 1, '', 0, 11, 11, '10', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,salem ,United States of America', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (139, 'ORDER1044', 232, 168, 350, 1, 1, 350.00, 0.00, 0.00, '2018-01-12 15:03:15', 3, 1, '', 0, 13, 17, '0', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,salem ,United States of America', 68, '0', '0', '0', '0', '0', 0, 450, 0.00, 350.00);
INSERT INTO `nm_ordercod` VALUES (140, 'ORDER1045', 232, 138, 8500, 1, 1, 8500.00, 10.00, 850.00, '2018-01-12 15:06:46', 3, 1, '', 0, 10, 5, '150', 'users,rgrd,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,0,0', 60, '0', '0', '0', '0', '0', 0, 9000, 950.00, 8550.00);
INSERT INTO `nm_ordercod` VALUES (141, 'ORDER1046', 232, 174, 1, 1, 1, 1.00, 12.00, 0.12, '2018-01-12 15:08:40', 3, 1, '', 0, 0, 4, '0', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,0,0', 60, '0', '0', '0', '0', '0', 0, 12, 0.11, 1.01);
INSERT INTO `nm_ordercod` VALUES (142, 'ORDER1047', 232, 24, 42229, 2, 1, 42229.00, 5.00, 2111.45, '2018-01-12 15:10:47', 3, 1, '', 0, 0, 0, '0', 'sfdsf,fdgdhfd,gfdg,dfdsg,654657,354365464,dsfg@gf.cvv,,India', 68, '0', '0', '0', '0', '0', 0, 43399, 0.00, 44340.45);
INSERT INTO `nm_ordercod` VALUES (143, 'ORDER1515760977143', 232, 168, 350, 1, 1, 350.00, 0.00, 0.00, '2018-01-12 08:42:57', 3, 1, '', 0, 13, 18, '0', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 450, 0.00, 350.00);
INSERT INTO `nm_ordercod` VALUES (144, 'ORDER1515760977144', 232, 26, 22000, 2, 1, 22000.00, 0.00, 0.00, '2018-01-12 08:42:57', 3, 1, '', 0, 0, 0, '500', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 25000, 0.00, 22500.00);
INSERT INTO `nm_ordercod` VALUES (145, 'ORDER1515761002145', 214, 174, 1, 1, 1, 1.00, 12.00, 0.12, '2018-01-12 08:43:22', 3, 1, '', 0, 0, 4, '0', 'vinod babu,fasdasdgfh,asdsafgdfg,Test statwew,123456,4244114321312543543545435,vinodbabu@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.11, 1.01);
INSERT INTO `nm_ordercod` VALUES (146, 'ORDER1515761158146', 232, 26, 22000, 2, 1, 22000.00, 0.00, 0.00, '2018-01-12 08:45:58', 3, 1, '', 0, 0, 0, '500', 'users,asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS,cbe,ertrd,123456,7418529635,suganya.t@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 25000, 0.00, 22500.00);
INSERT INTO `nm_ordercod` VALUES (147, 'ORDER1515761998147', 201, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-12 08:59:57', 3, 1, '', 0, 20, 4, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (148, 'ORDER1515819755148', 201, 44, 11, 1, 1, 11.00, 0.00, 0.00, '2018-01-13 13:02:35', 3, 1, '', 0, 0, 14, '0', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 23, 0.55, 10.45);
INSERT INTO `nm_ordercod` VALUES (149, 'ORDER1515820016149', 201, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-13 13:06:56', 3, 1, '', 0, 20, 5, '5', 'suganya,cbe,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (150, 'ORDER1515846047150', 249, 21, 100000000, 2, 1, 99999999.99, 99.00, 99000000.00, '2018-01-13 08:20:47', 3, 1, '', 0, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulaero@gmail.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 1000000000, 1990000.00, 99999999.99);
INSERT INTO `nm_ordercod` VALUES (151, 'ORDER1515846205151', 249, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-13 08:23:25', 3, 5, '', 0, 0, 14, '40', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (152, 'ORDER1515846895152', 249, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-13 08:34:54', 3, 5, '', 0, 0, 14, '40', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulaero@gmail.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (153, 'ORDER1515846987153', 249, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-13 08:36:27', 3, 5, '', 0, 0, 14, '40', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (154, 'ORDER1515847427154', 249, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-13 08:43:47', 3, 5, '', 0, 0, 14, '40', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (155, 'ORDER1515848274155', 249, 176, 1000, 1, 1, 1000.00, 0.00, 0.00, '2018-01-13 08:57:54', 3, 1, '', 0, 0, 14, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1500, 100.00, 900.00);
INSERT INTO `nm_ordercod` VALUES (156, 'ORDER1515851015156', 249, 176, 1000, 1, 1, 1000.00, 0.00, 0.00, '2018-01-13 09:43:35', 3, 5, '', 0, 0, 14, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulaero@gmail.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1500, 100.00, 900.00);
INSERT INTO `nm_ordercod` VALUES (157, '', 201, 44, 11, 1, 1, 11.00, 0.00, 0.00, '2018-01-16 12:17:56', 3, 1, '', 0, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 23, 0.55, 10.45);
INSERT INTO `nm_ordercod` VALUES (158, 'ORDER1516076276158', 201, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-16 12:17:56', 3, 5, '', 0, 0, 14, '40', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (159, '', 201, 35, 5, 1, 1, 5.00, 4.00, 0.20, '2018-01-16 12:23:29', 3, 1, '', 0, 23, 0, '4', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 555, 0.46, 8.74);
INSERT INTO `nm_ordercod` VALUES (160, 'ORDER1516076610160', 201, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-16 12:23:29', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 25.30, 607.10);
INSERT INTO `nm_ordercod` VALUES (161, 'ORDER1516077358161', 250, 176, 1000, 1, 1, 1000.00, 0.00, 0.00, '2018-01-16 12:35:58', 3, 1, '', 0, 0, 14, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1500, 100.00, 900.00);
INSERT INTO `nm_ordercod` VALUES (162, '', 201, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-01-16 12:47:19', 3, 5, '', 0, 11, 9, '10', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (163, 'ORDER1516078039163', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2018-01-16 12:47:19', 3, 6, '', 0, 24, 14, '5', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (164, 'ORDER1516078628164', 250, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-16 12:57:08', 3, 1, '', 0, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 25.30, 607.10);
INSERT INTO `nm_ordercod` VALUES (165, 'ORDER1516083178166', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2018-01-16 14:12:57', 3, 6, '', 0, 24, 14, '5', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (166, 'ORDER1516083178166', 201, 33, 45, 2, 1, 45.00, 10.00, 4.50, '2018-01-16 14:12:57', 1, 4, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 56, 2.48, 47.03);
INSERT INTO `nm_ordercod` VALUES (167, 'ORDER1516084251168', 214, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-01-16 14:30:51', 3, 1, '', 0, 0, 4, '0', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (168, 'ORDER1516084251168', 214, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-16 14:30:51', 3, 1, '', 0, 20, 4, '5', 'vinod babu d gdf,fasdasdgfh fh,asdsafgdfgfghf,Test state21,123456,4244114321312543543545435,vinodbabu@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (169, 'ORDER1516087066170', 220, 35, 5, 1, 1, 5.00, 4.00, 0.20, '2018-01-16 15:17:45', 3, 1, '', 0, 23, 0, '4', 'venugopal,ytrytry,tryrty,Tytramil NAduy,645645,3456765434,venugopal@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 555, 0.46, 8.74);
INSERT INTO `nm_ordercod` VALUES (170, 'ORDER1516087066170', 220, 34, 23, 2, 1, 23.00, 44.00, 10.12, '2018-01-16 15:17:45', 3, 1, '', 0, 0, 0, '0', 'venugopal,ytrytry,tryrty,Tytramil NAduy,645645,3456765434,venugopal@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 24, 1.66, 31.46);
INSERT INTO `nm_ordercod` VALUES (171, 'ORDER1516087172171', 220, 35, 5, 1, 1, 5.00, 4.00, 0.20, '2018-01-16 15:19:32', 3, 1, '', 0, 23, 0, '4', 'venugopal,ghgfh,gfhgf,fghfg,56456,3456765434,venugopal@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 555, 0.46, 8.74);
INSERT INTO `nm_ordercod` VALUES (172, 'ORDER1516087619172', 220, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-01-16 15:26:59', 3, 1, '', 0, 0, 12, '0', 'venugopal,ghjghj,bnmngh,ghjghj,765756,3456765434,venugopal@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (173, 'ORDER1516095162173', 212, 173, 80, 1, 2, 160.00, 1.00, 1.60, '2018-01-16 05:32:42', 3, 1, '', 0, 5, 4, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,bala@gmail.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 1.62, 159.98);
INSERT INTO `nm_ordercod` VALUES (174, 'ORDER1516095238174', 220, 177, 11200, 1, 1, 11200.00, 2.00, 224.00, '2018-01-16 05:33:58', 3, 1, '', 0, 25, 14, '0', 'venugopal,hjghj,fdgdfg,dfgdfg,123123,3456765434,venugopal@pofitec.com,Coimbatore,India', 67, '0', '0', '0', '0', '0', 0, 13399, 1142.40, 10281.60);
INSERT INTO `nm_ordercod` VALUES (175, 'ORDER1516095421175', 220, 177, 11200, 1, 1, 11200.00, 2.00, 224.00, '2018-01-16 05:37:01', 3, 1, '', 0, 11, 14, '0', 'venugopal,ghgfhgh,bnmnj,tytyu,67567,3456765434,venugopal@pofitec.com,Coimbatore,India', 67, '0', '0', '0', '0', '0', 0, 13399, 1142.40, 10281.60);
INSERT INTO `nm_ordercod` VALUES (176, 'ORDER1516096160176', 212, 173, 80, 1, 1, 80.00, 2.00, 1.60, '2018-01-16 05:49:19', 3, 1, '', 0, 5, 7, '0', 'bala,Ram nagar,ramnagar,Tamil Nadu,634217,9874569856,balamurugan@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 100, 0.82, 80.78);
INSERT INTO `nm_ordercod` VALUES (177, 'ORDER1516096814177', 220, 177, 11200, 1, 1, 11200.00, 2.00, 224.00, '2018-01-16 06:00:14', 3, 1, '', 0, 25, 14, '0', 'venugopal,ghjghj,tytry,hgjhgh,123456,3456765434,venugopal@pofitec.com,Coimbatore,India', 67, '0', '0', '0', '0', '0', 0, 13399, 1142.40, 10281.60);
INSERT INTO `nm_ordercod` VALUES (178, 'ORDER1516097078178', 220, 177, 11200, 1, 1, 11200.00, 2.00, 224.00, '2018-01-16 06:04:38', 3, 1, '', 0, 25, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 67, '0', '0', '0', '0', '0', 0, 13399, 1142.40, 10281.60);
INSERT INTO `nm_ordercod` VALUES (179, 'ORDER1516097173179', 220, 177, 11200, 1, 1, 11200.00, 2.00, 224.00, '2018-01-16 06:06:13', 3, 1, '', 0, 25, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 67, '0', '0', '0', '0', '0', 0, 13399, 1142.40, 10281.60);
INSERT INTO `nm_ordercod` VALUES (180, 'ORDER1516104627181', 250, 21, 100000000, 2, 2, 99999999.99, 99.00, 99999999.99, '2018-01-16 08:10:26', 3, 1, '', 0, 0, 0, '0', 'ragul,,coimbatore,tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 1000000000, 3980000.00, 99999999.99);
INSERT INTO `nm_ordercod` VALUES (181, 'ORDER1516104627181', 250, 35, 999, 2, 1, 999.00, 5.00, 49.95, '2018-01-16 08:10:26', 3, 1, '', 0, 0, 0, '0', 'ragul,,coimbatore,tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 41.96, 1006.99);
INSERT INTO `nm_ordercod` VALUES (182, 'ORDER1516104669183', 250, 21, 100000000, 2, 1, 99999999.99, 99.00, 99000000.00, '2018-01-16 08:11:09', 3, 1, '', 0, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 1000000000, 1990000.00, 99999999.99);
INSERT INTO `nm_ordercod` VALUES (183, 'ORDER1516104669183', 250, 35, 999, 2, 1, 999.00, 5.00, 49.95, '2018-01-16 08:11:09', 1, 4, '', 0, 0, 0, '0', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 41.96, 1006.99);
INSERT INTO `nm_ordercod` VALUES (184, 'ORDER1516105593185', 201, 139, 8500, 1, 1, 8500.00, 5.00, 425.00, '2018-01-16 08:26:33', 3, 5, '', 0, 10, 5, '40', 'suganya,asdfgj,qwerty,tn,123456,8012122975,suganya.t@pofitec.com,vadavalli,United States of America', 67, '0', '0', '0', '0', '0', 0, 9000, 896.50, 8068.50);
INSERT INTO `nm_ordercod` VALUES (185, 'ORDER1516105593185', 201, 160, 85001, 1, 1, 85001.00, 5.00, 4250.05, '2018-01-16 08:26:33', 3, 5, '', 0, 0, 14, '40', 'suganya,asdfgj,qwerty,tn,123456,8012122975,suganya.t@pofitec.com,vadavalli,United States of America', 41, '0', '0', '0', '0', '0', 0, 90001, 4464.55, 84826.50);
INSERT INTO `nm_ordercod` VALUES (186, 'ORDER1516114272186', 250, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-01-16 10:51:12', 3, 1, '', 0, 0, 8, '0', 'ragul,coimbatore,coimbatore,tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (187, 'ORDER1516167174187', 201, 36, 10, 1, 1, 10.00, 5.00, 0.50, '2018-01-17 13:32:54', 3, 5, '', 0, 24, 14, '5', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 1500, 0.78, 14.73);
INSERT INTO `nm_ordercod` VALUES (188, 'ORDER1516169597190', 250, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-17 14:13:17', 3, 1, '', 0, 15, 8, '5', 'ragul,coimbatore,coimbatore,tamilnady,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (189, 'ORDER1516169597190', 250, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-17 14:13:17', 3, 1, '', 0, 20, 7, '5', 'ragul,coimbatore,coimbatore,tamilnady,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (190, 'ORDER1516169597190', 250, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-01-17 14:13:17', 1, 4, '', 0, 0, 8, '0', 'ragul,coimbatore,coimbatore,tamilnady,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (191, 'ORDER1516182147192', 201, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-01-17 05:42:27', 3, 1, '', 0, 20, 5, '5', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (192, 'ORDER1516182147192', 201, 33, 45, 2, 1, 45.00, 10.00, 4.50, '2018-01-17 05:42:27', 1, 10, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 56, 2.48, 47.03);
INSERT INTO `nm_ordercod` VALUES (193, 'ORDER1516189815193', 201, 37, 250, 2, 1, 250.00, 0.00, 0.00, '2018-01-17 07:50:15', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 0, 500, 52.50, 197.50);
INSERT INTO `nm_ordercod` VALUES (194, 'ORDER1516192587194', 250, 180, 1805, 1, 1, 1805.00, 0.00, 0.00, '2018-01-17 08:36:27', 3, 1, '', 0, 8, 4, '60', 'ragul,coimbatore,coimbatore,Tamil Nadu,642356,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 2640, 74.60, 1790.40);
INSERT INTO `nm_ordercod` VALUES (195, 'ORDER1516269124196', 250, 180, 1805, 1, 1, 1805.00, 0.00, 0.00, '2018-01-18 05:52:03', 3, 1, '', 0, 8, 4, '60', 'ragul,coimabatore,coimabatore,tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 2640, 74.60, 1790.40);
INSERT INTO `nm_ordercod` VALUES (196, 'ORDER1516269124196', 250, 181, 750, 1, 1, 750.00, 3.00, 22.50, '2018-01-18 05:52:03', 3, 1, '', 0, 10, 8, '0', 'ragul,coimabatore,coimabatore,tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 800, 30.90, 741.60);
INSERT INTO `nm_ordercod` VALUES (197, 'ORDER1516277128197', 250, 181, 750, 1, 1, 750.00, 3.00, 22.50, '2018-01-18 08:05:28', 3, 1, '', 0, 11, 4, '0', 'ragul,coimbatore,coimbatore,tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 800, 30.90, 741.60);
INSERT INTO `nm_ordercod` VALUES (198, 'ORDER1516360022203', 250, 181, 750, 1, 1, 750.00, 3.00, 22.50, '2018-01-19 07:07:01', 3, 1, '', 0, 25, 8, '0', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 800, 30.90, 741.60);
INSERT INTO `nm_ordercod` VALUES (199, 'ORDER1516360022203', 250, 176, 1000, 1, 1, 1000.00, 0.00, 0.00, '2018-01-19 07:07:01', 3, 1, '', 0, 0, 14, '0', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1500, 100.00, 900.00);
INSERT INTO `nm_ordercod` VALUES (200, 'ORDER1516360022203', 250, 181, 750, 1, 1, 750.00, 3.00, 22.50, '2018-01-19 07:07:01', 3, 1, '', 0, 19, 5, '0', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 800, 30.90, 741.60);
INSERT INTO `nm_ordercod` VALUES (201, 'ORDER1516360022203', 250, 180, 1805, 1, 1, 1805.00, 0.00, 0.00, '2018-01-19 07:07:01', 3, 1, '', 0, 8, 4, '60', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 2640, 74.60, 1790.40);
INSERT INTO `nm_ordercod` VALUES (202, 'ORDER1516360022203', 250, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-19 07:07:01', 3, 1, '', 0, 0, 0, '0', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 25.30, 607.10);
INSERT INTO `nm_ordercod` VALUES (203, 'ORDER1516360022203', 250, 29, 250, 2, 1, 250.00, 2.00, 5.00, '2018-01-19 07:07:01', 3, 1, '', 0, 0, 0, '20', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 500, 27.50, 247.50);
INSERT INTO `nm_ordercod` VALUES (204, 'ORDER1516960614204', 250, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-26 05:56:53', 3, 1, '', 0, 0, 0, '0', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 25.30, 607.10);
INSERT INTO `nm_ordercod` VALUES (205, 'ORDER1516961277205', 250, 26, 22000, 2, 1, 22000.00, 0.00, 0.00, '2018-01-26 06:07:56', 3, 1, '', 0, 0, 0, '500', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 25000, 900.00, 21600.00);
INSERT INTO `nm_ordercod` VALUES (206, 'ORDER1516961987206', 250, 27, 620, 2, 1, 620.00, 2.00, 12.40, '2018-01-26 06:19:47', 3, 6, '', 0, 0, 0, '0', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 750, 25.30, 607.10);
INSERT INTO `nm_ordercod` VALUES (207, 'ORDER1517807871207', 229, 187, 5, 1, 1, 5.00, 0.00, 0.00, '2018-02-05 13:17:51', 3, 6, '', 0, 0, 15, '50', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 10, 2.75, 52.25);
INSERT INTO `nm_ordercod` VALUES (208, 'ORDER1517807965208', 229, 52, 500, 2, 1, 500.00, 2.00, 10.00, '2018-02-05 13:19:25', 1, 8, '', 0, 0, 0, '0', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1000, 51.00, 459.00);
INSERT INTO `nm_ordercod` VALUES (209, 'ORDER1517808866209', 229, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-02-05 13:34:26', 1, 8, '', 0, 0, 12, '0', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (210, 'ORDER1517809115210', 229, 162, 2, 1, 1, 2.00, 0.00, 0.00, '2018-02-05 13:38:35', 1, 4, '', 0, 6, 4, '0', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 41, '0', '0', '0', '0', '0', 0, 5, 0.10, 1.90);
INSERT INTO `nm_ordercod` VALUES (211, 'ORDER1517825036211', 212, 52, 500, 2, 15, 7500.00, 2.00, 150.00, '2018-02-05 06:03:56', 1, 4, '', 0, 0, 0, '0', 'bala,Hopes,Peelamedu,tamil nadu,634601,9874569856,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1000, 765.00, 6885.00);
INSERT INTO `nm_ordercod` VALUES (212, 'ORDER1517825491212', 212, 54, 4000, 2, 3, 12000.00, 2.00, 240.00, '2018-02-05 06:11:31', 1, 10, '', 0, 0, 0, '150', 'bala,ram nagar,Peelamedu,tamil nadu,634601,9874569856,balamurugan@pofitec.com,Coimbatore,India', 77, '0', '0', '0', '0', '0', 0, 5000, 12266.10, 123.90);
INSERT INTO `nm_ordercod` VALUES (213, 'ORDER1517831514213', 229, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-02-05 07:51:53', 3, 1, '', 0, 13, 7, '5', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (214, 'ORDER1517835128214', 229, 52, 500, 2, 1, 500.00, 2.00, 10.00, '2018-02-05 08:52:08', 3, 6, '', 0, 0, 0, '0', 'bala,ram nagar,Peelamedu,tamil nadu,634601,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1000, 51.00, 459.00);
INSERT INTO `nm_ordercod` VALUES (215, 'ORDER1517894784215', 229, 178, 23, 1, 4, 92.00, 0.00, 0.00, '2018-02-06 13:26:24', 3, 1, '', 0, 0, 14, '0', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 234, 19.32, 72.68);
INSERT INTO `nm_ordercod` VALUES (216, 'ORDER1517895517216', 229, 51, 5000, 2, 3, 15000.00, 2.00, 300.00, '2018-02-06 13:38:37', 1, 10, '', 0, 0, 0, '0', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 10000, 1530.00, 13770.00);
INSERT INTO `nm_ordercod` VALUES (217, 'ORDER1517898034217', 201, 35, 5, 1, 1, 5.00, 4.00, 0.20, '2018-02-06 14:20:34', 3, 1, '', 0, 23, 0, '4', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 41, '0', '0', '0', '0', '0', 0, 555, 0.46, 8.74);
INSERT INTO `nm_ordercod` VALUES (218, 'ORDER1517915909218', 253, 56, 1300, 2, 10, 13000.00, 0.00, 0.00, '2018-02-06 07:18:29', 1, 10, '', 0, 0, 0, '300', 'user,cbe,cbe,tn,123456,1234567895,user@gmail.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 1500, 133.00, 13167.00);
INSERT INTO `nm_ordercod` VALUES (219, 'ORDER1517916234219', 229, 196, 450, 1, 1, 450.00, 0.00, 0.00, '2018-02-06 07:23:54', 1, 8, '', 0, 18, 5, '30', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 500, 4.80, 475.20);
INSERT INTO `nm_ordercod` VALUES (220, 'ORDER1517917355220', 229, 196, 450, 1, 1, 450.00, 0.00, 0.00, '2018-02-06 07:42:35', 3, 1, '', 0, 14, 5, '30', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 500, 4.80, 475.20);
INSERT INTO `nm_ordercod` VALUES (221, 'ORDER1517990078221', 229, 196, 450, 1, 1, 450.00, 0.00, 0.00, '2018-02-07 03:54:38', 1, 10, '', 0, 18, 7, '30', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 500, 4.80, 475.20);
INSERT INTO `nm_ordercod` VALUES (222, 'ORDER1517990184222', 229, 52, 500, 2, 1, 500.00, 2.00, 10.00, '2018-02-07 03:56:24', 3, 6, '', 0, 0, 0, '0', 'bala,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1000, 51.00, 459.00);
INSERT INTO `nm_ordercod` VALUES (223, 'ORDER1518415103223', 201, 52, 500, 2, 3, 1500.00, 2.00, 30.00, '2018-02-12 13:58:23', 1, 8, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 60, '0', '0', '0', '0', '0', 0, 1000, 153.00, 1377.00);
INSERT INTO `nm_ordercod` VALUES (224, 'ORDER1518415193224', 201, 137, 7500, 1, 10, 75000.00, 0.00, 0.00, '2018-02-12 13:59:52', 3, 1, '', 0, 5, 4, '500', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 67, '0', '0', '0', '0', '0', 0, 8000, 7550.00, 67950.00);
INSERT INTO `nm_ordercod` VALUES (225, 'ORDER1518583040225', 229, 162, 2, 1, 1, 2.00, 0.00, 0.00, '2018-02-14 12:37:20', 3, 1, '', 0, 16, 4, '0', 'balaa,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,peelamedu,India', 41, '0', '0', '0', '0', '0', 0, 5, 0.10, 1.90);
INSERT INTO `nm_ordercod` VALUES (226, 'ORDER1518586299226', 229, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-02-14 13:31:39', 3, 1, '', 0, 0, 12, '0', 'balaa,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (227, 'ORDER1518586507227', 229, 35, 5, 1, 1, 5.00, 4.00, 0.20, '2018-02-14 13:35:07', 3, 5, '', 0, 23, 0, '4', 'balaa,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,peelamedu,India', 41, '0', '0', '0', '0', '0', 0, 555, 0.46, 8.74);
INSERT INTO `nm_ordercod` VALUES (228, 'ORDER1518595915228', 229, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-02-14 04:11:55', 3, 1, '', 0, 0, 8, '0', 'balaa,Hope,Peelamedu,tn,637020,7418529635,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (229, 'ORDER1518687054229', 229, 161, 1, 1, 1, 1.00, 3.00, 0.03, '2018-02-15 05:30:53', 3, 1, '', 0, 21, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, '0', '0', '0', '0', '0', 0, 2, 0.22, 0.81);
INSERT INTO `nm_ordercod` VALUES (230, 'ORDER1518873841230', 229, 51, 5000, 2, 1, 5000.00, 2.00, 100.00, '2018-02-17 09:24:01', 3, 6, '', 0, 0, 0, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 10000, 510.00, 4590.00);
INSERT INTO `nm_ordercod` VALUES (231, 'ORDER1519387550232', 220, 99, 100, 1, 5, 500.00, 0.00, 0.00, '2018-02-23 08:05:49', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 300, 5.00, 495.00);
INSERT INTO `nm_ordercod` VALUES (232, 'ORDER1519387550232', 220, 161, 1, 1, 5, 5.00, 3.00, 0.15, '2018-02-23 08:05:49', 3, 1, '', 0, 21, 4, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 2, 1.08, 4.07);
INSERT INTO `nm_ordercod` VALUES (233, 'ORDER1519387672233', 220, 58, 7500, 1, 1, 7500.00, 0.00, 0.00, '2018-02-23 08:07:52', 3, 1, '', 0, 5, 4, '50', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 8000, 1585.50, 5964.50);
INSERT INTO `nm_ordercod` VALUES (234, 'ORDER1519732831234', 220, 170, 5, 1, 1, 5.00, 2.00, 0.10, '2018-02-27 08:00:31', 3, 1, '', 0, 20, 4, '5', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 10, 0.10, 10.00);
INSERT INTO `nm_ordercod` VALUES (235, 'ORDER1519732929235', 220, 95, 100, 1, 1, 100.00, 0.00, 0.00, '2018-02-27 08:02:09', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,456345,3456765434,venugopal@pofitec.com,Lahore,India', 58, '0', '0', '0', '0', '0', 0, 500, 21.00, 79.00);
INSERT INTO `nm_ordercod` VALUES (236, 'ORDER1519733205236', 220, 172, 40, 1, 1, 40.00, 0.00, 0.00, '2018-02-27 08:06:45', 3, 1, '', 0, 11, 9, '10', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 50, 0.50, 49.50);
INSERT INTO `nm_ordercod` VALUES (237, 'ORDER1519733350237', 220, 171, 60, 1, 1, 60.00, 0.00, 0.00, '2018-02-27 08:09:10', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 80, 6.00, 54.00);
INSERT INTO `nm_ordercod` VALUES (238, 'ORDER1519733461238', 220, 171, 60, 1, 1, 60.00, 0.00, 0.00, '2018-02-27 08:11:00', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 80, 6.00, 54.00);
INSERT INTO `nm_ordercod` VALUES (239, 'ORDER1519733550239', 220, 47, 7502, 1, 1, 7502.00, 0.00, 0.00, '2018-02-27 08:12:30', 3, 1, '', 0, 5, 4, '52', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 8002, 75.54, 7478.46);
INSERT INTO `nm_ordercod` VALUES (240, 'ORDER1519733610240', 220, 47, 7502, 1, 1, 7502.00, 0.00, 0.00, '2018-02-27 08:13:29', 3, 1, '', 0, 5, 4, '52', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 62, '0', '0', '0', '0', '0', 0, 8002, 75.54, 7478.46);
INSERT INTO `nm_ordercod` VALUES (241, 'ORDER1519733796241', 220, 171, 60, 1, 1, 60.00, 0.00, 0.00, '2018-02-27 08:16:36', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 80, 6.00, 54.00);
INSERT INTO `nm_ordercod` VALUES (242, 'ORDER1519739165242', 229, 189, 800, 1, 2, 1600.00, 3.00, 48.00, '2018-02-27 09:46:04', 3, 1, '', 0, 8, 4, '40', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, '0', '0', '0', '0', '0', 0, 1000, 354.48, 1333.52);
INSERT INTO `nm_ordercod` VALUES (243, 'ORDER1519739939243', 229, 61, 400, 2, 2, 800.00, 0.00, 0.00, '2018-02-27 09:58:59', 1, 4, '', 0, 0, 0, '60', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, '0', '0', '0', '0', '0', 0, 500, 180.60, 679.40);
INSERT INTO `nm_ordercod` VALUES (244, 'ORDER1519740136244', 229, 189, 800, 1, 1, 800.00, 3.00, 24.00, '2018-02-27 10:02:15', 3, 1, '', 0, 8, 4, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 58, '0', '0', '0', '0', '0', 0, 1000, 173.04, 650.96);
INSERT INTO `nm_ordercod` VALUES (245, 'ORDER1519969592245', 229, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-03-02 13:46:32', 3, 1, '', 0, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 90, '0', '0', '0', '0', '0', 0, 100, 0.40, 39.60);
INSERT INTO `nm_ordercod` VALUES (246, 'ORDER1519997476246', 229, 177, 11200, 1, 1, 11200.00, 2.00, 224.00, '2018-03-02 09:31:15', 3, 5, '', 0, 11, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 67, '0', '0', '0', '0', '0', 0, 13399, 1142.40, 10281.60);
INSERT INTO `nm_ordercod` VALUES (247, 'ORDER1519998023247', 229, 171, 60, 1, 1, 60.00, 0.00, 0.00, '2018-03-02 09:40:22', 3, 1, '', 0, 0, 14, '0', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 60, '0', '0', '0', '0', '0', 0, 80, 6.00, 54.00);
INSERT INTO `nm_ordercod` VALUES (248, 'ORDER1520062842248', 229, 180, 1805, 1, 1, 1805.00, 0.00, 0.00, '2018-03-03 03:40:42', 3, 1, '', 0, 0, 0, '60', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 68, '0', '0', '0', '0', '0', 0, 2640, 74.60, 1790.40);
INSERT INTO `nm_ordercod` VALUES (249, 'ORDER1520070131249', 229, 47, 7502, 1, 1, 7502.00, 0.00, 0.00, '2018-03-03 05:42:11', 3, 1, '', 0, 5, 4, '52', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 62, '0', '0', '0', '0', '0', 0, 8002, 75.54, 7478.46);
INSERT INTO `nm_ordercod` VALUES (250, 'ORDER1520224766250', 229, 180, 1805, 1, 1, 1805.00, 0.00, 0.00, '2018-03-05 12:39:26', 3, 1, '', 0, 0, 0, '60', 'bala,Hope,Peelamedu,tn,641004,7418529635  ,balamurugan@pofitec.com,peelamedu,India', 68, '0', '0', '0', '0', '0', 0, 2640, 74.60, 1790.40);
INSERT INTO `nm_ordercod` VALUES (251, 'ORDER1520427623251', 220, 171, 100, 1, 1, 100.00, 0.00, 0.00, '2018-03-07 09:00:23', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, '0', '0', '0', '0', '0', 0, 110, 7.00, 93.00);
INSERT INTO `nm_ordercod` VALUES (252, 'ORDER1520493681252', 201, 171, 100, 1, 1, 100.00, 0.00, 0.00, '2018-03-08 15:21:21', 3, 1, '', 0, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '6zwrw49Jtv', 'productcoupon', '1', '20', '80', 0, 110, 7.00, 93.00);
INSERT INTO `nm_ordercod` VALUES (253, 'ORDER1520512398253', 201, 171, 100, 1, 1, 100.00, 0.00, 0.00, '2018-03-08 08:33:18', 3, 1, '', 0, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '0', '0', '0', '0', '0', 0, 110, 7.00, 93.00);
INSERT INTO `nm_ordercod` VALUES (254, 'ORDER1520516626254', 220, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-03-08 09:43:46', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 90, 'MnwvpFnptK', 'productcoupon', '1', '20', '20', 0, 100, 0.40, 39.60);
INSERT INTO `nm_ordercod` VALUES (255, 'ORDER1520516743255', 220, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-03-08 09:45:43', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, 'MnwvpFnptK', 'productcoupon', '1', '20', '20', 0, 100, 2.80, 37.20);
INSERT INTO `nm_ordercod` VALUES (256, 'ORDER1521005081261', 250, 191, 3, 1, 1, 3.00, 0.00, 0.00, '2018-03-14 13:24:40', 3, 1, '', 0, 0, 14, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 500, 0.03, 2.97);
INSERT INTO `nm_ordercod` VALUES (257, 'ORDER1521005081261', 250, 190, 4, 1, 1, 4.00, 0.00, 0.00, '2018-03-14 13:24:40', 3, 1, '', 0, 9, 5, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 5, 0.04, 3.96);
INSERT INTO `nm_ordercod` VALUES (258, 'ORDER1521005081261', 250, 176, 421, 1, 1, 421.00, 0.00, 0.00, '2018-03-14 13:24:40', 3, 1, '', 0, 0, 14, '1', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 562, 42.20, 379.80);
INSERT INTO `nm_ordercod` VALUES (259, 'ORDER1521005081261', 250, 191, 3, 1, 1, 3.00, 0.00, 0.00, '2018-03-14 13:24:40', 3, 1, '', 0, 0, 14, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 500, 0.03, 2.97);
INSERT INTO `nm_ordercod` VALUES (260, 'ORDER1521005081261', 250, 66, 100, 2, 4, 400.00, 0.00, 0.00, '2018-03-14 13:24:40', 3, 1, '', 0, 0, 0, '800', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 10000, 120.00, 1080.00);
INSERT INTO `nm_ordercod` VALUES (261, 'ORDER1521005081261', 250, 52, 500, 2, 1, 500.00, 2.00, 10.00, '2018-03-14 13:24:40', 3, 1, '', 0, 0, 0, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 1000, 51.00, 459.00);
INSERT INTO `nm_ordercod` VALUES (262, 'ORDER1521015893262', 201, 197, 5, 1, 1, 5.00, 0.00, 0.00, '2018-03-14 04:24:53', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 59, '0', '0', '0', '0', '0', 0, 10, 0.50, 4.50);
INSERT INTO `nm_ordercod` VALUES (263, 'ORDER1521019143263', 201, 197, 5, 1, 1, 5.00, 0.00, 0.00, '2018-03-14 05:19:03', 3, 2, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 59, 'MzwJrsJqEq', 'productcoupon', '1', '1', '4', 0, 10, 0.50, 4.50);
INSERT INTO `nm_ordercod` VALUES (264, 'ORDER1521194410264', 201, 198, 5, 1, 1, 5.00, 1.00, 0.05, '2018-03-16 06:00:10', 1, 7, '', 0, 0, 14, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 58, '0', '0', '0', '0', '0', 0, 10, 1.06, 3.99);
INSERT INTO `nm_ordercod` VALUES (265, 'ORDER1521194729265', 201, 66, 100, 2, 1, 100.00, 0.00, 0.00, '2018-03-16 06:05:29', 1, 7, '', 0, 0, 0, '200', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 60, '0', '0', '0', '0', '0', 0, 10000, 30.00, 270.00);
INSERT INTO `nm_ordercod` VALUES (266, 'ORDER1521456258266', 201, 61, 40, 2, 5, 200.00, 0.00, 0.00, '2018-03-19 06:44:18', 3, 1, '', 0, 0, 0, '150', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Delhi,India', 58, '0', '0', '0', '0', '0', 0, 500, 73.50, 276.50);
INSERT INTO `nm_ordercod` VALUES (267, 'ORDER1521549591267', 201, 63, 60, 2, 15, 900.00, 0.00, 0.00, '2018-03-20 08:39:51', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 90, '0', '0', '0', '0', '0', 0, 100, 9.00, 891.00);
INSERT INTO `nm_ordercod` VALUES (268, 'ORDER1522133855268', 272, 171, 100, 1, 1, 100.00, 0.00, 0.00, '2018-03-27 14:57:35', 3, 3, '', 0, 0, 14, '0', 'Suganya,Ramnagar,Gan,Tamil Nadu,123654,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 110, 7.00, 93.00);
INSERT INTO `nm_ordercod` VALUES (269, 'ORDER1522134551269', 272, 176, 421, 1, 1, 421.00, 0.00, 0.00, '2018-03-27 15:09:11', 3, 5, '', 0, 0, 14, '1', 'Suganya,Gandhipuram,Mtp,Tamil Nadu,123456,1234567890,suganya@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 562, 42.20, 379.80);
INSERT INTO `nm_ordercod` VALUES (270, 'ORDER1522143907270', 272, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-27 05:45:07', 3, 1, '', 0, 0, 14, '30', 'Suganya,Ramnagar,Gan,Tamil Nadu,123654,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (271, 'ORDER1522143986271', 272, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-27 05:46:25', 3, 5, '', 0, 0, 14, '30', 'Suganya,Ramnagar,Gan,Tamil Nadu,123654,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (272, 'ORDER1522144014272', 272, 176, 421, 1, 1, 421.00, 0.00, 0.00, '2018-03-27 05:46:54', 3, 1, '', 0, 0, 14, '1', 'Suganya,Ramnagar,Gan,Tamil Nadu,123654,1234567890,suganya@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 562, 42.20, 379.80);
INSERT INTO `nm_ordercod` VALUES (273, 'ORDER1522327230273', 272, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-29 08:40:30', 3, 1, '', 0, 0, 14, '30', 'Suganya,Mettupalayam,Mettupalayam,Tamil Nadu,213444,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (274, 'ORDER1522327282274', 272, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-29 08:41:22', 3, 5, '', 0, 0, 14, '30', 'Suganya,Mettupalayam,mettupalayam,Tamil Nadu,641302,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (275, 'ORDER1522327329275', 272, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-29 08:42:09', 3, 5, '', 0, 0, 14, '30', 'Suganya,mettupalayam,mettupalayam,Tamil Nadu,123654,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (276, 'ORDER1522399301276', 272, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-30 04:41:41', 3, 1, '', 0, 0, 14, '30', 'Suganya,mettupalayam,mettupalayam,Tamilnadu,600042,1234567890,suganya@pofitec.com,Delhi,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (277, 'ORDER1522416246277', 273, 179, 899, 1, 1, 899.00, 2.00, 17.98, '2018-03-30 09:24:06', 1, 4, '', 0, 0, 14, '30', 'suganya,hg,ghgh,ghg,12134,1234567890,suganya@pofitec.com,Coimbatore,India', 68, '0', '0', '0', '0', '0', 0, 1200, 37.88, 909.10);
INSERT INTO `nm_ordercod` VALUES (278, 'ORDER1523247844279', 275, 163, 3, 1, 1, 3.00, 4.00, 0.12, '2018-04-09 12:24:04', 3, 1, '', 0, 20, 4, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 100, 0.66, 2.46);
INSERT INTO `nm_ordercod` VALUES (279, 'ORDER1523247844279', 275, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-04-09 12:24:04', 3, 1, '', 0, 0, 12, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (280, 'ORDER1523248166280', 275, 66, 100, 2, 1, 100.00, 0.00, 0.00, '2018-04-09 12:29:26', 3, 1, '', 0, 0, 0, '200', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 10000, 30.00, 270.00);
INSERT INTO `nm_ordercod` VALUES (281, 'ORDER1523258580281', 276, 163, 3, 1, 1, 3.00, 4.00, 0.12, '2018-04-09 15:22:59', 3, 1, '', 0, 20, 4, '0', 'Nagoor Meeran GPlus,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 100, 0.66, 2.46);
INSERT INTO `nm_ordercod` VALUES (282, 'ORDER1523265714282', 283, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-04-09 05:21:54', 3, 1, '', 0, 0, 12, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (283, 'ORDER1523268893283', 285, 178, 23, 1, 1, 23.00, 0.00, 0.00, '2018-04-09 06:14:53', 3, 1, '', 0, 0, 14, '0', 'Kailash,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,1591591599,nagoor@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 234, 4.83, 18.17);
INSERT INTO `nm_ordercod` VALUES (284, 'ORDER1523354078284', 275, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-04-10 05:54:38', 3, 1, '', 0, 0, 12, '0', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,01591591599,nagoor@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (285, 'ORDER1523361762285', 201, 47, 7502, 1, 1, 7502.00, 0.00, 0.00, '2018-04-10 08:02:42', 3, 1, '', 0, 5, 4, '52', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Delhi,India', 62, '0', '0', '0', '0', '0', 0, 8002, 75.54, 7478.46);
INSERT INTO `nm_ordercod` VALUES (286, 'ORDER1523362536286', 201, 186, 10, 1, 1, 10.00, 0.00, 0.00, '2018-04-10 08:15:36', 3, 1, '', 0, 0, 0, '50', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,0,0', 41, '0', '0', '0', '0', '0', 0, 10, 3.00, 57.00);
INSERT INTO `nm_ordercod` VALUES (287, 'ORDER1523443074288', 220, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-04-11 06:37:53', 3, 1, '', 0, 0, 14, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,,United States of America', 95, '0', '0', '0', '0', '0', 0, 100, 2.80, 37.20);
INSERT INTO `nm_ordercod` VALUES (288, 'ORDER1523443074288', 220, 136, 100, 1, 1, 100.00, 0.00, 0.00, '2018-04-11 06:37:53', 3, 1, '', 0, 0, 0, '50', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,,United States of America', 89, '0', '0', '0', '0', '0', 0, 1000, 6.00, 144.00);
INSERT INTO `nm_ordercod` VALUES (289, 'ORDER1523454711290', 220, 196, 100, 1, 1, 100.00, 3.00, 3.00, '2018-04-11 09:51:51', 3, 1, '', 0, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,0,0', 95, '0', '0', '0', '0', '0', 0, 200, 7.21, 95.79);
INSERT INTO `nm_ordercod` VALUES (290, 'ORDER1523454711290', 220, 67, 5, 2, 1, 5.00, 0.00, 0.00, '2018-04-11 09:51:51', 3, 1, '', 0, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,0,0', 95, '0', '0', '0', '0', '0', 0, 10, 0.35, 4.65);
INSERT INTO `nm_ordercod` VALUES (291, 'ORDER1523455729292', 220, 196, 100, 1, 1, 100.00, 3.00, 3.00, '2018-04-11 10:08:49', 3, 1, '', 0, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,0,0', 95, '0', '0', '0', '0', '0', 0, 200, 7.21, 95.79);
INSERT INTO `nm_ordercod` VALUES (292, 'ORDER1523455729292', 220, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-04-11 10:08:49', 3, 1, '', 0, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,0,0', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (293, 'ORDER1523455766293', 220, 163, 3, 1, 1, 3.00, 4.00, 0.12, '2018-04-11 10:09:26', 3, 1, '', 0, 0, 0, '1', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,0,0', 95, '0', '0', '0', '0', '0', 0, 100, 0.29, 3.83);
INSERT INTO `nm_ordercod` VALUES (294, 'ORDER1523506304294', 201, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-04-12 12:11:44', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 100, 2.80, 37.20);
INSERT INTO `nm_ordercod` VALUES (295, 'ORDER1523506657295', 201, 178, 23, 1, 1, 23.00, 0.00, 0.00, '2018-04-12 12:17:37', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 234, 4.83, 18.17);
INSERT INTO `nm_ordercod` VALUES (296, 'ORDER1523513034300', 273, 174, 1, 1, 1, 1.00, 0.00, 0.00, '2018-04-12 14:03:53', 3, 1, '', 0, 0, 12, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 60, '0', '0', '0', '0', '0', 0, 12, 0.10, 0.90);
INSERT INTO `nm_ordercod` VALUES (297, 'ORDER1523513034300', 273, 196, 100, 1, 1, 100.00, 3.00, 3.00, '2018-04-12 14:03:53', 3, 1, '', 0, 0, 0, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 200, 7.21, 95.79);
INSERT INTO `nm_ordercod` VALUES (298, 'ORDER1523513034300', 273, 40, 10, 1, 1, 10.00, 0.00, 0.00, '2018-04-12 14:03:53', 3, 1, '', 0, 0, 14, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 59, '0', '0', '0', '0', '0', 0, 20, 1.00, 9.00);
INSERT INTO `nm_ordercod` VALUES (299, 'ORDER1523513034300', 273, 189, 800, 1, 1, 800.00, 3.00, 24.00, '2018-04-12 14:03:53', 3, 1, '', 0, 0, 0, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 1000, 173.04, 650.96);
INSERT INTO `nm_ordercod` VALUES (300, 'ORDER1523513034300', 273, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-04-12 14:03:53', 3, 1, '', 0, 0, 0, '0', 'ragul,RS Puram,r,Tamil Nadu,641104,9944349002,ragulgandhi@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 100, 2.80, 37.20);
INSERT INTO `nm_ordercod` VALUES (301, 'ORDER1523531974301', 273, 189, 800, 1, 1, 800.00, 3.00, 24.00, '2018-04-12 07:19:34', 3, 1, '', 0, 0, 0, '0', 'suganya,test,sdsd,chsdfsd,123456,1234567890,suganya@pofitec.com,Coimbatore,India', 58, '0', '0', '0', '0', '0', 0, 1000, 173.04, 650.96);
INSERT INTO `nm_ordercod` VALUES (302, 'ORDER1523532018302', 273, 161, 30, 1, 1, 30.00, 0.00, 0.00, '2018-04-12 07:20:18', 3, 1, '', 0, 0, 4, '0', 'suganya,fgf,fgf,fgfgf,132132,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 36, 2.10, 27.90);
INSERT INTO `nm_ordercod` VALUES (303, 'ORDER1523532330303', 273, 196, 100, 1, 1, 100.00, 3.00, 3.00, '2018-04-12 07:25:30', 3, 1, '', 0, 0, 0, '0', 'suganya,sds,323232,fgfgf,23232,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 200, 7.21, 95.79);
INSERT INTO `nm_ordercod` VALUES (304, 'ORDER1523534913304', 273, 196, 100, 1, 1, 100.00, 3.00, 3.00, '2018-04-12 08:08:33', 3, 1, '', 0, 0, 0, '0', 'suganya,tyt,tytyt,tytyt,121232,1234567890,suganya@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 200, 7.21, 95.79);
INSERT INTO `nm_ordercod` VALUES (305, 'ORDER1523627127306', 273, 40, 10, 1, 1, 10.00, 0.00, 0.00, '2018-04-13 09:45:27', 3, 1, '', 0, 0, 0, '0', 'suganya,rtrtr,rtrtr,rtrtr,123456,1234567890,suganya@pofitec.com,Chennai,India', 59, '0', '0', '0', '0', '0', 0, 20, 1.00, 9.00);
INSERT INTO `nm_ordercod` VALUES (306, 'ORDER1523627127306', 273, 181, 750, 1, 1, 750.00, 3.00, 22.50, '2018-04-13 09:45:27', 3, 1, '', 0, 0, 0, '0', 'suganya,rtrtr,rtrtr,rtrtr,123456,1234567890,suganya@pofitec.com,Chennai,India', 68, '0', '0', '0', '0', '0', 0, 800, 30.90, 741.60);
INSERT INTO `nm_ordercod` VALUES (307, 'ORDER1523851592307', 220, 196, 100, 1, 1, 100.00, 3.00, 3.00, '2018-04-16 12:06:32', 3, 1, '', 0, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, '0', '0', '0', '0', '0', 0, 200, 7.21, 95.79);
INSERT INTO `nm_ordercod` VALUES (308, 'ORDER1523852958308', 201, 193, 40, 1, 1, 40.00, 0.00, 0.00, '2018-04-16 12:29:18', 3, 1, '', 0, 0, 0, '0', 'suganya,gdgfdhghshhytuuytu,cbe,tn,123456,8012122975,suganya.t@pofitec.com,Lahore,Italy', 95, '0', '0', '0', '0', '0', 0, 100, 2.80, 37.20);
INSERT INTO `nm_ordercod` VALUES (309, 'ORDER1523858408310', 201, 186, 10, 1, 2, 20.00, 0.00, 0.00, '2018-04-16 14:00:08', 3, 1, '', 0, 0, 0, '100', 'suganya.t,ram nagar,cbe,tn,123456,8012122975 ,suganya.t@pofitec.com,vadavalli,United States of America', 41, '0', '0', '0', '0', '0', 0, 10, 6.00, 114.00);
INSERT INTO `nm_ordercod` VALUES (310, 'ORDER1523858408310', 201, 72, 750, 2, 1, 750.00, 0.00, 0.00, '2018-04-16 14:00:08', 3, 1, '', 0, 0, 0, '0', 'suganya.t,ram nagar,cbe,tn,123456,8012122975 ,suganya.t@pofitec.com,vadavalli,United States of America', 95, '0', '0', '0', '0', '0', 0, 1000, 52.50, 697.50);
INSERT INTO `nm_ordercod` VALUES (311, 'ORDER1523858457312', 220, 67, 5, 2, 1, 5.00, 0.00, 0.00, '2018-04-16 14:00:56', 3, 1, '', 0, 0, 0, '0', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 95, '0', '0', '0', '0', '0', 0, 10, 0.35, 4.65);
INSERT INTO `nm_ordercod` VALUES (312, 'ORDER1523858457312', 220, 66, 100, 2, 1, 100.00, 0.00, 0.00, '2018-04-16 14:00:56', 3, 1, '', 0, 0, 0, '200', 'venugopal,Address1,Address2,CSA state,12134,3456765434,venugopal@pofitec.com,Lahore,India', 60, '0', '0', '0', '0', '0', 0, 10000, 30.00, 270.00);
INSERT INTO `nm_ordercod` VALUES (313, 'ORDER1523858499313', 201, 184, 5, 1, 1, 5.00, 0.00, 0.00, '2018-04-16 14:01:39', 3, 1, '', 0, 0, 14, '50', 'suganya.t,ram nagar,cbe,tn,123456,8012122975 ,suganya.t@pofitec.com,vadavalli,United States of America', 95, '0', '0', '0', '0', '0', 0, 10, 3.85, 51.15);
INSERT INTO `nm_ordercod` VALUES (314, 'ORDER1523883240314', 201, 184, 5, 1, 1, 5.00, 0.00, 0.00, '2018-04-16 08:54:00', 3, 1, '', 0, 0, 14, '50', 'suganya.t,ram nagar,cbe,tn,123456,8012122975 ,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 10, 3.85, 51.15);
INSERT INTO `nm_ordercod` VALUES (315, 'ORDER1523883592315', 201, 184, 5, 1, 1, 5.00, 0.00, 0.00, '2018-04-16 08:59:52', 1, 4, '', 0, 0, 14, '50', 'suganya.t,ram nagar,cbe,tn,123456,8012122975 ,suganya.t@pofitec.com,Coimbatore,India', 95, '0', '0', '0', '0', '0', 0, 10, 3.85, 51.15);

-- ----------------------------
-- Table structure for nm_ordercod_wallet
-- ----------------------------
DROP TABLE IF EXISTS `nm_ordercod_wallet`;
CREATE TABLE `nm_ordercod_wallet`  (
  `cod_transaction_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wallet_used` decimal(10, 2) NOT NULL DEFAULT 0.00
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_ordercod_wallet
-- ----------------------------
INSERT INTO `nm_ordercod_wallet` VALUES ('avOfAdcR0jIDtyxH2', 0.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('tMGkmN8y1pFOlDz6p', 1793.95);
INSERT INTO `nm_ordercod_wallet` VALUES ('v24g9Me0QByM0TmXp', 22.60);
INSERT INTO `nm_ordercod_wallet` VALUES ('3MaqnYuN1tDgR3TgI', 22.60);
INSERT INTO `nm_ordercod_wallet` VALUES ('DJ6z7eqjCUeAkUmcw', 16.30);
INSERT INTO `nm_ordercod_wallet` VALUES ('iZII4IEh9TEBmTKaw', 24.70);
INSERT INTO `nm_ordercod_wallet` VALUES ('4FM70563FJ6525317', 17821.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('5CY08665XH8540825', 18.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('ORDER1519820384QMWbGr', 3.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('ORDER1519821906TVBEFg', 3.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('ORDER1519822739Y3pxxS', 0.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('ORDER1521119275mwXG6T', 340.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('5KH6307008680393V', 20.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('ORDER1523625861RSFchz', 9198.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('ORDER1523628427AaBJar', 133.00);
INSERT INTO `nm_ordercod_wallet` VALUES ('93730221G0400623E', 133.00);

-- ----------------------------
-- Table structure for nm_paymentsettings
-- ----------------------------
DROP TABLE IF EXISTS `nm_paymentsettings`;
CREATE TABLE `nm_paymentsettings`  (
  `ps_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ps_flatshipping` decimal(10, 2) NOT NULL COMMENT 'shipping Tax Percentage',
  `ps_taxpercentage` tinyint(3) UNSIGNED NOT NULL,
  `ps_extenddays` smallint(5) UNSIGNED NOT NULL COMMENT 'Auction Extend Days',
  `ps_alertdays` int(11) NOT NULL,
  `ps_minfundrequest` int(10) UNSIGNED NOT NULL,
  `ps_maxfundrequest` int(10) UNSIGNED NOT NULL,
  `ps_referralamount` int(11) NOT NULL,
  `ps_countryid` int(11) NOT NULL,
  `ps_countrycode` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_cursymbol` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_curcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_paypal_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_paypalaccount` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_paypal_api_pw` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_paypal_api_signature` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_authorize_trans_key` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_authorize_api_id` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_payu_key` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_payu_salt` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ps_paypal_pay_mode` tinyint(4) NOT NULL COMMENT '0->Test Mode, 1-> Live Mode',
  PRIMARY KEY (`ps_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_paymentsettings
-- ----------------------------
INSERT INTO `nm_paymentsettings` VALUES (1, 0.00, 0, 0, 0, 0, 0, 0, 1, 'IND', 'Rs', 'INR', 'venugopal-buyer@pofitec.com', 'venugopal-facilitator_api1.pofitec.com', 'U5BL5KK3ZUZVJRNL', 'AhEqPBa2LPCE3sKdenmfssNtAsh0AF4qYwXaeb9bpLQiA-T83dJ-0KHq', '', '', 'gtKFFx', 'eCwWELxi', 0);

-- ----------------------------
-- Table structure for nm_procart
-- ----------------------------
DROP TABLE IF EXISTS `nm_procart`;
CREATE TABLE `nm_procart`  (
  `pc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pc_date` datetime(0) NOT NULL,
  `pc_pro_id` int(11) NOT NULL,
  `pc_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`pc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_procolor
-- ----------------------------
DROP TABLE IF EXISTS `nm_procolor`;
CREATE TABLE `nm_procolor`  (
  `pc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pc_pro_id` int(10) UNSIGNED NOT NULL,
  `pc_co_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`pc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 846 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_procolor
-- ----------------------------
INSERT INTO `nm_procolor` VALUES (6, 2, 11);
INSERT INTO `nm_procolor` VALUES (9, 1, 52);
INSERT INTO `nm_procolor` VALUES (14, 5, 17);
INSERT INTO `nm_procolor` VALUES (17, 4, 8);
INSERT INTO `nm_procolor` VALUES (116, 9, 13);
INSERT INTO `nm_procolor` VALUES (117, 9, 17);
INSERT INTO `nm_procolor` VALUES (118, 8, 24);
INSERT INTO `nm_procolor` VALUES (119, 8, 18);
INSERT INTO `nm_procolor` VALUES (120, 8, 23);
INSERT INTO `nm_procolor` VALUES (121, 8, 16);
INSERT INTO `nm_procolor` VALUES (122, 8, 14);
INSERT INTO `nm_procolor` VALUES (123, 8, 6);
INSERT INTO `nm_procolor` VALUES (125, 22, 19);
INSERT INTO `nm_procolor` VALUES (126, 34, 11);
INSERT INTO `nm_procolor` VALUES (135, 43, 5);
INSERT INTO `nm_procolor` VALUES (136, 43, 6);
INSERT INTO `nm_procolor` VALUES (137, 45, 5);
INSERT INTO `nm_procolor` VALUES (138, 45, 6);
INSERT INTO `nm_procolor` VALUES (139, 46, 5);
INSERT INTO `nm_procolor` VALUES (140, 46, 6);
INSERT INTO `nm_procolor` VALUES (141, 47, 5);
INSERT INTO `nm_procolor` VALUES (142, 47, 6);
INSERT INTO `nm_procolor` VALUES (143, 49, 5);
INSERT INTO `nm_procolor` VALUES (144, 49, 6);
INSERT INTO `nm_procolor` VALUES (145, 50, 5);
INSERT INTO `nm_procolor` VALUES (146, 50, 6);
INSERT INTO `nm_procolor` VALUES (147, 51, 5);
INSERT INTO `nm_procolor` VALUES (148, 51, 6);
INSERT INTO `nm_procolor` VALUES (151, 53, 5);
INSERT INTO `nm_procolor` VALUES (152, 53, 6);
INSERT INTO `nm_procolor` VALUES (153, 54, 5);
INSERT INTO `nm_procolor` VALUES (154, 54, 6);
INSERT INTO `nm_procolor` VALUES (155, 55, 5);
INSERT INTO `nm_procolor` VALUES (156, 55, 6);
INSERT INTO `nm_procolor` VALUES (157, 56, 5);
INSERT INTO `nm_procolor` VALUES (158, 56, 6);
INSERT INTO `nm_procolor` VALUES (159, 57, 5);
INSERT INTO `nm_procolor` VALUES (160, 57, 6);
INSERT INTO `nm_procolor` VALUES (161, 58, 5);
INSERT INTO `nm_procolor` VALUES (162, 58, 6);
INSERT INTO `nm_procolor` VALUES (163, 59, 5);
INSERT INTO `nm_procolor` VALUES (164, 59, 6);
INSERT INTO `nm_procolor` VALUES (169, 62, 5);
INSERT INTO `nm_procolor` VALUES (170, 62, 6);
INSERT INTO `nm_procolor` VALUES (175, 65, 5);
INSERT INTO `nm_procolor` VALUES (176, 65, 6);
INSERT INTO `nm_procolor` VALUES (177, 66, 5);
INSERT INTO `nm_procolor` VALUES (178, 66, 6);
INSERT INTO `nm_procolor` VALUES (227, 91, 5);
INSERT INTO `nm_procolor` VALUES (228, 91, 6);
INSERT INTO `nm_procolor` VALUES (229, 92, 5);
INSERT INTO `nm_procolor` VALUES (230, 92, 6);
INSERT INTO `nm_procolor` VALUES (257, 36, 24);
INSERT INTO `nm_procolor` VALUES (267, 112, 5);
INSERT INTO `nm_procolor` VALUES (268, 112, 6);
INSERT INTO `nm_procolor` VALUES (269, 113, 5);
INSERT INTO `nm_procolor` VALUES (270, 113, 6);
INSERT INTO `nm_procolor` VALUES (271, 114, 5);
INSERT INTO `nm_procolor` VALUES (272, 114, 6);
INSERT INTO `nm_procolor` VALUES (273, 115, 5);
INSERT INTO `nm_procolor` VALUES (274, 115, 6);
INSERT INTO `nm_procolor` VALUES (275, 116, 5);
INSERT INTO `nm_procolor` VALUES (276, 116, 6);
INSERT INTO `nm_procolor` VALUES (277, 117, 5);
INSERT INTO `nm_procolor` VALUES (278, 117, 6);
INSERT INTO `nm_procolor` VALUES (279, 122, 11);
INSERT INTO `nm_procolor` VALUES (280, 123, 11);
INSERT INTO `nm_procolor` VALUES (281, 124, 11);
INSERT INTO `nm_procolor` VALUES (282, 125, 11);
INSERT INTO `nm_procolor` VALUES (283, 126, 11);
INSERT INTO `nm_procolor` VALUES (284, 127, 11);
INSERT INTO `nm_procolor` VALUES (285, 128, 11);
INSERT INTO `nm_procolor` VALUES (286, 129, 11);
INSERT INTO `nm_procolor` VALUES (287, 130, 11);
INSERT INTO `nm_procolor` VALUES (288, 131, 11);
INSERT INTO `nm_procolor` VALUES (289, 132, 11);
INSERT INTO `nm_procolor` VALUES (290, 133, 11);
INSERT INTO `nm_procolor` VALUES (291, 134, 11);
INSERT INTO `nm_procolor` VALUES (292, 135, 11);
INSERT INTO `nm_procolor` VALUES (294, 137, 5);
INSERT INTO `nm_procolor` VALUES (295, 137, 6);
INSERT INTO `nm_procolor` VALUES (298, 138, 10);
INSERT INTO `nm_procolor` VALUES (299, 138, 6);
INSERT INTO `nm_procolor` VALUES (300, 138, 5);
INSERT INTO `nm_procolor` VALUES (311, 141, 5);
INSERT INTO `nm_procolor` VALUES (312, 141, 6);
INSERT INTO `nm_procolor` VALUES (313, 142, 5);
INSERT INTO `nm_procolor` VALUES (314, 142, 6);
INSERT INTO `nm_procolor` VALUES (315, 143, 5);
INSERT INTO `nm_procolor` VALUES (316, 143, 6);
INSERT INTO `nm_procolor` VALUES (317, 144, 5);
INSERT INTO `nm_procolor` VALUES (318, 144, 6);
INSERT INTO `nm_procolor` VALUES (319, 145, 5);
INSERT INTO `nm_procolor` VALUES (320, 145, 6);
INSERT INTO `nm_procolor` VALUES (321, 146, 5);
INSERT INTO `nm_procolor` VALUES (322, 146, 6);
INSERT INTO `nm_procolor` VALUES (323, 147, 5);
INSERT INTO `nm_procolor` VALUES (324, 147, 6);
INSERT INTO `nm_procolor` VALUES (325, 148, 5);
INSERT INTO `nm_procolor` VALUES (326, 149, 5);
INSERT INTO `nm_procolor` VALUES (327, 150, 5);
INSERT INTO `nm_procolor` VALUES (328, 153, 5);
INSERT INTO `nm_procolor` VALUES (329, 154, 6);
INSERT INTO `nm_procolor` VALUES (330, 155, 6);
INSERT INTO `nm_procolor` VALUES (331, 156, 5);
INSERT INTO `nm_procolor` VALUES (332, 157, 11);
INSERT INTO `nm_procolor` VALUES (335, 35, 23);
INSERT INTO `nm_procolor` VALUES (336, 139, 10);
INSERT INTO `nm_procolor` VALUES (337, 139, 6);
INSERT INTO `nm_procolor` VALUES (338, 139, 5);
INSERT INTO `nm_procolor` VALUES (340, 162, 16);
INSERT INTO `nm_procolor` VALUES (341, 162, 6);
INSERT INTO `nm_procolor` VALUES (366, 37, 10);
INSERT INTO `nm_procolor` VALUES (501, 167, 61);
INSERT INTO `nm_procolor` VALUES (502, 167, 10);
INSERT INTO `nm_procolor` VALUES (503, 167, 63);
INSERT INTO `nm_procolor` VALUES (504, 167, 59);
INSERT INTO `nm_procolor` VALUES (505, 167, 56);
INSERT INTO `nm_procolor` VALUES (506, 167, 60);
INSERT INTO `nm_procolor` VALUES (507, 167, 57);
INSERT INTO `nm_procolor` VALUES (508, 167, 53);
INSERT INTO `nm_procolor` VALUES (509, 167, 18);
INSERT INTO `nm_procolor` VALUES (510, 167, 14);
INSERT INTO `nm_procolor` VALUES (511, 167, 9);
INSERT INTO `nm_procolor` VALUES (512, 167, 5);
INSERT INTO `nm_procolor` VALUES (513, 168, 21);
INSERT INTO `nm_procolor` VALUES (514, 168, 18);
INSERT INTO `nm_procolor` VALUES (515, 168, 13);
INSERT INTO `nm_procolor` VALUES (519, 169, 12);
INSERT INTO `nm_procolor` VALUES (520, 169, 20);
INSERT INTO `nm_procolor` VALUES (521, 169, 24);
INSERT INTO `nm_procolor` VALUES (548, 165, 52);
INSERT INTO `nm_procolor` VALUES (549, 165, 45);
INSERT INTO `nm_procolor` VALUES (550, 165, 39);
INSERT INTO `nm_procolor` VALUES (551, 165, 37);
INSERT INTO `nm_procolor` VALUES (552, 165, 18);
INSERT INTO `nm_procolor` VALUES (553, 165, 24);
INSERT INTO `nm_procolor` VALUES (554, 165, 56);
INSERT INTO `nm_procolor` VALUES (555, 165, 42);
INSERT INTO `nm_procolor` VALUES (556, 165, 29);
INSERT INTO `nm_procolor` VALUES (557, 165, 26);
INSERT INTO `nm_procolor` VALUES (558, 165, 8);
INSERT INTO `nm_procolor` VALUES (559, 165, 23);
INSERT INTO `nm_procolor` VALUES (560, 165, 60);
INSERT INTO `nm_procolor` VALUES (561, 165, 57);
INSERT INTO `nm_procolor` VALUES (562, 165, 46);
INSERT INTO `nm_procolor` VALUES (563, 165, 28);
INSERT INTO `nm_procolor` VALUES (564, 165, 19);
INSERT INTO `nm_procolor` VALUES (565, 165, 20);
INSERT INTO `nm_procolor` VALUES (566, 165, 16);
INSERT INTO `nm_procolor` VALUES (567, 165, 50);
INSERT INTO `nm_procolor` VALUES (568, 136, 11);
INSERT INTO `nm_procolor` VALUES (584, 177, 25);
INSERT INTO `nm_procolor` VALUES (585, 177, 11);
INSERT INTO `nm_procolor` VALUES (586, 177, 12);
INSERT INTO `nm_procolor` VALUES (599, 185, 5);
INSERT INTO `nm_procolor` VALUES (600, 185, 37);
INSERT INTO `nm_procolor` VALUES (625, 172, 11);
INSERT INTO `nm_procolor` VALUES (626, 172, 10);
INSERT INTO `nm_procolor` VALUES (627, 172, 8);
INSERT INTO `nm_procolor` VALUES (643, 181, 11);
INSERT INTO `nm_procolor` VALUES (644, 181, 19);
INSERT INTO `nm_procolor` VALUES (645, 181, 25);
INSERT INTO `nm_procolor` VALUES (646, 181, 12);
INSERT INTO `nm_procolor` VALUES (647, 181, 24);
INSERT INTO `nm_procolor` VALUES (648, 181, 10);
INSERT INTO `nm_procolor` VALUES (656, 182, 5);
INSERT INTO `nm_procolor` VALUES (657, 182, 37);
INSERT INTO `nm_procolor` VALUES (660, 183, 37);
INSERT INTO `nm_procolor` VALUES (661, 183, 5);
INSERT INTO `nm_procolor` VALUES (662, 190, 9);
INSERT INTO `nm_procolor` VALUES (663, 190, 16);
INSERT INTO `nm_procolor` VALUES (756, 8932, 57);
INSERT INTO `nm_procolor` VALUES (757, 8932, 58);
INSERT INTO `nm_procolor` VALUES (758, 8932, 45);
INSERT INTO `nm_procolor` VALUES (759, 8932, 28);
INSERT INTO `nm_procolor` VALUES (772, 8934, 6);
INSERT INTO `nm_procolor` VALUES (773, 8934, 17);
INSERT INTO `nm_procolor` VALUES (774, 8934, 9);
INSERT INTO `nm_procolor` VALUES (775, 8934, 12);
INSERT INTO `nm_procolor` VALUES (776, 8933, 17);
INSERT INTO `nm_procolor` VALUES (777, 8933, 15);
INSERT INTO `nm_procolor` VALUES (778, 8933, 8);
INSERT INTO `nm_procolor` VALUES (779, 8933, 64);
INSERT INTO `nm_procolor` VALUES (783, 170, 20);
INSERT INTO `nm_procolor` VALUES (784, 170, 15);
INSERT INTO `nm_procolor` VALUES (785, 170, 13);
INSERT INTO `nm_procolor` VALUES (786, 170, 9);
INSERT INTO `nm_procolor` VALUES (791, 189, 8);
INSERT INTO `nm_procolor` VALUES (792, 189, 13);
INSERT INTO `nm_procolor` VALUES (793, 189, 19);
INSERT INTO `nm_procolor` VALUES (794, 189, 25);
INSERT INTO `nm_procolor` VALUES (795, 93, 5);
INSERT INTO `nm_procolor` VALUES (796, 93, 6);
INSERT INTO `nm_procolor` VALUES (797, 164, 6);
INSERT INTO `nm_procolor` VALUES (798, 164, 21);
INSERT INTO `nm_procolor` VALUES (799, 164, 18);
INSERT INTO `nm_procolor` VALUES (800, 164, 11);
INSERT INTO `nm_procolor` VALUES (801, 164, 5);
INSERT INTO `nm_procolor` VALUES (802, 164, 8);
INSERT INTO `nm_procolor` VALUES (803, 164, 9);
INSERT INTO `nm_procolor` VALUES (804, 164, 10);
INSERT INTO `nm_procolor` VALUES (805, 164, 12);
INSERT INTO `nm_procolor` VALUES (806, 164, 14);
INSERT INTO `nm_procolor` VALUES (807, 164, 13);
INSERT INTO `nm_procolor` VALUES (808, 164, 15);
INSERT INTO `nm_procolor` VALUES (809, 164, 16);
INSERT INTO `nm_procolor` VALUES (810, 164, 17);
INSERT INTO `nm_procolor` VALUES (811, 164, 19);
INSERT INTO `nm_procolor` VALUES (812, 164, 20);
INSERT INTO `nm_procolor` VALUES (813, 164, 24);
INSERT INTO `nm_procolor` VALUES (814, 164, 25);
INSERT INTO `nm_procolor` VALUES (815, 164, 47);
INSERT INTO `nm_procolor` VALUES (837, 186, 37);
INSERT INTO `nm_procolor` VALUES (838, 186, 5);
INSERT INTO `nm_procolor` VALUES (840, 140, 6);
INSERT INTO `nm_procolor` VALUES (841, 140, 5);
INSERT INTO `nm_procolor` VALUES (843, 163, 20);

-- ----------------------------
-- Table structure for nm_prodelpolicy
-- ----------------------------
DROP TABLE IF EXISTS `nm_prodelpolicy`;
CREATE TABLE `nm_prodelpolicy`  (
  `pdp_id` bigint(20) UNSIGNED NOT NULL,
  `pdp_pro_id` smallint(5) UNSIGNED NOT NULL,
  `pdp_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_product
-- ----------------------------
DROP TABLE IF EXISTS `nm_product`;
CREATE TABLE `nm_product`  (
  `pro_no_of_purchase` int(11) NOT NULL DEFAULT 0,
  `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_title` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pro_title_fr` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pro_mc_id` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `pro_smc_id` smallint(5) UNSIGNED NOT NULL,
  `pro_sb_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `pro_ssb_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `product_brand_id` int(11) NOT NULL DEFAULT 0,
  `pro_price` decimal(15, 2) NOT NULL,
  `pro_disprice` decimal(15, 2) NOT NULL,
  `pro_discount_percentage` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pro_inctax` tinyint(4) NOT NULL,
  `pro_shippamt` decimal(15, 2) NOT NULL,
  `pro_desc` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pro_desc_fr` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pro_isspec` tinyint(4) NOT NULL COMMENT '1-yes 2-no',
  `pro_is_size` int(11) NOT NULL COMMENT '0=>yes, 1=>no',
  `pro_is_color` int(11) NOT NULL COMMENT '0=>yes, 1=>no',
  `pro_delivery` smallint(5) UNSIGNED NOT NULL COMMENT 'in days',
  `pro_mr_id` int(10) UNSIGNED NOT NULL,
  `pro_sh_id` smallint(5) UNSIGNED NOT NULL,
  `pro_mkeywords` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pro_mkeywords_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pro_mdesc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT 'metadescription',
  `pro_mdesc_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pro_postfacebook` tinyint(4) NULL DEFAULT NULL,
  `pro_Img` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pro_status` tinyint(4) NOT NULL COMMENT '2=>Delete ,1=> Active, 0 => Block',
  `pro_image_count` int(11) NOT NULL,
  `pro_qty` int(11) NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sold_status` int(11) NOT NULL DEFAULT 1,
  `cash_pack` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `allow_cancel` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-No,1-Yes',
  `allow_return` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-No,1-Yes',
  `allow_replace` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0-No,1-Yes',
  `cancel_policy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cancel_policy_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `return_policy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `return_policy_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `replace_policy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `replace_policy_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cancel_days` int(11) NOT NULL DEFAULT 0,
  `return_days` int(11) NOT NULL DEFAULT 0,
  `replace_days` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pro_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_product
-- ----------------------------
INSERT INTO `nm_product` VALUES (20, 34, 'Iphone7S ', '', 6, 48, 76, 0, 0, 1500.00, 1000.00, '33', 5, 5.00, 'test', '', 1, 0, 0, 2, 41, 57, 'test', '', 'test', '', 0, 'Product_151333429126569.800x800_6.jpg/**/', '2017-12-15', 1, 1, 20, 41, 1, '10 ', '1', '1', '1', 'test', '', 'test', '', 'test', '', 2, 2, 2);
INSERT INTO `nm_product` VALUES (23, 35, 'Divastri Cotton', '', 2, 2, 4, 1, 0, 555.00, 5.00, '99', 4, 4.00, 'tt', '', 1, 0, 0, 5, 93, 112, 'g', '', 'g', '', 0, 'Product_151333458431144.800x800.jpg/**/', '2017-12-15', 1, 1, 500, 41, 1, '4', '1', '1', '1', 'fgfg', '', 'vvv', '', 'vv', '', 3, 3, 3);
INSERT INTO `nm_product` VALUES (51, 36, 'Kid-TShirt ', '', 2, 2, 3, 8, 0, 1500.00, 10.00, '99', 5, 5.00, 'test', '', 1, 0, 0, 5, 41, 57, 'test', '', 'test', '', 0, 'Product_15133367309322.800x800_4.jpg/**/', '2017-12-15', 1, 1, 250, 68, 1, '10', '1', '1', '1', 'test', '', 'test', '', 'test', '', 2, 2, 2);
INSERT INTO `nm_product` VALUES (1, 37, 'Oomph ', '', 2, 2, 3, 8, 0, 850.00, 750.00, '11', 5, 5.00, 'test', '', 1, 0, 0, 3, 41, 61, 'test', '', 'test', '', 0, 'Product_15133374623174.800x800_7.jpg/**/', '2017-12-15', 1, 1, 2, 12, 1, '5 ', '1', '1', '1', 'test', '', 'test', '', 'test', '', 2, 2, 2);
INSERT INTO `nm_product` VALUES (7, 38, 'Fashion design', '', 3, 7, 19, 22, 0, 500.00, 2.00, '100', 5, 5.00, 'tst', '', 2, 1, 1, 2, 41, 61, 'tst', '', 'tst', '', 0, 'Product_151342661915880.Deal_1512811950.top -2 800x800.jpg/**/', '2017-12-16', 0, 1, 200, 17, 1, '2', '1', '1', '1', 'tst', '', 'tst', '', 'tst', '', 2, 2, 2);
INSERT INTO `nm_product` VALUES (0, 39, 'Design Willa', '', 3, 7, 19, 22, 0, 2500.00, 2000.00, '20', 10, 10.00, 'test', '', 2, 1, 1, 4, 41, 61, 'test', '', 'test', '', 0, 'Product_151359143022749.jpg/**/', '2017-12-16', 1, 1, 20, 3, 1, '5', '1', '1', '1', 'test', '', 'test', '', 'test', '', 10, 10, 10);
INSERT INTO `nm_product` VALUES (6, 40, 'chek now image', '', 2, 2, 4, 1, 0, 20.00, 10.00, '50', 0, 0.00, 'b', '', 2, 1, 1, 4, 59, 62, 'sdf', '', 'sdf', '', 0, 'Product_151359200131102.jpg/**/Product_15135920233492.jpg/**/', '2017-12-18', 1, 2, 10, 28, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (10, 41, 'image check 3', '', 3, 4, 0, 0, 0, 20.00, 5.00, '75', 0, 0.00, 'Description', '', 2, 1, 1, 5, 58, 59, '', '', '', '', 0, 'Product_1513593843.png/**/', '2017-11-18', 1, 1, 10, 44, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 42, 'Shoe', '', 7, 17, 26, 0, 0, 300.00, 200.00, '33', 0, 0.00, 'ghgh', '', 2, 1, 1, 3, 41, 61, '', '', '', '', 0, 'Product_151360162426322.jpeg/**/', '2017-12-18', 1, 1, 3, 0, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 43, 'merchant2 product bulk upload submit row4', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 62, 65, 'keytest', '', 'desc', '', 0, '1513765811800-800.jpg/**/', '2017-12-20', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (5, 44, 'ytuyu', '', 2, 2, 4, 1, 0, 23.00, 11.00, '52', 0, 0.00, 'eree', '', 2, 1, 1, 12, 41, 57, '', '', '', '', 0, 'Product_151376625522993.gif/**/', '2017-12-20', 1, 1, 454, 12, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 45, 'title', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 62, 65, 'keytest', '', 'desc', '', 0, '1513776664800-800.jpg/**/', '2017-12-20', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 46, 'title2', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 62, 65, 'keytest', '', 'desc', '', 0, '1513776665800-800.jpg/**/', '2017-12-20', 1, 0, 11, 1, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (5, 47, '22', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 62, 65, 'keytest', '', 'desc', '', 0, '1513776666800-800.jpg/**/', '2017-12-20', 1, 0, 12, 28, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (10, 48, 'pro 7:11', '', 2, 2, 3, 0, 0, 5.00, 1.00, '80', 0, 0.00, 'des', '', 2, 0, 1, 3, 92, 111, '', '', '', '', 0, 'Product_151377738128996.jpg/**/', '2017-12-20', 1, 1, 10, 26, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 49, 'ptitle', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513830839800-800.jpg/**/', '2017-12-21', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (0, 50, 'ptitle2', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513830839800-800.jpg/**/', '2017-12-21', 1, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 6, 1, 7);
INSERT INTO `nm_product` VALUES (0, 51, 'p22', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513830839800-800.jpg/**/', '2017-12-21', 1, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 7, 1, 8);
INSERT INTO `nm_product` VALUES (0, 52, 'ptitle', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '6', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513832545800-800.jpg/**/', '2017-12-21', 1, 1, 10, 1, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 53, 'ptitle2', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513832545800-800.jpg/**/', '2017-12-21', 1, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 54, 'p22', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513832545800-800.jpg/**/', '2017-12-21', 1, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 55, 'ptitle11', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513832646800-800.jpg/**/', '2017-12-21', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 56, 'ptitle121', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513832647800-800.jpg/**/', '2017-12-21', 1, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 57, 'p2211', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513832647800-800.jpg/**/', '2017-12-21', 1, 0, 12, 1, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (1, 58, 'malar_product', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513835919800-800.jpg/**/', '2017-12-21', 1, 0, 10, 5, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 59, 'pro2', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513835919800-800.jpg/**/', '2017-12-21', 1, 0, 11, 1, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 60, 'malar_product1', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513835920800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 61, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513835971800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 62, 'pro21', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513835971800-800.jpg/**/', '2017-12-21', 1, 0, 11, 1, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 63, 'malar_product11', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513835972800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 64, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513836242800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 65, 'product', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513836243800-800.jpg/**/', '2017-12-21', 1, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 66, 'malar_produc', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513836243800-800.jpg/**/', '2017-12-21', 1, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 67, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513836734800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 68, 'product1', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513836734800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 69, 'malar_produc1', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513836735800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 70, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513836808800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 71, 'product11', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513836808800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 72, 'malar_produc11', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513836808800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 73, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513836917800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 74, 'product11w', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513836917800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 75, 'malar_produc11w', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513836918800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 76, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513837141800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 77, 'product11w', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513837141800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 78, 'malar_produc11w', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513837142800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 79, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513837281800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 80, 'product11w1', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513837281800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 81, 'malar_produc11w1', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513837282800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 82, 'malar_product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513837415800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 83, 'product11w14', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513837415800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 84, 'malar_produc11w14', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513837415800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 85, 'malar_product12', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513839077800-800.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 86, 'product11w14q5', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513839078800-800.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 87, 'malar_produc11w14q5', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513839079800-800.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 88, 'malar_produsct12', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513856103800-800.jpg/**/1513856104250-200.jpg/**/', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 89, 'product11w14q50s', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513856105800-800.jpg/**/1513856105250-200.jpg/**/', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 90, 'malar_produc11w1s4q50', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513856106800-800.jpg/**/1513856106250-200.jpg/**/', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 91, 'product1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513856414800-800.jpg/**/1513856414250-200.jpg/**/', '2017-12-21', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 92, 'product2', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513856414800-800.jpg/**/1513856414250-200.jpg/**/', '2017-12-21', 1, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 93, 'product3', '', 6, 48, 0, 0, 0, 600.00, 216.00, '64', 0, 2.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513856415800-800.jpg/**/Product_151385649422172.jpg/**/', '2017-12-21', 1, 1, 12, 1, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 94, 'sharkz', '', 2, 2, 3, 8, 0, 500.00, 100.00, '80', 0, 0.00, 'ddd', '', 2, 1, 1, 1, 41, 57, 'sas', '', 'sasaas', '', 0, 'Product_151385643119150.png/**/Product_151385645610751.png/**/', '2017-12-21', 1, 1, 5, 0, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (5, 95, 'golo watch', '', 2, 10, 15, 0, 0, 500.00, 100.00, '80', 0, 0.00, 'fefe', '', 2, 1, 1, 4, 58, 59, 'fefe', '', 'egeg', '', 0, 'Product_15138565545604.png/**/Product_151385655531309.png/**/Product_151385655514594.png/**/Product_15138565554627.png/**/Product_151385655511344.png/**/', '2017-12-21', 1, 1, 5, 7, 0, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 96, 'product4', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 97, 'product5', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 98, 'product6', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (5, 99, 'gold chain', '', 2, 10, 15, 0, 0, 300.00, 100.00, '67', 0, 0.00, 'eee', '', 2, 1, 1, 2, 62, 65, 'hhaha', '', 'ttt', '', 0, 'Product_15138566886309.png/**/', '2017-12-21', 1, 1, 5, 3, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 100, 'd', '', 2, 10, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 101, 'y', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 102, 'g', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions\n become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 103, '5', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 104, 'check1', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 105, 'check2', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 106, 'check3', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions\n become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 107, 'check4', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-21', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 108, 'check11', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 109, 'check21', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 2, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 110, 'check31', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions\n become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 2, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 111, 'check41', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 2, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (4, 112, 'check111', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513922362800-800.jpg/**/', '2017-12-22', 1, 0, 10, 85, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 113, 'check211', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513922363800-800.jpg/**/', '2017-12-22', 1, 0, 11, 0, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 114, 'check311', '', 6, 48, 0, 0, 0, 8002.00, 7502.00, '', 0, 52.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions\n become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 5, 58, 59, 'keytest', '', 'desc', '', 0, '1513922363800-800.jpg/**/', '2017-12-22', 1, 0, 12, 0, 1, '2', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 115, 'check411', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '1513922363800-800.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 116, 'check1r111', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'When you write a product description with a\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 3, 58, 59, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 1, 0, 10, 5, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 117, 'check2r111', '', 6, 48, 0, 0, 0, 8001.00, 7501.00, '', 0, 51.00, 'When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 0, 4, 58, 59, 'keytest', '', 'desc', '', 0, '1513933971800-800.jpg/**/', '2017-12-22', 1, 0, 11, 1, 1, '1', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (4, 118, 'aj', '', 2, 2, 3, 0, 0, 200.00, 100.00, '', 0, 0.00, 'ee', '', 2, 1, 1, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139352991.png/**/', '2017-12-22', 1, 0, 4, 9, 1, '0', '', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 119, 'gooal', '', 2, 2, 3, 0, 0, 200.00, 100.00, '', 0, 0.00, 'ee', '', 2, 1, 1, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139354805.png/**/', '2017-12-22', 1, 0, 4, 0, 1, '0', '', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 120, 'zs', '', 2, 2, 3, 0, 0, 200.00, 100.00, '', 0, 0.00, 'ee', '', 2, 1, 1, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139356556.jpg/**/', '2017-12-22', 1, 0, 4, 2, 1, '0', '', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 121, 'zsa', '', 2, 2, 3, 0, 0, 200.00, 100.00, '', 0, 0.00, 'ee', '', 2, 1, 1, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139357816.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '0', '', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 122, 'zsaz', '', 2, 2, 3, 8, 0, 200.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139363283.png/**/', '2017-12-22', 1, 0, 4, 0, 1, '0', '', '0', '0', 'haha', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 123, 'zsazs', '', 2, 2, 3, 8, 0, 200.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139364976.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '0', '', '1', '1', 'haha', '', 'ee', '', 'eer', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 124, 'zsazsz', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139373956.jpg/**/', '2017-12-22', 1, 0, 4, 2, 1, '0', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 125, 'haha', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139375086.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 126, 'haha1', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139387256.jpg/**/', '2017-12-22', 1, 0, 4, 1, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 1, 0, 0);
INSERT INTO `nm_product` VALUES (0, 127, 'haha12', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139389416.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 0, 0);
INSERT INTO `nm_product` VALUES (0, 128, 'haha123', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139393076.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 0);
INSERT INTO `nm_product` VALUES (0, 129, 'haha1234', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139396626.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 130, 'haha12345', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139398456.jpg/**/', '2017-12-22', 1, 0, 4, 1, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 131, 'ee', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139404086.jpg/**/', '2017-12-22', 1, 0, 4, 2, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 132, 'eez', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139405266.jpg/**/', '2017-12-22', 1, 0, 4, 2, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 133, 'eezw', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139407476.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 134, 'eezwa', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139408346.jpg/**/', '2017-12-22', 1, 0, 4, 0, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 135, 'eezwar', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '', 0, 50.00, 'ee', '', 1, 0, 0, 2, 67, 73, 'jeje', '', 'sjssj', '', 0, '15139410776.jpg/**/', '2017-12-22', 1, 0, 4, 2, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (1, 136, 'eezwara', '', 2, 2, 3, 8, 0, 1000.00, 100.00, '90', 0, 50.00, 'ee', '', 1, 0, 0, 2, 89, 104, 'jeje', '', 'sjssj', '', 0, '15139418806.jpg/**/', '2017-12-22', 1, 1, 4, 7, 1, '50', '1', '1', '1', 'haha', '', 'ee', '', 'eer', '', 12, 11, 7);
INSERT INTO `nm_product` VALUES (0, 137, 'azx', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139426806.jpg/**/', '2017-12-22', 1, 0, 10, 9, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (13, 138, 'final_check', '', 2, 2, 3, 8, 0, 9000.00, 8500.00, '6', 10, 150.00, 'ka', '', 1, 0, 0, 4, 60, 63, 'keytestz', '', 'descz', '', 0, 'Product_1513943423558.jpg/**/', '2017-12-22', 1, 1, 15, 36, 1, '10', '1', '1', '1', 'Test descs', '', 'ee', '', 'cancelpolicy descx', '', 4, 2, 5);
INSERT INTO `nm_product` VALUES (3, 139, 'editz', '', 2, 2, 0, 0, 0, 9000.00, 8500.00, '6', 5, 40.00, 'ka', '', 1, 0, 0, 4, 67, 74, 'keytestz', '', 'descz', '', 0, 'Product_1513945278.jpg/**/', '2017-12-22', 1, 1, 15, 32, 1, '5', '1', '1', '1', 'Test descz', '', 'az', '', 'cancelpolicy descz', '', 1, 5, 5);
INSERT INTO `nm_product` VALUES (0, 140, 'final_check', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '6', 5, 2.00, 'k', '', 1, 0, 0, 3, 95, 120, 'keytest', '', 'desc', '', 0, 'Product_152342498530697.jpg/**/', '2017-12-22', 1, 1, 10, 17, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 0, 6);
INSERT INTO `nm_product` VALUES (0, 141, 'x', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139466696.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (0, 142, 'xm', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139467376.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (0, 143, 'xmz', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 0, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139479476.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 144, 'xmzv', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139481926.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 145, 'xmzvk', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139483206.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 4, 0, 0);
INSERT INTO `nm_product` VALUES (0, 146, 'xmzvka', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139485256.jpg/**/', '2017-12-22', 1, 0, 10, 1, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 147, 'xmzvkaz', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139486236.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 148, 'xmzvkaza', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139505666.jpg/**/', '2017-12-22', 1, 0, 10, 1, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 149, 'xx', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 150, 'xxd', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 151, 'dd', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 1, 0, 10, 1, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 152, 'ww', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 153, 'es', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 15, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139520026.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 154, 'xxq', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 8, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139529921.jpg/**/15139529922.jpg/**/', '2017-12-22', 1, 0, 10, 0, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 155, 'xxqqq', '', 6, 48, 0, 0, 0, 8000.00, 7500.00, '', 8, 50.00, 'k', '', 1, 0, 0, 3, 67, 73, 'keytest', '', 'desc', '', 0, '15139530631.jpg/**/15139530632.jpg/**/', '2017-12-22', 1, 0, 10, 11, 1, '0', '1', '1', '1', 'Test desc', '', 'yes', '', 'cancelpolicy desc', '', 4, 7, 9);
INSERT INTO `nm_product` VALUES (0, 156, 'y', '', 2, 2, 0, 0, 0, 700.00, 500.00, '', 8, 10.00, 'a', '', 2, 0, 0, 1, 59, 62, 'ee', '', 'dd', '', 0, '15139530633.jpg/**/15139530634.jpg/**/', '2017-12-22', 1, 0, 2, 13, 1, '50', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (5, 157, 'z', '', 2, 10, 0, 0, 0, 500.00, 100.00, '', 8, 56.00, 'e', '', 2, 0, 0, 2, 62, 65, 'eew', '', 'sa', '', 0, '15139530635.jpg/**/15139530636.jpg/**/', '2017-12-22', 1, 0, 5, 1, 0, '32', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 158, 'saree', '', 3, 4, 5, 0, 0, 1000.00, 800.00, '20', 0, 0.00, 'nice to wear', '', 2, 1, 1, 2, 58, 59, 'saree', '', 'saree', '', 0, 'Product_151435794119551.jpg/**/', '2017-12-27', 1, 1, 50, 11, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 159, 'Powder', '', 4, 6, 24, 33, 0, 150.00, 100.00, '33', 5, 40.00, 'powder', '', 2, 1, 1, 4, 58, 59, 'powder', '', 'powder', '', 0, 'Product_151437376710879.jpg/**/', '2017-12-27', 1, 1, 50, 30, 1, '5', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (8, 160, 'silk saree', '', 3, 4, 0, 0, 0, 90001.00, 85001.00, '5', 5, 40.00, 'sf', '', 2, 1, 1, 2, 41, 57, 'saree', '', 'saree', '', 0, '800 800JJo5wiKc.jpg/**/', '2017-12-27', 1, 1, 50, 11, 1, '5', '1', '0', '0', 'asdsa', '', '', '', '', '', 10, 0, 0);
INSERT INTO `nm_product` VALUES (52, 161, 'venu check', '', 5, 14, 0, 0, 0, 36.00, 30.00, '16', 0, 0.00, 'Description&nbsp;', '', 2, 0, 1, 4, 95, 120, '', '', '', '', 0, 'Product_151498447117205.jpg/**/', '2018-01-03', 1, 1, 20000, 80, 1, '100', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 162, 'product_1', '', 2, 11, 0, 0, 0, 5.00, 2.00, '60', 0, 0.00, 'Description&nbsp;', '', 2, 0, 0, 10, 41, 57, '', '', '', '', 0, 'Product_151498661025833.jpg/**/', '2018-01-03', 1, 1, 10, 0, 1, '10 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (4, 163, 'Product ad', '', 2, 11, 17, 0, 0, 100.00, 3.00, '97', 4, 1.00, 'Description&nbsp;', '', 1, 0, 0, 3, 95, 120, '', '', '', '', 0, 'Product_152360382422857.jpg/**/', '2018-01-03', 1, 1, 10, 48, 1, '10 ', '1', '0', '0', 'sdfs', '', '', '', '', '', 2, 0, 0);
INSERT INTO `nm_product` VALUES (4, 164, 'Test Products 1Test Products 1Test Products 1Test Products 1Test Products 1Test Products 1Test Products 1Test Products 1Test Products 1Test Products 1', '', 2, 10, 0, 0, 0, 989.00, 751.00, '24', 10, 1200.00, '<h1>Test&nbsp;</h1><br><span class=\"wysiwyg-color-green\">Test black<br><br><b>Test Bold<br></b><br><i>Test Italic<br></i><br><u>Test Underline<br></u></span><ul><li><span class=\"wysiwyg-color-green\"><u>Test Bullet1</u></span></li><li><span class=\"wysiwyg-color-green\"><u>Test Bullet2</u></span></li></ul><ol><li>Test Orderlist 1</li><li>Test Orderlist 2&nbsp; &nbsp;&nbsp;</li></ol>Test Outdent Test Outdent Test Outdent Test Outdent Test Outdent&nbsp;<br><br><blockquote>Test Indent Test Indent Test Indent Test Indent Test Indent Test Indent&nbsp;<br><br><a href=\"http://192.168.0.24/laravelecommerce_with_lang\" target=\"_self\" rel=\"\">http://192.168.0.24/laravelecommerce_with_lang</a> <br><br><img alt=\"\" src=\"http://192.168.0.24/laravelecommerce_with_lang/assets/product/800 800JJo5wiKc.jpg\"><br><br><br><br><br></blockquote>', '', 2, 0, 0, 1, 62, 65, 'Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords Test Meta Keywords ', '', 'Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description Test Meta Description ', '', 0, '/**/Product_151504245613841.jpg/**/Product_151504245625462.jpg/**/', '2018-01-04', 1, 1, 10, 35, 1, '10', '1', '1', '1', 'Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy Test Cancellation Policy&nbsp;', '', 'Test Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Test Return&nbsp;Policy Return Policy&nbsp;', '', 'Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy Test Replacement Policy&nbsp;', '', 10, 5, 2);
INSERT INTO `nm_product` VALUES (0, 165, 'product1', '', 5, 14, 0, 0, 0, 99999999.99, 99999999.99, '0', 23, 120.00, 'fghgfh', '', 2, 0, 0, 2, 41, 57, 'dgfdg', '', 'ghfh', '', 0, 'Product_151506509011805.jpg/**/', '2018-01-04', 1, 1, 23, 0, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 166, 'sfsdf', '', 3, 4, 7, 35, 0, 1230000000.00, 1212101010.00, '1', 8, 4.00, 'gfhgfjh', '', 1, 0, 0, 21, 58, 59, 'fhgfjh', '', 'fhgfhg', '', 0, 'Product_151513161028783.jpg/**/', '2018-01-05', 1, 1, 10, 1, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (7, 167, 'RG - Cloths', '', 2, 2, 3, 9, 0, 456.00, 300.00, '34', 12, 0.00, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.<br>', '', 1, 0, 0, 5, 0, 75, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '', 0, 'Cloud9_Shirtoq1dlejr.png/**/Product_151565764132600.jpg/**/Product_151565764114513.jpg/**/Product_151565764116790.jpg/**/Product_151565768922897.jpg/**/', '2018-01-05', 1, 1, 45, 13, 1, '0', '1', '1', '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.<br>', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.<br>', '', 'Enter Replacement PolicyIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.<br>', '', 10, 10, 10);
INSERT INTO `nm_product` VALUES (10, 168, 'Nike', '', 2, 10, 0, 0, 0, 450.00, 350.00, '22', 0, 0.00, 'How can you tell&nbsp;if your Nike Air Max 90 shoes are real or fake? We are going to study two&nbsp;pairs of the classic style Air Max 90. One&nbsp;pair&nbsp;is real and made by Nike, the other&nbsp;is a&nbsp;Nike Air Max 90 counterfeit: 100% fake. How can you spot the fake Air Max? What are some of the&nbsp;differences in the real shoe vs. the fake shoe?', '', 1, 0, 0, 2, 68, 75, 'On our fake Air Max 90, the stitching groove interferes with the “A” and the “R” of the Nike Air logo. Also, the counterfeit shoe “Air” logo is missing the molded ribs below the letters. Additionally, the top shape of the OG Nike patch has a significant dip in the middle.', '', 'On our fake Air Max 90, the stitching groove interferes with the “A” and the “R” of the Nike Air logo. Also, the counterfeit shoe “Air” logo is missing the molded ribs below the letters. Additionally, the top shape of the OG Nike patch has a significant dip in the middle.', '', 0, 'nikeKqnWwId8.jpg/**/', '2018-01-05', 1, 1, 10, 20, 0, '0', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (25, 169, 'PUMA', '', 2, 10, 0, 0, 0, 450.00, 305.00, '32', 1, 0.00, 'Challenge: create a motorsport-inspired shoe that embodies speed, even when it\'s standing still. The result? The latest iteration of the PUMA Future Cat. Metallic graphics on the leather upper take inspiration from a wind tunnel, while an asymmetrical lacing system and rounded heel are driver\'s seat-ready.<br>', '', 2, 0, 0, 3, 68, 75, 'Soft, full grain leather upper with printed metallic, wind tunnel-inspired graphics and synthetic trimmings', '', 'Cushioned heel for optimum comfort\r\nRubber outsole for added grip', '', 0, 'pumayqmhyJSD.jpg/**/', '2018-01-05', 1, 1, 26, 9, 1, '0', '1', '1', '0', 'As long as the package has not left our warehouse, the order may be cancelled. Cancellations can be carried out by contacting our Customer Service on telephone&nbsp;<b>1800 102 7862</b><br>', '', 'Returns generally take 2-4 days to process. Refunds will be issued to the original payment method.', '', '', '', 2, 4, 0);
INSERT INTO `nm_product` VALUES (31, 170, 'were', '', 3, 4, 7, 0, 0, 10.00, 5.00, '50', 2, 5.00, 'Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;Test purchase product&nbsp;', '', 2, 0, 0, 5, 62, 65, 'TTest purchase product Test purchase product Test purchase product Test purchase product ', '', 'Test purchase product Test purchase product Test purchase product Test purchase product Test purchase product ', '', 0, 'Product_15153869973732.jpg/**/Product_151538699732061.jpg/**/Product_15153869976450.jpg/**/', '2018-01-08', 1, 1, 31, 58, 0, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (45, 171, 'books', '', 9, 20, 0, 0, 0, 110.00, 100.00, '9', 0, 0.00, 'as', '', 2, 1, 1, 5, 95, 120, 'as', '', 'as', '', 0, 'Product_151540668127412.jpg/**/', '2018-01-08', 1, 1, 60, 133, 1, '100', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (11, 172, 'Test merchant product ', '', 3, 4, 7, 35, 0, 50.00, 40.00, '20', 0, 10.00, 'Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;Test merchant product&nbsp;', '', 2, 0, 0, 1, 62, 65, '', '', '', '', 0, 'sunidhi-creation-mann257-m-1-2xkrKAzUMZ.jpg/**/Product_15162682467581.jpg/**/', '2018-01-08', 1, 3, 11, 47, 0, '0', '1', '1', '0', 'test', '', 'test', '', '', '', 2, 0, 0);
INSERT INTO `nm_product` VALUES (13, 173, 'venu_check_color', '', 2, 2, 0, 8, 0, 100.00, 80.00, '20', 2, 0.00, 'Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;', '', 1, 0, 0, 3, 62, 65, 'Test merchant product2 ', '', 'Test merchant product2 ', '', 0, 'designer-saree-red-chiffon-sareeglg4AvRL.jpg/**/', '2018-01-08', 0, 1, 15, 31, 1, '0', '1', '1', '1', 'Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;', '', 'Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;', '', 'Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;Test merchant product2&nbsp;', '', 2, 3, 4);
INSERT INTO `nm_product` VALUES (29, 174, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem ', '', 2, 11, 0, 0, 0, 12.00, 1.00, '91', 0, 0.00, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 2, 0, 1, 32, 60, 63, '', '', '', '', 0, 'Product_152362107412652.jpg/**/', '2018-01-10', 1, 1, 333, 212, 1, '10 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 175, 'new product', '', 2, 2, 3, 8, 0, 250.00, 100.00, '60', 0, 6.00, 'hguyiukj', '', 1, 1, 1, 20, 58, 59, 'dfdg', '', 'dfdg', '', 0, 'Product_151583900716721.jpg/**/', '2018-01-13', 1, 1, 50, 6, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (8, 176, 'Samsung', '', 6, 48, 0, 0, 0, 562.00, 421.00, '25', 0, 1.00, 'rgytuyt', '', 1, 1, 1, 15, 60, 63, 'Samsung1', '', 'Samsung Samsung', '', 0, 'Product_151608389024125.jpg/**/', '2018-01-13', 1, 1, 15, 76, 1, '10', '1', '0', '0', 'dsgfdsfgdsfg', '', '', '', '', '', 5, 0, 0);
INSERT INTO `nm_product` VALUES (7, 177, 'Skullcandy', '', 6, 48, 0, 0, 0, 13399.00, 11200.00, '16', 2, 0.00, '<b>kullcandy</b>&nbsp;Hesh 2 Wireless. If you don\'t want to spend more than double or triple the cost on the Bose SoundLink On-Ear Bluetooth or Beats\' wireless&nbsp;<b>headphones</b>, the Hesh 2 Wireless is a decent budget Bluetooth&nbsp;<b>headphone</b>choice.', '', 1, 1, 0, 4, 67, 73, 'test', '', 'test', '', 0, 'Product_151608985410643.jpg/**/', '2018-01-16', 1, 1, 10, 20, 1, '0 ', '1', '1', '1', '<b>Cancellation Policy</b>. We require 4 days&nbsp;<b>cancellation</b>&nbsp;notice prior to your scheduled arrival, otherwise we will charge you&nbsp;<b>cancellation</b>&nbsp;fee as below. 10% of your total amount will be charged if you do not notify us about your&nbsp;<b>cancellation</b>&nbsp;or any changes by 2 to 4 days before your scheduled arrival.', '', 'Generally, merchandise purchased in store or on Walmart.com can be returned or exchanged within ninety (90) days of purchase with or without a&nbsp;<b>receipt</b>. Below&nbsp;are<b>exceptions</b>&nbsp;to the general ninety (90) day rule. All of the&nbsp;<b>exceptions</b>&nbsp;listed below require the merchandise be returned with a&nbsp;<b>receipt</b>.', '', '<b>Replacement policy</b>&nbsp;is an insurance&nbsp;<b>policy</b>&nbsp;between an insurance company and a consumer which promises to pay the insured the&nbsp;<b>replacement</b>&nbsp;value of the subject of the&nbsp;<b>policy</b>&nbsp;if a loss occurs.', '', 5, 4, 3);
INSERT INTO `nm_product` VALUES (4, 178, 'test', '', 2, 2, 0, 0, 0, 234.00, 23.00, '90', 0, 0.00, 'eeerwerwer', '', 1, 1, 1, 23, 58, 59, '', '', '', '', 0, 'Product_151611372012871.png/**/', '2018-01-16', 1, 2, 190, 73, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (10, 179, 'Raymond', '', 4, 6, 22, 33, 0, 1200.00, 899.00, '25', 2, 30.00, 'The world\'s oldest preserved garment, discovered by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flinders_Petrie\" target=\"\" rel=\"\">Flinders Petrie</a>, is a \"highly sophisticated\" linen shirt from a First Dynasty Egyptian tomb at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tarkhan_(Egypt)\" target=\"\" rel=\"\">Tarkan</a>, c. 3000 BC: \"the shoulders and sleeves have been finely pleated to give form-fitting trimness while allowing the wearer room to move', '', 2, 0, 0, 7, 68, 75, 'Henley shirt ', '', 'a collarless polo shirt', '', 0, 'Product_15161826424782.jpg/**/', '2018-01-17', 1, 1, 10, 23, 0, '0 ', '1', '1', '1', 'test', '', 'test', '', 'test', '', 2, 3, 4);
INSERT INTO `nm_product` VALUES (5, 180, 'Baby Bed', '', 4, 6, 18, 19, 0, 2640.00, 1805.00, '31', 0, 60.00, 'The standard full-size&nbsp;<b>crib</b>&nbsp;mattress is 27¼ inches by 52 inches, and the&nbsp;<b>crib</b>&nbsp;30 inches by 54 inches. Voluntary standards set by the ASTM and the Juvenile Products Manufacturers Assn. require that the openings between slats be no greater than 2? inches, so that&nbsp;<b>babies</b>\' heads can\'t be caught.', '', 1, 0, 0, 4, 68, 75, 'test', '', 'test', '', 0, 'Product_151618957724186.jpg/**/', '2018-01-17', 1, 1, 15, 72, 1, '0 ', '0', '0', '0', 'test', '', 'test', '', 'test', '', 0, 2, 0);
INSERT INTO `nm_product` VALUES (8, 181, 'Umberlla Shirts', '', 2, 2, 4, 1, 0, 800.00, 750.00, '6', 3, 0.00, '<span>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy<br></span>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy<br><br><ul><li>infancy</li><li>hhjhgj</li><li>ghjhgj</li><li>ghjhgj</li><li>ghhgjhgj</li></ul><br><br>', '', 1, 0, 0, 4, 68, 75, 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '', 0, 'Product_151619049815917.jpg/**/Product_151626001824551.jpg/**/Product_151627246619806.jpg/**/Product_151627246617727.jpg/**/', '2018-01-17', 1, 1, 12, 629, 1, '0 ', '1', '1', '1', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '', 2, 5, 0);
INSERT INTO `nm_product` VALUES (0, 182, 'check1111', '', 2, 10, 0, 0, 0, 10.00, 5.00, '', 0, 50.00, 'When you write a product description with a\r\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 3, 41, 57, 'keytest', '', 'desc', '', 0, '15162006691.jpg/**/', '2018-01-17', 1, 0, 10, 2, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (0, 183, 'check12', '', 2, 10, 0, 0, 0, 10.00, 5.00, '', 0, 50.00, 'When you write a product description with a\r\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 3, 41, 57, 'keytest', '', 'desc', '', 0, '15162007361.jpg/**/15162007361.jpg/**/15162007361.jpg/**/15162007361.jpg/**/15162007361.jpg/**/', '2018-01-17', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (4, 184, 'check123', '', 2, 10, 0, 0, 0, 10.00, 5.00, '50', 0, 50.00, 'When you write a product description with a\r\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 3, 95, 120, 'keytest', '', 'desc', '', 0, '15162010181.jpg/**/15162010182.jpg/**/15162010194.jpg/**/15162010194.jpg/**/15162010195.jpg/**/', '2018-01-17', 1, 1, 10, 23, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 0, 6);
INSERT INTO `nm_product` VALUES (0, 185, 'check1234', '', 2, 10, 0, 0, 0, 10.00, 5.00, '', 0, 50.00, 'When you write a product description with a\r\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 2, 0, 0, 3, 41, 57, 'keytest', '', 'desc', '', 0, '15162010921.jpg/**/15162010922.jpg/**/15162010924.jpg/**/15162010924.jpg/**/15162010925.jpg/**/', '2018-01-17', 1, 0, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 1, 6);
INSERT INTO `nm_product` VALUES (3, 186, 'check_calc', '', 2, 10, 0, 0, 0, 10.00, 10.00, '0', 0, 50.00, '<ul><li>When you write a product description with a\r\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.</li></ul>', '', 2, 0, 0, 3, 41, 116, 'keytest', '', 'desc', '', 0, '15162010921.jpg/**/15162010922.jpg/**/15162010924.jpg/**/15162010924.jpg/**/', '2018-01-17', 1, 1, 10, 29, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 0, 6);
INSERT INTO `nm_product` VALUES (0, 187, 'check123456', '', 2, 10, 0, 0, 0, 10.00, 5.00, '50', 0, 50.00, 'When you write a product description with a\r\n huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.', '', 1, 0, 1, 3, 41, 57, 'keytest', '', 'desc', '', 0, '15162010931.jpg/**/Product_151627198227425.jpg/**/Product_151627235919562.jpg/**/Product_15162723591371.jpg/**/Product_151627235912792.jpg/**/', '2018-01-17', 2, 1, 10, 0, 1, '0', '1', '0', '1', 'Test desc', '', '', '', 'cancelpolicy desc', '', 5, 0, 6);
INSERT INTO `nm_product` VALUES (0, 188, 'product1234', '', 2, 2, 3, 61, 0, 234.00, 131.00, '44', 12, 32.00, 'fefs', '', 1, 0, 0, 56, 58, 89, 'hfgj', '', 'fggdhh', '', 0, 'Product_15179900118512.jpg/**/', '2018-02-07', 2, 1, 243, 0, 1, '234', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (14, 189, 'test product', '', 2, 10, 0, 0, 0, 1000.00, 800.00, '20', 3, 0.00, 'test', '', 1, 0, 0, 3, 58, 59, '', '', '', '', 0, 'Product_151971673925671.jpg/**/Product_15197167401140.jpg/**/', '2018-02-27', 1, 1, 30, 100, 1, '200', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (4, 190, 'dress', '', 2, 11, 17, 0, 0, 5.00, 4.00, '20', 0, 0.00, 'test', '', 2, 1, 1, 5, 90, 105, '', '', '', '', 0, 'skullcandyQeCe84Z9.jpg/**/', '2018-03-01', 1, 1, 20, 11, 1, '0', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (7, 191, 'High Heal', '', 6, 48, 76, 0, 0, 500.00, 3.00, '99', 0, 0.00, 'TEST', '', 2, 1, 1, 5, 90, 105, '', '', '', '', 0, 'footsew9cyAq4.jpg/**/Product_7455.jpg/**/', '2018-03-01', 1, 1, 15, 42, 1, '2', '1', '1', '0', 'test', '', 'test', '', '', '', 2, 2, 0);
INSERT INTO `nm_product` VALUES (0, 192, 'product', '', 3, 7, 10, 4, 0, 150.00, 70.00, '53', 0, 0.00, 'test', '', 2, 1, 1, 3, 90, 111, '', '', '', '', 0, 'bagHIDsog2h.jpg/**/bagss7iiWREe2.jpg/**/', '2018-03-01', 1, 2, 15, 1, 1, '20', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (13, 193, 'phone', '', 6, 48, 0, 0, 0, 100.00, 40.00, '60', 0, 0.00, 'test', '', 2, 1, 1, 365, 95, 120, '', '', '', '', 0, 'samsunggY6YEX9p.jpeg/**/', '2018-03-02', 1, 1, 15, 82, 1, '20', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 194, 'samsaung s7 series', '', 6, 48, 76, 0, 0, 100.00, 60.00, '40', 0, 0.00, 'test', '', 2, 1, 1, 3, 90, 105, '', '', '', '', 0, 'redJzSXmpqJ.jpg/**/', '2018-03-02', 1, 1, 15, 2, 1, '0', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 195, 'productadmin', '', 2, 10, 0, 0, 0, 234.00, 121.00, '48', 23, 1.00, 'fgdfg', '', 1, 0, 0, 213, 41, 0, 'rt', '', 'retr', '', 0, 'Product_151999174615026.jpg/**/', '2018-03-02', 2, 1, 234, 0, 1, '55', '1', '1', '1', 'hrhdg', '', 'retsgs', '', 'ytrrt', '', 543, 423, 43);
INSERT INTO `nm_product` VALUES (10, 196, 'testproduct1', '', 2, 2, 0, 0, 0, 200.00, 100.00, '50', 3, 0.00, 'test', '', 2, 1, 1, 2, 95, 120, 'test', '', '', '', 0, 'Product_15227466249707.jpg/**/Product_15227466249707.jpg/**/Product_15227466249707.jpg', '2018-04-03', 1, 1, 10, 262, 0, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 197, 'dsfdsg', '', 2, 2, 0, 8, 0, 34.00, 23.00, '32', 0, 0.00, 'dfgfdgs', '', 2, 1, 1, 34, 58, 59, 'fdgg', '', 'dgdg', '', 0, 'Product_15235991758608.jpg/**/', '2018-04-13', 1, 1, 500, 0, 1, '34', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 204, 'sdfsdfs', '', 2, 2, 0, 0, 0, 5.00, 5.00, '0', 0, 0.00, 'asfdsdfa', NULL, 2, 0, 0, 5, 41, 67, NULL, NULL, NULL, NULL, NULL, '183811684wwvdSfCc.jpg/**/', '2018/06/07', 0, 1, 5, 0, 1, '5', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 205, 'fdsgssdfg', '', 2, 2, 0, 0, 0, 5.00, 5.00, '0', 0, 0.00, 'asdfasdf', NULL, 2, 0, 0, 5, 41, 67, NULL, NULL, NULL, NULL, NULL, '183811684LtRQLpRe.jpg/**/', '2018/06/07', 0, 1, 5, 0, 1, '5', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 206, 'tttt', '', 2, 2, 0, 0, 0, 5.00, 5.00, '0', 0, 0.00, 'sadfsdfsdf', NULL, 1, 0, 0, 5, 41, 67, NULL, NULL, NULL, NULL, NULL, '183811684S9mxX0Tw.jpg/**/', '2018/06/07', 0, 1, 5, 0, 1, '5', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `nm_product` VALUES (0, 207, 'tttt', '', 2, 2, 0, 0, 0, 5.00, 5.00, '0', 0, 0.00, 'sadfsdfsdf', NULL, 1, 0, 0, 5, 41, 67, NULL, NULL, NULL, NULL, NULL, '183811684p8nGhWbb.jpg/**/', '2018/06/07', 0, 1, 5, 0, 1, '5', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for nm_prosize
-- ----------------------------
DROP TABLE IF EXISTS `nm_prosize`;
CREATE TABLE `nm_prosize`  (
  `ps_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ps_pro_id` int(10) UNSIGNED NOT NULL,
  `ps_si_id` smallint(5) UNSIGNED NOT NULL,
  `ps_volume` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ps_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1225 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_prosize
-- ----------------------------
INSERT INTO `nm_prosize` VALUES (15, 2, 14, 1);
INSERT INTO `nm_prosize` VALUES (32, 1, 9, 1);
INSERT INTO `nm_prosize` VALUES (33, 1, 8, 1);
INSERT INTO `nm_prosize` VALUES (34, 1, 7, 1);
INSERT INTO `nm_prosize` VALUES (35, 1, 5, 1);
INSERT INTO `nm_prosize` VALUES (40, 5, 5, 1);
INSERT INTO `nm_prosize` VALUES (89, 6, 14, 1);
INSERT INTO `nm_prosize` VALUES (137, 4, 5, 1);
INSERT INTO `nm_prosize` VALUES (185, 7, 14, 1);
INSERT INTO `nm_prosize` VALUES (270, 13, 14, 1);
INSERT INTO `nm_prosize` VALUES (274, 12, 14, 1);
INSERT INTO `nm_prosize` VALUES (276, 11, 14, 1);
INSERT INTO `nm_prosize` VALUES (278, 14, 14, 1);
INSERT INTO `nm_prosize` VALUES (281, 17, 14, 1);
INSERT INTO `nm_prosize` VALUES (288, 19, 14, 1);
INSERT INTO `nm_prosize` VALUES (289, 9, 14, 1);
INSERT INTO `nm_prosize` VALUES (290, 8, 5, 1);
INSERT INTO `nm_prosize` VALUES (291, 8, 7, 1);
INSERT INTO `nm_prosize` VALUES (292, 8, 8, 1);
INSERT INTO `nm_prosize` VALUES (293, 8, 9, 1);
INSERT INTO `nm_prosize` VALUES (294, 8, 11, 1);
INSERT INTO `nm_prosize` VALUES (295, 8, 12, 1);
INSERT INTO `nm_prosize` VALUES (296, 8, 13, 1);
INSERT INTO `nm_prosize` VALUES (297, 8, 15, 1);
INSERT INTO `nm_prosize` VALUES (299, 20, 14, 1);
INSERT INTO `nm_prosize` VALUES (300, 22, 4, 1);
INSERT INTO `nm_prosize` VALUES (302, 23, 14, 1);
INSERT INTO `nm_prosize` VALUES (303, 24, 14, 1);
INSERT INTO `nm_prosize` VALUES (307, 28, 14, 1);
INSERT INTO `nm_prosize` VALUES (308, 29, 14, 1);
INSERT INTO `nm_prosize` VALUES (309, 30, 14, 1);
INSERT INTO `nm_prosize` VALUES (311, 32, 14, 1);
INSERT INTO `nm_prosize` VALUES (313, 18, 14, 1);
INSERT INTO `nm_prosize` VALUES (314, 31, 14, 1);
INSERT INTO `nm_prosize` VALUES (317, 33, 14, 1);
INSERT INTO `nm_prosize` VALUES (333, 39, 14, 1);
INSERT INTO `nm_prosize` VALUES (335, 40, 14, 1);
INSERT INTO `nm_prosize` VALUES (337, 41, 14, 1);
INSERT INTO `nm_prosize` VALUES (341, 43, 14, 1);
INSERT INTO `nm_prosize` VALUES (342, 42, 14, 1);
INSERT INTO `nm_prosize` VALUES (343, 43, 4, 1);
INSERT INTO `nm_prosize` VALUES (344, 43, 5, 1);
INSERT INTO `nm_prosize` VALUES (345, 43, 7, 1);
INSERT INTO `nm_prosize` VALUES (346, 44, 14, 1);
INSERT INTO `nm_prosize` VALUES (347, 45, 4, 1);
INSERT INTO `nm_prosize` VALUES (348, 46, 4, 1);
INSERT INTO `nm_prosize` VALUES (349, 47, 4, 1);
INSERT INTO `nm_prosize` VALUES (350, 48, 12, 1);
INSERT INTO `nm_prosize` VALUES (351, 49, 4, 1);
INSERT INTO `nm_prosize` VALUES (352, 50, 4, 1);
INSERT INTO `nm_prosize` VALUES (353, 51, 4, 1);
INSERT INTO `nm_prosize` VALUES (355, 53, 4, 1);
INSERT INTO `nm_prosize` VALUES (356, 54, 4, 1);
INSERT INTO `nm_prosize` VALUES (357, 55, 4, 1);
INSERT INTO `nm_prosize` VALUES (358, 56, 4, 1);
INSERT INTO `nm_prosize` VALUES (359, 57, 4, 1);
INSERT INTO `nm_prosize` VALUES (360, 58, 4, 1);
INSERT INTO `nm_prosize` VALUES (361, 59, 4, 1);
INSERT INTO `nm_prosize` VALUES (364, 62, 4, 1);
INSERT INTO `nm_prosize` VALUES (367, 65, 4, 1);
INSERT INTO `nm_prosize` VALUES (368, 66, 4, 1);
INSERT INTO `nm_prosize` VALUES (393, 91, 4, 1);
INSERT INTO `nm_prosize` VALUES (394, 92, 4, 1);
INSERT INTO `nm_prosize` VALUES (398, 94, 14, 1);
INSERT INTO `nm_prosize` VALUES (401, 95, 14, 1);
INSERT INTO `nm_prosize` VALUES (406, 99, 14, 1);
INSERT INTO `nm_prosize` VALUES (415, 36, 14, 1);
INSERT INTO `nm_prosize` VALUES (417, 38, 14, 1);
INSERT INTO `nm_prosize` VALUES (423, 112, 4, 1);
INSERT INTO `nm_prosize` VALUES (424, 113, 4, 1);
INSERT INTO `nm_prosize` VALUES (425, 114, 4, 1);
INSERT INTO `nm_prosize` VALUES (426, 115, 4, 1);
INSERT INTO `nm_prosize` VALUES (427, 116, 4, 1);
INSERT INTO `nm_prosize` VALUES (428, 117, 4, 1);
INSERT INTO `nm_prosize` VALUES (429, 122, 5, 1);
INSERT INTO `nm_prosize` VALUES (430, 123, 5, 1);
INSERT INTO `nm_prosize` VALUES (431, 124, 5, 1);
INSERT INTO `nm_prosize` VALUES (432, 125, 5, 1);
INSERT INTO `nm_prosize` VALUES (433, 126, 5, 1);
INSERT INTO `nm_prosize` VALUES (434, 127, 5, 1);
INSERT INTO `nm_prosize` VALUES (435, 128, 5, 1);
INSERT INTO `nm_prosize` VALUES (436, 129, 5, 1);
INSERT INTO `nm_prosize` VALUES (437, 130, 5, 1);
INSERT INTO `nm_prosize` VALUES (438, 131, 5, 1);
INSERT INTO `nm_prosize` VALUES (439, 132, 5, 1);
INSERT INTO `nm_prosize` VALUES (440, 133, 5, 1);
INSERT INTO `nm_prosize` VALUES (441, 134, 5, 1);
INSERT INTO `nm_prosize` VALUES (442, 135, 5, 1);
INSERT INTO `nm_prosize` VALUES (444, 137, 4, 1);
INSERT INTO `nm_prosize` VALUES (446, 138, 5, 1);
INSERT INTO `nm_prosize` VALUES (447, 138, 4, 1);
INSERT INTO `nm_prosize` VALUES (454, 141, 4, 1);
INSERT INTO `nm_prosize` VALUES (455, 142, 4, 1);
INSERT INTO `nm_prosize` VALUES (456, 143, 4, 1);
INSERT INTO `nm_prosize` VALUES (457, 144, 4, 1);
INSERT INTO `nm_prosize` VALUES (458, 145, 4, 1);
INSERT INTO `nm_prosize` VALUES (459, 146, 4, 1);
INSERT INTO `nm_prosize` VALUES (460, 147, 4, 1);
INSERT INTO `nm_prosize` VALUES (461, 148, 4, 1);
INSERT INTO `nm_prosize` VALUES (462, 153, 4, 1);
INSERT INTO `nm_prosize` VALUES (463, 154, 4, 1);
INSERT INTO `nm_prosize` VALUES (464, 155, 4, 1);
INSERT INTO `nm_prosize` VALUES (465, 156, 5, 1);
INSERT INTO `nm_prosize` VALUES (466, 157, 4, 1);
INSERT INTO `nm_prosize` VALUES (467, 158, 14, 1);
INSERT INTO `nm_prosize` VALUES (475, 139, 5, 1);
INSERT INTO `nm_prosize` VALUES (476, 139, 4, 1);
INSERT INTO `nm_prosize` VALUES (480, 160, 14, 1);
INSERT INTO `nm_prosize` VALUES (482, 162, 4, 1);
INSERT INTO `nm_prosize` VALUES (502, 37, 7, 1);
INSERT INTO `nm_prosize` VALUES (503, 37, 5, 1);
INSERT INTO `nm_prosize` VALUES (504, 37, 4, 1);
INSERT INTO `nm_prosize` VALUES (646, 167, 11, 1);
INSERT INTO `nm_prosize` VALUES (647, 167, 12, 1);
INSERT INTO `nm_prosize` VALUES (648, 167, 18, 1);
INSERT INTO `nm_prosize` VALUES (649, 167, 16, 1);
INSERT INTO `nm_prosize` VALUES (650, 167, 15, 1);
INSERT INTO `nm_prosize` VALUES (651, 167, 8, 1);
INSERT INTO `nm_prosize` VALUES (652, 167, 7, 1);
INSERT INTO `nm_prosize` VALUES (653, 167, 5, 1);
INSERT INTO `nm_prosize` VALUES (654, 167, 4, 1);
INSERT INTO `nm_prosize` VALUES (718, 168, 18, 1);
INSERT INTO `nm_prosize` VALUES (719, 168, 17, 1);
INSERT INTO `nm_prosize` VALUES (722, 169, 17, 1);
INSERT INTO `nm_prosize` VALUES (723, 169, 18, 1);
INSERT INTO `nm_prosize` VALUES (752, 165, 18, 1);
INSERT INTO `nm_prosize` VALUES (753, 165, 17, 1);
INSERT INTO `nm_prosize` VALUES (754, 165, 16, 1);
INSERT INTO `nm_prosize` VALUES (755, 165, 15, 1);
INSERT INTO `nm_prosize` VALUES (756, 165, 13, 1);
INSERT INTO `nm_prosize` VALUES (757, 165, 12, 1);
INSERT INTO `nm_prosize` VALUES (758, 165, 11, 1);
INSERT INTO `nm_prosize` VALUES (759, 165, 9, 1);
INSERT INTO `nm_prosize` VALUES (760, 165, 8, 1);
INSERT INTO `nm_prosize` VALUES (761, 165, 7, 1);
INSERT INTO `nm_prosize` VALUES (762, 165, 5, 1);
INSERT INTO `nm_prosize` VALUES (763, 165, 4, 1);
INSERT INTO `nm_prosize` VALUES (764, 136, 5, 1);
INSERT INTO `nm_prosize` VALUES (790, 177, 14, 1);
INSERT INTO `nm_prosize` VALUES (797, 178, 14, 1);
INSERT INTO `nm_prosize` VALUES (801, 185, 4, 1);
INSERT INTO `nm_prosize` VALUES (819, 172, 9, 1);
INSERT INTO `nm_prosize` VALUES (820, 172, 11, 1);
INSERT INTO `nm_prosize` VALUES (821, 172, 12, 1);
INSERT INTO `nm_prosize` VALUES (822, 172, 13, 1);
INSERT INTO `nm_prosize` VALUES (823, 172, 15, 1);
INSERT INTO `nm_prosize` VALUES (824, 172, 16, 1);
INSERT INTO `nm_prosize` VALUES (838, 179, 14, 1);
INSERT INTO `nm_prosize` VALUES (855, 181, 4, 1);
INSERT INTO `nm_prosize` VALUES (856, 181, 5, 1);
INSERT INTO `nm_prosize` VALUES (857, 181, 7, 1);
INSERT INTO `nm_prosize` VALUES (858, 181, 8, 1);
INSERT INTO `nm_prosize` VALUES (870, 188, 14, 1);
INSERT INTO `nm_prosize` VALUES (873, 187, 15, 1);
INSERT INTO `nm_prosize` VALUES (874, 182, 4, 1);
INSERT INTO `nm_prosize` VALUES (876, 183, 4, 1);
INSERT INTO `nm_prosize` VALUES (877, 190, 4, 1);
INSERT INTO `nm_prosize` VALUES (878, 190, 5, 1);
INSERT INTO `nm_prosize` VALUES (879, 190, 8, 1);
INSERT INTO `nm_prosize` VALUES (880, 190, 9, 1);
INSERT INTO `nm_prosize` VALUES (882, 192, 14, 1);
INSERT INTO `nm_prosize` VALUES (886, 194, 14, 1);
INSERT INTO `nm_prosize` VALUES (935, 118, 14, 1);
INSERT INTO `nm_prosize` VALUES (1007, 200, 14, 1);
INSERT INTO `nm_prosize` VALUES (1008, 202, 14, 1);
INSERT INTO `nm_prosize` VALUES (1009, 208, 14, 1);
INSERT INTO `nm_prosize` VALUES (1010, 8932, 4, 1);
INSERT INTO `nm_prosize` VALUES (1011, 8932, 5, 1);
INSERT INTO `nm_prosize` VALUES (1012, 8932, 7, 1);
INSERT INTO `nm_prosize` VALUES (1013, 8932, 8, 1);
INSERT INTO `nm_prosize` VALUES (1014, 8932, 9, 1);
INSERT INTO `nm_prosize` VALUES (1015, 8932, 11, 1);
INSERT INTO `nm_prosize` VALUES (1016, 8932, 12, 1);
INSERT INTO `nm_prosize` VALUES (1017, 8932, 13, 1);
INSERT INTO `nm_prosize` VALUES (1018, 8932, 15, 1);
INSERT INTO `nm_prosize` VALUES (1019, 8932, 16, 1);
INSERT INTO `nm_prosize` VALUES (1020, 8932, 17, 1);
INSERT INTO `nm_prosize` VALUES (1021, 8932, 18, 1);
INSERT INTO `nm_prosize` VALUES (1022, 8932, 19, 1);
INSERT INTO `nm_prosize` VALUES (1023, 8932, 20, 1);
INSERT INTO `nm_prosize` VALUES (1066, 8934, 4, 1);
INSERT INTO `nm_prosize` VALUES (1067, 8934, 5, 1);
INSERT INTO `nm_prosize` VALUES (1068, 8934, 7, 1);
INSERT INTO `nm_prosize` VALUES (1069, 8934, 8, 1);
INSERT INTO `nm_prosize` VALUES (1070, 8934, 9, 1);
INSERT INTO `nm_prosize` VALUES (1071, 8934, 11, 1);
INSERT INTO `nm_prosize` VALUES (1072, 8934, 12, 1);
INSERT INTO `nm_prosize` VALUES (1073, 8934, 13, 1);
INSERT INTO `nm_prosize` VALUES (1074, 8934, 15, 1);
INSERT INTO `nm_prosize` VALUES (1075, 8934, 16, 1);
INSERT INTO `nm_prosize` VALUES (1076, 8934, 17, 1);
INSERT INTO `nm_prosize` VALUES (1077, 8934, 18, 1);
INSERT INTO `nm_prosize` VALUES (1078, 8934, 19, 1);
INSERT INTO `nm_prosize` VALUES (1079, 8934, 20, 1);
INSERT INTO `nm_prosize` VALUES (1080, 8933, 20, 1);
INSERT INTO `nm_prosize` VALUES (1081, 8933, 19, 1);
INSERT INTO `nm_prosize` VALUES (1082, 8933, 18, 1);
INSERT INTO `nm_prosize` VALUES (1083, 8933, 17, 1);
INSERT INTO `nm_prosize` VALUES (1084, 8933, 16, 1);
INSERT INTO `nm_prosize` VALUES (1085, 8933, 15, 1);
INSERT INTO `nm_prosize` VALUES (1086, 8933, 13, 1);
INSERT INTO `nm_prosize` VALUES (1087, 8933, 12, 1);
INSERT INTO `nm_prosize` VALUES (1088, 8933, 11, 1);
INSERT INTO `nm_prosize` VALUES (1089, 8933, 9, 1);
INSERT INTO `nm_prosize` VALUES (1090, 8933, 8, 1);
INSERT INTO `nm_prosize` VALUES (1091, 8933, 7, 1);
INSERT INTO `nm_prosize` VALUES (1092, 8933, 5, 1);
INSERT INTO `nm_prosize` VALUES (1093, 8933, 4, 1);
INSERT INTO `nm_prosize` VALUES (1094, 4000, 14, 1);
INSERT INTO `nm_prosize` VALUES (1095, 3999, 14, 1);
INSERT INTO `nm_prosize` VALUES (1100, 170, 4, 1);
INSERT INTO `nm_prosize` VALUES (1101, 170, 5, 1);
INSERT INTO `nm_prosize` VALUES (1102, 170, 7, 1);
INSERT INTO `nm_prosize` VALUES (1103, 170, 8, 1);
INSERT INTO `nm_prosize` VALUES (1104, 170, 9, 1);
INSERT INTO `nm_prosize` VALUES (1112, 189, 4, 1);
INSERT INTO `nm_prosize` VALUES (1113, 189, 4, 1);
INSERT INTO `nm_prosize` VALUES (1114, 189, 5, 1);
INSERT INTO `nm_prosize` VALUES (1115, 189, 7, 1);
INSERT INTO `nm_prosize` VALUES (1116, 189, 8, 1);
INSERT INTO `nm_prosize` VALUES (1118, 159, 14, 1);
INSERT INTO `nm_prosize` VALUES (1119, 93, 4, 1);
INSERT INTO `nm_prosize` VALUES (1120, 164, 18, 1);
INSERT INTO `nm_prosize` VALUES (1121, 164, 17, 1);
INSERT INTO `nm_prosize` VALUES (1122, 164, 16, 1);
INSERT INTO `nm_prosize` VALUES (1123, 164, 15, 1);
INSERT INTO `nm_prosize` VALUES (1124, 164, 13, 1);
INSERT INTO `nm_prosize` VALUES (1125, 164, 12, 1);
INSERT INTO `nm_prosize` VALUES (1126, 164, 11, 1);
INSERT INTO `nm_prosize` VALUES (1127, 164, 9, 1);
INSERT INTO `nm_prosize` VALUES (1128, 164, 8, 1);
INSERT INTO `nm_prosize` VALUES (1129, 164, 7, 1);
INSERT INTO `nm_prosize` VALUES (1130, 164, 5, 1);
INSERT INTO `nm_prosize` VALUES (1131, 164, 4, 1);
INSERT INTO `nm_prosize` VALUES (1132, 176, 14, 1);
INSERT INTO `nm_prosize` VALUES (1134, 190, 14, 1);
INSERT INTO `nm_prosize` VALUES (1138, 192, 14, 1);
INSERT INTO `nm_prosize` VALUES (1140, 194, 14, 1);
INSERT INTO `nm_prosize` VALUES (1148, 171, 14, 1);
INSERT INTO `nm_prosize` VALUES (1149, 175, 14, 1);
INSERT INTO `nm_prosize` VALUES (1177, 166, 4, 1);
INSERT INTO `nm_prosize` VALUES (1178, 166, 5, 1);
INSERT INTO `nm_prosize` VALUES (1179, 166, 7, 1);
INSERT INTO `nm_prosize` VALUES (1182, 161, 4, 1);
INSERT INTO `nm_prosize` VALUES (1183, 186, 4, 1);
INSERT INTO `nm_prosize` VALUES (1186, 191, 14, 1);
INSERT INTO `nm_prosize` VALUES (1195, 198, 14, 1);
INSERT INTO `nm_prosize` VALUES (1197, 173, 14, 1);
INSERT INTO `nm_prosize` VALUES (1198, 202, 4, 1);
INSERT INTO `nm_prosize` VALUES (1199, 203, 4, 1);
INSERT INTO `nm_prosize` VALUES (1200, 206, 4, 1);
INSERT INTO `nm_prosize` VALUES (1201, 207, 4, 1);
INSERT INTO `nm_prosize` VALUES (1203, 198, 4, 1);
INSERT INTO `nm_prosize` VALUES (1205, 193, 14, 1);
INSERT INTO `nm_prosize` VALUES (1206, 184, 14, 1);
INSERT INTO `nm_prosize` VALUES (1208, 140, 4, 1);
INSERT INTO `nm_prosize` VALUES (1211, 196, 14, 1);
INSERT INTO `nm_prosize` VALUES (1213, 163, 4, 1);
INSERT INTO `nm_prosize` VALUES (1218, 174, 12, 1);
INSERT INTO `nm_prosize` VALUES (1219, 174, 8, 1);
INSERT INTO `nm_prosize` VALUES (1220, 174, 4, 1);
INSERT INTO `nm_prosize` VALUES (1221, 174, 19, 1);
INSERT INTO `nm_prosize` VALUES (1222, 197, 14, 1);

-- ----------------------------
-- Table structure for nm_prospec
-- ----------------------------
DROP TABLE IF EXISTS `nm_prospec`;
CREATE TABLE `nm_prospec`  (
  `spc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spc_pro_id` int(10) UNSIGNED NOT NULL,
  `spc_spg_id` int(11) NOT NULL,
  `spc_sp_id` smallint(5) UNSIGNED NOT NULL,
  `spc_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `spc_value_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`spc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 583 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_prospec
-- ----------------------------
INSERT INTO `nm_prospec` VALUES (14, 2, 10, 15, ' Handset, Adaptor, Earphone, User Manual', 'Combinaison, adaptateur, écouteur, manuel d\'utilisation');
INSERT INTO `nm_prospec` VALUES (15, 2, 10, 16, 'SM-G570FZKGINS', 'SM-G570FZKGINS');
INSERT INTO `nm_prospec` VALUES (16, 2, 10, 17, ' Galaxy J5 Prime', ' Galaxy J5 Prime');
INSERT INTO `nm_prospec` VALUES (17, 2, 10, 18, 'Black', ' Noir');
INSERT INTO `nm_prospec` VALUES (22, 1, 10, 18, 'sandal', 'sandalia');
INSERT INTO `nm_prospec` VALUES (23, 1, 10, 15, ' 1 Kurta, 1 Pyjama, 1 Dupatta', ' 1 Kurta, 1 Pajama, 1 Dupatta');
INSERT INTO `nm_prospec` VALUES (35, 6, 10, 16, 'test spec1', 'test spec1');
INSERT INTO `nm_prospec` VALUES (36, 6, 11, 20, 'test spec2', 'test spec2');
INSERT INTO `nm_prospec` VALUES (37, 6, 10, 16, 'test spec3', 'test spec3');
INSERT INTO `nm_prospec` VALUES (38, 20, 10, 16, 'Test Resolution', 'test resolution');
INSERT INTO `nm_prospec` VALUES (39, 22, 10, 16, 'tests specification fr erre', 'tests specification fr erre');
INSERT INTO `nm_prospec` VALUES (42, 43, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (43, 45, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (44, 45, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (45, 46, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (46, 46, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (47, 47, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (48, 47, 11, 19, 'test4', '');
INSERT INTO `nm_prospec` VALUES (49, 49, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (50, 50, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (51, 50, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (52, 51, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (53, 51, 11, 19, 'test4', '');
INSERT INTO `nm_prospec` VALUES (55, 53, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (56, 53, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (57, 54, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (58, 54, 11, 19, 'test4', '');
INSERT INTO `nm_prospec` VALUES (59, 55, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (60, 55, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (61, 56, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (62, 56, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (63, 57, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (64, 57, 11, 19, 'test4', '');
INSERT INTO `nm_prospec` VALUES (65, 58, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (66, 58, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (67, 59, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (68, 59, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (73, 62, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (74, 62, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (79, 65, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (80, 65, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (81, 66, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (82, 66, 11, 19, 'test4', '');
INSERT INTO `nm_prospec` VALUES (130, 91, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (131, 91, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (132, 92, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (133, 92, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (168, 112, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (169, 112, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (170, 113, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (171, 113, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (172, 114, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (173, 114, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (174, 115, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (175, 115, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (176, 116, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (177, 116, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (178, 117, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (179, 117, 11, 19, 'test3', '');
INSERT INTO `nm_prospec` VALUES (180, 122, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (181, 123, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (182, 124, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (183, 125, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (184, 126, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (185, 127, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (186, 128, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (187, 129, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (188, 130, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (189, 131, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (190, 132, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (191, 133, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (192, 134, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (193, 135, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (195, 137, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (196, 137, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (199, 138, 10, 18, 'wow', '');
INSERT INTO `nm_prospec` VALUES (200, 138, 10, 18, 'ee', '');
INSERT INTO `nm_prospec` VALUES (205, 141, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (206, 141, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (207, 142, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (208, 142, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (209, 143, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (210, 143, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (211, 144, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (212, 144, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (213, 145, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (214, 145, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (215, 146, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (216, 146, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (217, 147, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (218, 147, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (219, 148, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (220, 148, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (221, 153, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (222, 153, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (223, 154, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (224, 154, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (225, 155, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (226, 155, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (227, 156, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (228, 156, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (229, 157, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (230, 157, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (238, 37, 10, 18, 'desc', '');
INSERT INTO `nm_prospec` VALUES (331, 167, 10, 16, '12', '');
INSERT INTO `nm_prospec` VALUES (332, 167, 10, 17, 'small', '');
INSERT INTO `nm_prospec` VALUES (333, 167, 10, 15, 'gfhfghdgf', '');
INSERT INTO `nm_prospec` VALUES (334, 167, 10, 15, 'gfhdgfhgf', '');
INSERT INTO `nm_prospec` VALUES (335, 167, 10, 15, 'gfhgfhgf', '');
INSERT INTO `nm_prospec` VALUES (336, 167, 10, 15, 'gfhfghdfghfg', '');
INSERT INTO `nm_prospec` VALUES (337, 167, 10, 15, 'dgfhdfghdgf', '');
INSERT INTO `nm_prospec` VALUES (338, 167, 10, 15, 'dfghdfghdgf', '');
INSERT INTO `nm_prospec` VALUES (339, 167, 10, 15, 'ertertret', '');
INSERT INTO `nm_prospec` VALUES (340, 167, 10, 15, 'rgdfgdf', '');
INSERT INTO `nm_prospec` VALUES (345, 168, 13, 29, 'sadf', '');
INSERT INTO `nm_prospec` VALUES (356, 136, 10, 18, '32gb', '');
INSERT INTO `nm_prospec` VALUES (389, 177, 11, 20, 'jghj', '');
INSERT INTO `nm_prospec` VALUES (390, 177, 16, 32, '21', '');
INSERT INTO `nm_prospec` VALUES (391, 177, 11, 21, '22', '');
INSERT INTO `nm_prospec` VALUES (392, 177, 11, 20, '22', '');
INSERT INTO `nm_prospec` VALUES (393, 177, 11, 21, '22', '');
INSERT INTO `nm_prospec` VALUES (398, 178, 0, 15, 'kljkl', '');
INSERT INTO `nm_prospec` VALUES (399, 178, 10, 17, 'uio', '');
INSERT INTO `nm_prospec` VALUES (400, 178, 10, 26, 'uoi', '');
INSERT INTO `nm_prospec` VALUES (449, 181, 10, 40, 'test', '');
INSERT INTO `nm_prospec` VALUES (450, 181, 10, 41, 'test', '');
INSERT INTO `nm_prospec` VALUES (451, 181, 10, 16, 'asdfdsf', '');
INSERT INTO `nm_prospec` VALUES (452, 181, 10, 40, 'sdfdasf', '');
INSERT INTO `nm_prospec` VALUES (453, 181, 10, 40, 'lenien', '');
INSERT INTO `nm_prospec` VALUES (454, 181, 10, 18, 'red', '');
INSERT INTO `nm_prospec` VALUES (455, 181, 10, 26, '1280X640', '');
INSERT INTO `nm_prospec` VALUES (456, 181, 10, 31, 'cool', '');
INSERT INTO `nm_prospec` VALUES (457, 181, 10, 34, 'yes', '');
INSERT INTO `nm_prospec` VALUES (458, 181, 10, 37, 'no', '');
INSERT INTO `nm_prospec` VALUES (466, 187, 13, 42, 'j', '');
INSERT INTO `nm_prospec` VALUES (467, 190, 20, 56, 'rtrey', '');
INSERT INTO `nm_prospec` VALUES (498, 8932, 14, 33, ' Bruschetta used buys buyouts udb udyb', '');
INSERT INTO `nm_prospec` VALUES (499, 8932, 14, 33, 'Idenusfb usf. Jhsc', '');
INSERT INTO `nm_prospec` VALUES (500, 8932, 14, 33, 'Hfutcytctutytycufutcyt', '');
INSERT INTO `nm_prospec` VALUES (513, 8934, 14, 33, 'Hchcb', '');
INSERT INTO `nm_prospec` VALUES (514, 8934, 14, 33, 'Dhhshsh', '');
INSERT INTO `nm_prospec` VALUES (515, 8933, 14, 33, 'retwret', '');
INSERT INTO `nm_prospec` VALUES (516, 93, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (517, 176, 11, 20, 'yjgj', '');
INSERT INTO `nm_prospec` VALUES (518, 175, 10, 15, 'good', '');
INSERT INTO `nm_prospec` VALUES (555, 166, 14, 33, 'tyutyu', '');
INSERT INTO `nm_prospec` VALUES (556, 166, 14, 33, 'fg', '');
INSERT INTO `nm_prospec` VALUES (557, 202, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (558, 202, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (559, 203, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (560, 203, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (561, 204, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (562, 204, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (563, 205, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (564, 205, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (565, 206, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (566, 206, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (567, 207, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (568, 207, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (573, 198, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (574, 198, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (575, 199, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (576, 199, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (578, 140, 11, 19, 'test1', '');
INSERT INTO `nm_prospec` VALUES (579, 140, 11, 19, 'test2', '');
INSERT INTO `nm_prospec` VALUES (581, 163, 10, 16, '4353', '');
INSERT INTO `nm_prospec` VALUES (582, 207, 10, 15, 'sdfsfdsdf', NULL);

-- ----------------------------
-- Table structure for nm_referaluser
-- ----------------------------
DROP TABLE IF EXISTS `nm_referaluser`;
CREATE TABLE `nm_referaluser`  (
  `ruse_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ruse_date` datetime(0) NOT NULL,
  `ruse_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruse_emailid` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruse_userid` int(10) UNSIGNED NOT NULL,
  `ruse_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`ruse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_review
-- ----------------------------
DROP TABLE IF EXISTS `nm_review`;
CREATE TABLE `nm_review`  (
  `comment_id` int(50) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deal_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `store_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comments` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ratings` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(50) NOT NULL,
  `review_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `sam1` int(50) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_review
-- ----------------------------
INSERT INTO `nm_review` VALUES (2, NULL, '5', NULL, '186', 'Good', 'Good deals', '3', 0, '2018-04-04 12:59:07', 0);
INSERT INTO `nm_review` VALUES (3, NULL, NULL, '57', '186', 'Good Masz', 'Good Maz Storessdasdasd', '', 0, '2018-03-20 17:39:22', 0);
INSERT INTO `nm_review` VALUES (4, '6', NULL, NULL, '186', 'test', 'test tes tste aset tae', '4', 1, '2018-02-07 16:04:32', 0);
INSERT INTO `nm_review` VALUES (5, '6', NULL, NULL, '186', 'test1', 'test1', '1', 0, '2017-10-16 20:35:17', 0);
INSERT INTO `nm_review` VALUES (6, NULL, NULL, '62', '186', 'gfdgfg', 'fgfgdfg', '3', 0, '2018-02-06 15:48:28', 0);
INSERT INTO `nm_review` VALUES (7, NULL, NULL, '63', '198', 'ragul gandhi', 'adsdsf', '4', 0, '2017-11-10 17:08:36', 0);
INSERT INTO `nm_review` VALUES (10, '18', NULL, NULL, '197', '11/20/2017 3:40', '11/20/2017 3:40', '1', 0, '2017-11-20 18:11:39', 0);
INSERT INTO `nm_review` VALUES (11, '18', NULL, NULL, '197', '11/20/2017 3:41', '11/20/2017 3:41', '3', 0, '2018-01-18 15:54:43', 0);
INSERT INTO `nm_review` VALUES (12, '54', NULL, NULL, '197', '11/20/2017 3:42', '11/20/2017 3:4111/20/2017 3:41', '2', 0, '2018-01-08 17:21:21', 0);
INSERT INTO `nm_review` VALUES (15, NULL, NULL, '81', '220', 'GDfdgdfg ', 'SUperb :)', '0', 0, '2018-01-08 18:38:56', 0);
INSERT INTO `nm_review` VALUES (17, '118', NULL, NULL, '250', 'dsfdsf', 'sfdsf', '5', 0, '2018-01-18 15:54:38', 0);
INSERT INTO `nm_review` VALUES (18, '181', NULL, NULL, '250', 'Review about the product', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy\r\n\r\nt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '5', 0, '2018-01-18 15:54:40', 0);
INSERT INTO `nm_review` VALUES (19, '181', NULL, NULL, '250', 'Review about the product', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '5', 0, '2018-01-18 15:56:47', 0);
INSERT INTO `nm_review` VALUES (20, '181', NULL, NULL, '250', 'test review', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '5', 0, '2018-01-18 15:56:49', 0);
INSERT INTO `nm_review` VALUES (21, '181', NULL, NULL, '250', 'test review1', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '3', 0, '2018-01-18 15:56:51', 0);
INSERT INTO `nm_review` VALUES (22, '181', NULL, NULL, '250', 'test review2', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '2', 0, '2018-01-18 15:56:54', 0);
INSERT INTO `nm_review` VALUES (23, '181', NULL, NULL, '250', 'test review5', 'dgfdhfgj', '1', 0, '2018-02-10 21:23:09', 0);
INSERT INTO `nm_review` VALUES (24, '35', NULL, NULL, '207', 'Goods', 'Good Productss test', '3', 0, '2018-04-03 22:12:03', 0);
INSERT INTO `nm_review` VALUES (25, NULL, '4', NULL, '207', 'New deal', 'nice.<div>asdd<div>', '3', 0, '2018-04-04 12:59:07', 0);
INSERT INTO `nm_review` VALUES (26, NULL, NULL, '57', '207', 'Good Masz', 'Good Maz Storess', '3', 0, '2018-01-22 18:36:11', 0);
INSERT INTO `nm_review` VALUES (28, '171', NULL, NULL, '229', 'test', 'test', '4', 0, '2018-04-03 22:12:03', 0);
INSERT INTO `nm_review` VALUES (29, '174', NULL, NULL, '253', 'reviwe', '<dsf>good<dsfd>', '3', 0, '2018-02-10 21:10:57', 0);
INSERT INTO `nm_review` VALUES (30, NULL, NULL, '105', '253', 'review', 'good', '5', 0, '2018-02-16 16:00:47', 0);
INSERT INTO `nm_review` VALUES (31, '34', NULL, NULL, '253', 'feedback', 'nice', '4', 0, '2018-02-06 19:16:46', 0);
INSERT INTO `nm_review` VALUES (32, NULL, '57', NULL, '229', 'test', 'tester', '4', 0, '2018-04-04 12:59:06', 0);
INSERT INTO `nm_review` VALUES (33, '58', NULL, NULL, '220', 'fdg', 'fdg', '5', 1, '2018-02-23 20:07:09', 0);
INSERT INTO `nm_review` VALUES (34, '180', NULL, NULL, '229', 'test', 'test', '3', 0, '2018-03-19 18:32:39', 0);
INSERT INTO `nm_review` VALUES (35, NULL, '51', NULL, '201', 'dfghfh', 'fdhfghfg', '3', 0, '2018-04-04 12:59:06', 0);
INSERT INTO `nm_review` VALUES (36, '164', NULL, NULL, '201', 'dgfdg', 'fdgfdgh', '4', 0, '2018-03-19 18:14:20', 0);
INSERT INTO `nm_review` VALUES (37, '164', NULL, NULL, '201', 'bvcbvc', 'nnghjghj', '5', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (38, NULL, NULL, '65', '201', 'fdggf', 'fghgfhfgh', '0', 0, '2018-03-19 18:39:16', 0);
INSERT INTO `nm_review` VALUES (39, NULL, NULL, '65', '201', 'sgsg', 'rtretr', '0', 0, '2018-03-19 18:39:54', 0);
INSERT INTO `nm_review` VALUES (40, NULL, '61', NULL, '201', 'erew', 'ertewt', '3', 0, '2018-04-04 12:59:06', 0);
INSERT INTO `nm_review` VALUES (41, '41', NULL, NULL, '201', 'fbvb', 'bfgdhgdhg', '4', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (44, NULL, NULL, '103', '201', 'ttd', 'dsrst', '0', 0, '2018-03-20 17:14:35', 0);
INSERT INTO `nm_review` VALUES (46, NULL, NULL, '103', '201', 'rtytry', 'trurtu', '2', 0, '2018-03-20 17:39:59', 0);
INSERT INTO `nm_review` VALUES (47, NULL, NULL, '103', '201', 'fdgg', 'dfsfsd', '2', 0, '2018-04-16 14:15:42', 0);
INSERT INTO `nm_review` VALUES (48, NULL, NULL, '103', '201', 'jkjljk', 'ljhljhljlk', '2', 0, '2018-04-16 14:15:49', 0);
INSERT INTO `nm_review` VALUES (49, '180', NULL, NULL, '201', 'gjhgmhm', 'gjghjghjhg', '4', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (50, '180', NULL, NULL, '201', 'ghjghytuy', 'hgjhj', '5', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (51, '180', NULL, NULL, '201', 'tjhgjh', 'hkjhkjhk', '2', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (52, '170', NULL, NULL, '201', 'dgdfg', 'sdgdsg', '4', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (53, '170', NULL, NULL, '201', 'dsgdgd', 'gdgdgdfg', '5', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (54, '170', NULL, NULL, '201', 'dgfdb', 'gdfgfdg', '2', 0, '2018-04-04 12:58:44', 0);
INSERT INTO `nm_review` VALUES (58, NULL, '68', NULL, '272', 'good', 'good one!!!!', '1', 0, '2018-04-04 12:59:06', 0);
INSERT INTO `nm_review` VALUES (59, NULL, '68', NULL, '272', 'best', 'best one!!', '3', 0, '2018-04-04 12:59:06', 0);
INSERT INTO `nm_review` VALUES (60, NULL, '68', NULL, '272', 'not bad', 'not bad', '5', 0, '2018-04-04 12:59:06', 0);
INSERT INTO `nm_review` VALUES (62, '174', NULL, NULL, '201', 'gdbgfd', 'gfdgfdghfg', '2', 1, '2018-04-09 18:47:51', 0);
INSERT INTO `nm_review` VALUES (63, NULL, NULL, '120', '235', 'hjhj', 'hjhjh', '2', 0, '2018-04-11 15:20:20', 0);
INSERT INTO `nm_review` VALUES (64, NULL, NULL, '120', '273', 'yuy', 'sdsds', '3', 0, '2018-04-16 14:15:40', 0);
INSERT INTO `nm_review` VALUES (65, NULL, NULL, '117', '273', 'tesr', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel massa eget ante tincidunt vestibulum. Aenean vel metus magna. Mauris nec. Nunc congue ac libero ut lacinia. In ultrices elementum ipsum, in tempus enim accumsan..', '3', 0, '2018-04-13 18:40:44', 0);
INSERT INTO `nm_review` VALUES (66, '112', NULL, NULL, '', 'dfdgf', 'dgfdhfgh', '2', 1, '2018-04-13 19:26:37', 0);
INSERT INTO `nm_review` VALUES (67, '196', NULL, NULL, '', 'kk', 'kk', '4', 1, '2018-04-13 19:34:44', 0);
INSERT INTO `nm_review` VALUES (68, NULL, '72', NULL, '273', 'hg', 'ghghg', '3', 1, '2018-04-13 19:41:49', 0);
INSERT INTO `nm_review` VALUES (69, '138', NULL, NULL, '', 'rhrty', 'rtuytjyuiyuoiuoiuo', '2', 1, '2018-04-13 20:15:23', 0);
INSERT INTO `nm_review` VALUES (70, '138', NULL, NULL, '201', 'jkljl', 'jklk;kl\'', '3', 1, '2018-04-13 20:15:46', 0);
INSERT INTO `nm_review` VALUES (71, NULL, NULL, '105', '201', 'rg test', 'asddas sdfdas asdfasd asdf dasfds dasfds ', '5', 0, '2018-04-13 20:55:45', 0);
INSERT INTO `nm_review` VALUES (72, NULL, NULL, '105', '201', 'rg 3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '3', 0, '2018-04-13 20:59:52', 0);
INSERT INTO `nm_review` VALUES (73, '180', NULL, NULL, '201', 'rg test', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '3', 0, '2018-04-13 21:14:31', 0);
INSERT INTO `nm_review` VALUES (74, NULL, '63', NULL, '201', 'rg level3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '3', 1, '2018-04-13 21:34:42', 0);
INSERT INTO `nm_review` VALUES (75, NULL, '63', NULL, '201', 'rg sdfds ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '4', 1, '2018-04-13 21:35:05', 0);
INSERT INTO `nm_review` VALUES (76, '174', NULL, NULL, '', 'ry', 'rty', '5', 1, '2018-04-16 12:15:14', 0);
INSERT INTO `nm_review` VALUES (77, NULL, NULL, '120', '220', 'fd', 'dfg', '2', 0, '2018-04-16 14:15:46', 0);
INSERT INTO `nm_review` VALUES (78, NULL, NULL, '117', '201', 'yuytu', 'yjughjkhk', '4', 1, '2018-04-16 14:14:37', 0);
INSERT INTO `nm_review` VALUES (79, NULL, NULL, '120', '201', 'dsfds', 'gfdghfh', '1', 0, '2018-04-16 14:16:27', 0);
INSERT INTO `nm_review` VALUES (80, '189', NULL, NULL, '201', 'vnnnsddsg', 'vcncnnfdgfdg', '3', 1, '2018-04-16 15:49:14', 0);
INSERT INTO `nm_review` VALUES (81, '189', NULL, NULL, '201', 'vnnnsddsg', 'vcncnnfdgfdg', '3', 1, '2018-04-16 15:49:15', 0);
INSERT INTO `nm_review` VALUES (82, NULL, '67', NULL, '201', 'jhgj', 'hkhjkjhl', '3', 1, '2018-04-16 16:08:11', 0);
INSERT INTO `nm_review` VALUES (83, NULL, '67', NULL, '201', 'review', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '4', 0, '2018-04-16 16:10:51', 0);

-- ----------------------------
-- Table structure for nm_save_cart
-- ----------------------------
DROP TABLE IF EXISTS `nm_save_cart`;
CREATE TABLE `nm_save_cart`  (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_product_id` int(11) NOT NULL,
  `cart_deal_id` int(11) NOT NULL,
  `cart_product_qty` int(11) NOT NULL,
  `cart_type` int(1) NOT NULL COMMENT '1-Products,2-Deals',
  `cart_pro_siz_id` int(11) NOT NULL,
  `cart_pro_col_id` int(11) NOT NULL,
  `cart_user_id` int(11) NOT NULL,
  `addedDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_save_cart
-- ----------------------------
INSERT INTO `nm_save_cart` VALUES (1, 0, 5, 1, 2, 0, 0, 188, '2017-11-23 13:55:59');
INSERT INTO `nm_save_cart` VALUES (14, 40, 0, 1, 1, 14, 0, 202, '2017-12-22 12:54:49');
INSERT INTO `nm_save_cart` VALUES (31, 35, 0, 1, 1, 0, 23, 213, '2018-01-05 21:58:32');
INSERT INTO `nm_save_cart` VALUES (49, 173, 0, 2, 1, 0, 0, 202, '2018-01-09 16:16:28');
INSERT INTO `nm_save_cart` VALUES (87, 174, 0, 1, 1, 4, 0, 206, '2018-01-12 15:19:17');
INSERT INTO `nm_save_cart` VALUES (167, 35, 0, 1, 1, 0, 0, 207, '2018-01-22 20:17:06');
INSERT INTO `nm_save_cart` VALUES (169, 0, 35, 2, 2, 0, 0, 211, '2018-01-22 20:40:22');
INSERT INTO `nm_save_cart` VALUES (175, 0, 54, 3, 2, 0, 0, 212, '2018-02-05 18:11:03');
INSERT INTO `nm_save_cart` VALUES (176, 171, 0, 1, 1, 14, 0, 273, '2018-04-21 15:50:53');
INSERT INTO `nm_save_cart` VALUES (177, 171, 0, 1, 1, 14, 0, 220, '2018-04-21 15:54:05');
INSERT INTO `nm_save_cart` VALUES (184, 163, 0, 2, 1, 4, 20, 250, '2018-04-27 15:48:38');
INSERT INTO `nm_save_cart` VALUES (185, 184, 0, 2, 1, 14, 0, 213, '2018-05-02 14:55:12');

-- ----------------------------
-- Table structure for nm_secmaincategory
-- ----------------------------
DROP TABLE IF EXISTS `nm_secmaincategory`;
CREATE TABLE `nm_secmaincategory`  (
  `smc_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `smc_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smc_name_fr` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smc_mc_id` smallint(5) UNSIGNED NOT NULL,
  `smc_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`smc_id`) USING BTREE,
  INDEX `smc_status`(`smc_status`) USING BTREE,
  INDEX `smc_mc_id`(`smc_mc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_secmaincategory
-- ----------------------------
INSERT INTO `nm_secmaincategory` VALUES (2, 'WOMEN three', 'Tissu', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (4, 'WOMEN1', ' Ropas etnicas', 3, 1);
INSERT INTO `nm_secmaincategory` VALUES (6, 'Baby Care', ' Cuidado del bebé', 4, 1);
INSERT INTO `nm_secmaincategory` VALUES (7, 'Western Wear', 'Western Wear', 3, 1);
INSERT INTO `nm_secmaincategory` VALUES (10, 'Footwear', 'Chaussure', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (11, 'Watches', 'Montres', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (12, 'Cloths', 'Paños', 4, 1);
INSERT INTO `nm_secmaincategory` VALUES (14, 'Furnitures', 'Muebles', 5, 1);
INSERT INTO `nm_secmaincategory` VALUES (15, 'Kitchenware', ' Batería de cocina', 5, 1);
INSERT INTO `nm_secmaincategory` VALUES (16, 'Computers & Gaming', 'Computadoras y juegos', 6, 1);
INSERT INTO `nm_secmaincategory` VALUES (17, 'Cricket Kit', ' Kit de Cricket', 7, 1);
INSERT INTO `nm_secmaincategory` VALUES (18, 'Cars', 'Carros', 8, 1);
INSERT INTO `nm_secmaincategory` VALUES (19, 'Bikes', 'Bicicletas', 8, 1);
INSERT INTO `nm_secmaincategory` VALUES (20, 'Story Books', 'Libros de historia', 9, 1);
INSERT INTO `nm_secmaincategory` VALUES (21, 'Text Books', ' Libros de texto', 9, 1);
INSERT INTO `nm_secmaincategory` VALUES (22, 'Biography', 'Biografía', 9, 1);
INSERT INTO `nm_secmaincategory` VALUES (23, 'Bikes', ' Bicicletas', 7, 1);
INSERT INTO `nm_secmaincategory` VALUES (24, 'Cameras', 'Cámaras', 6, 1);
INSERT INTO `nm_secmaincategory` VALUES (47, 'Watches', 'Relojes', 3, 1);
INSERT INTO `nm_secmaincategory` VALUES (48, 'Mobiles', 'Mobiles', 6, 1);
INSERT INTO `nm_secmaincategory` VALUES (49, 'fashion main', '', 15, 1);
INSERT INTO `nm_secmaincategory` VALUES (50, 'fashion main', '', 15, 1);
INSERT INTO `nm_secmaincategory` VALUES (51, 'Story Books', '', 15, 1);
INSERT INTO `nm_secmaincategory` VALUES (52, 'fashion main', '', 15, 1);
INSERT INTO `nm_secmaincategory` VALUES (53, 'dsfdsf', '', 12, 1);
INSERT INTO `nm_secmaincategory` VALUES (54, 'test main', '', 12, 1);
INSERT INTO `nm_secmaincategory` VALUES (55, 'test main', '', 17, 1);
INSERT INTO `nm_secmaincategory` VALUES (56, 'WOMEN1', '', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (57, 'WOMEN1', '', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (58, 'WOMEN1', '', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (59, 'WOMEN2', '', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (60, 'WOM', '', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (61, 'WOMEN1', '', 2, 1);
INSERT INTO `nm_secmaincategory` VALUES (62, 'Organic Tools', '', 18, 1);
INSERT INTO `nm_secmaincategory` VALUES (63, 'Harvesting Tools', '', 18, 1);
INSERT INTO `nm_secmaincategory` VALUES (64, 'Pen', '', 19, 1);
INSERT INTO `nm_secmaincategory` VALUES (65, 'main', '', 20, 1);

-- ----------------------------
-- Table structure for nm_secsubcategory
-- ----------------------------
DROP TABLE IF EXISTS `nm_secsubcategory`;
CREATE TABLE `nm_secsubcategory`  (
  `ssb_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ssb_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ssb_name_fr` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ssb_sb_id` smallint(5) UNSIGNED NOT NULL,
  `ssb_smc_id` smallint(5) UNSIGNED NOT NULL,
  `mc_id` smallint(5) UNSIGNED NOT NULL,
  `ssb_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`ssb_id`) USING BTREE,
  INDEX `ssb_status`(`ssb_status`) USING BTREE,
  INDEX `ssb_sb_id`(`ssb_sb_id`) USING BTREE,
  INDEX `ssb_smc_id`(`ssb_smc_id`) USING BTREE,
  INDEX `mc_id`(`mc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_secsubcategory
-- ----------------------------
INSERT INTO `nm_secsubcategory` VALUES (1, 'Checked Shirts', ' Chemises vérifiées', 4, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (2, 'Rounded Neck33', 'Ajustement régulier', 9, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (3, 'Indigo', 'Indigo', 6, 3, 4, 1);
INSERT INTO `nm_secsubcategory` VALUES (4, 'Printed Tops', 'Hauts imprimés', 10, 3, 7, 1);
INSERT INTO `nm_secsubcategory` VALUES (5, 'Analog', 'Analogique', 11, 1, 8, 1);
INSERT INTO `nm_secsubcategory` VALUES (6, 'Android Mobiles', 'Mobiles Android', 2, 1, 1, 1);
INSERT INTO `nm_secsubcategory` VALUES (8, 'Rounded Neck3', 'Coup arrondi', 3, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (9, 'V-Neck', 'V-Neck', 3, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (13, 'Sony CyberShot', 'Sony CyberShot', 12, 1, 9, 1);
INSERT INTO `nm_secsubcategory` VALUES (14, 'Boys Footwear', 'Chaussures pour garçons', 13, 4, 6, 1);
INSERT INTO `nm_secsubcategory` VALUES (15, 'Leggings', 'leggings', 10, 3, 7, 1);
INSERT INTO `nm_secsubcategory` VALUES (16, 'Girls Footwear', 'Chaussures pour filles', 13, 4, 6, 1);
INSERT INTO `nm_secsubcategory` VALUES (19, 'Baby League  Regular Tops', ' Baby League Regular Tops', 18, 4, 6, 1);
INSERT INTO `nm_secsubcategory` VALUES (22, 'Z Berries Shrug', 'Z Larry Shrug', 19, 3, 7, 1);
INSERT INTO `nm_secsubcategory` VALUES (28, 'Slim Fit', 'Slim Fit', 21, 3, 7, 1);
INSERT INTO `nm_secsubcategory` VALUES (29, 'Patiala', 'Patiala', 6, 3, 4, 1);
INSERT INTO `nm_secsubcategory` VALUES (33, 'Johnson ', 'Johnson', 22, 4, 6, 1);
INSERT INTO `nm_secsubcategory` VALUES (34, 'Lotion', 'Lotion', 22, 4, 6, 1);
INSERT INTO `nm_secsubcategory` VALUES (35, 'Diaper Bag', ' Sac à langer', 7, 4, 6, 1);
INSERT INTO `nm_secsubcategory` VALUES (61, 'vV neck', 'vV neck', 3, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (62, 'Test sec sub ', '', 79, 15, 49, 1);
INSERT INTO `nm_secsubcategory` VALUES (63, 'test Sub cat', '', 78, 12, 53, 1);
INSERT INTO `nm_secsubcategory` VALUES (64, 'Rounded Neck1', '', 3, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (65, 'Rounded Neck', '', 4, 2, 2, 1);
INSERT INTO `nm_secsubcategory` VALUES (66, 'Cotton', '', 5, 3, 4, 1);
INSERT INTO `nm_secsubcategory` VALUES (67, 'Import', '', 86, 19, 64, 1);

-- ----------------------------
-- Table structure for nm_shipping
-- ----------------------------
DROP TABLE IF EXISTS `nm_shipping`;
CREATE TABLE `nm_shipping`  (
  `ship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ship_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_address1` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_address2` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_ci_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_state` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_country` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_postalcode` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_order_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_trans_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ship_cus_id` bigint(20) NOT NULL,
  `date_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ship_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 603 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_shipping
-- ----------------------------
INSERT INTO `nm_shipping` VALUES (1, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 116, '2017-11-04 20:42:14');
INSERT INTO `nm_shipping` VALUES (2, 'Test', 'test ship addr1', 'test ship addr2', '1', 'tn', '1', '641001', '801212975', 'malarvizhi@pofitec.com', '6', '24630669TJ296101U', 186, '2017-11-06 20:37:53');
INSERT INTO `nm_shipping` VALUES (3, 'malar', 'Coimbatore, ram nagar', 'ram nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641001', '8012122975', 'malarvizhi@pofitec.com', '7', '2GB21781RJ791900C', 186, '2017-11-07 15:44:24');
INSERT INTO `nm_shipping` VALUES (4, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '8', '3AA23653AN9915137', 197, '2017-11-08 12:39:14');
INSERT INTO `nm_shipping` VALUES (5, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '1', '6K031407V76284519', 186, '2017-11-08 19:29:23');
INSERT INTO `nm_shipping` VALUES (6, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '2', '03U1120119549191K', 186, '2017-11-08 20:45:28');
INSERT INTO `nm_shipping` VALUES (7, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-08 20:46:40');
INSERT INTO `nm_shipping` VALUES (8, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '4', '', 186, '2017-11-08 20:46:57');
INSERT INTO `nm_shipping` VALUES (9, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '5', '9F082733SL7373426', 186, '2017-11-08 20:51:10');
INSERT INTO `nm_shipping` VALUES (10, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '2', '03U1120119549191K', 186, '2017-11-08 21:02:54');
INSERT INTO `nm_shipping` VALUES (11, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-09 20:06:36');
INSERT INTO `nm_shipping` VALUES (12, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '6', '24630669TJ296101U', 186, '2017-11-09 20:09:00');
INSERT INTO `nm_shipping` VALUES (13, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '9', '9E3312339S531020N', 186, '2017-11-09 20:11:17');
INSERT INTO `nm_shipping` VALUES (14, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-09 20:12:39');
INSERT INTO `nm_shipping` VALUES (15, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-09 20:45:16');
INSERT INTO `nm_shipping` VALUES (16, 'rwwrwr', 'No 88, Raja Street', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9994446464', 'ragulaero@gmail.com', '1', '6K031407V76284519', 198, '2017-11-09 21:00:25');
INSERT INTO `nm_shipping` VALUES (17, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-09 21:04:50');
INSERT INTO `nm_shipping` VALUES (18, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '1', '6K031407V76284519', 186, '2017-11-09 21:13:09');
INSERT INTO `nm_shipping` VALUES (19, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '1', '6K031407V76284519', 186, '2017-11-09 21:51:48');
INSERT INTO `nm_shipping` VALUES (20, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '2', '03U1120119549191K', 186, '2017-11-09 21:55:56');
INSERT INTO `nm_shipping` VALUES (21, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-09 21:57:18');
INSERT INTO `nm_shipping` VALUES (22, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '4', '', 186, '2017-11-09 21:57:33');
INSERT INTO `nm_shipping` VALUES (23, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '5', '9F082733SL7373426', 186, '2017-11-09 21:58:25');
INSERT INTO `nm_shipping` VALUES (24, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '6', '24630669TJ296101U', 186, '2017-11-09 21:58:45');
INSERT INTO `nm_shipping` VALUES (25, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '1', '6K031407V76284519', 186, '2017-11-09 21:59:23');
INSERT INTO `nm_shipping` VALUES (26, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '1', '6K031407V76284519', 186, '2017-11-09 22:03:17');
INSERT INTO `nm_shipping` VALUES (27, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '3', '79N20323NE5053056', 186, '2017-11-13 15:55:22');
INSERT INTO `nm_shipping` VALUES (28, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '6', '24630669TJ296101U', 186, '2017-11-13 15:58:14');
INSERT INTO `nm_shipping` VALUES (29, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '2', '03U1120119549191K', 186, '2017-11-13 17:51:23');
INSERT INTO `nm_shipping` VALUES (30, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '3', '79N20323NE5053056', 197, '2017-11-13 19:06:30');
INSERT INTO `nm_shipping` VALUES (31, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '1', '6K031407V76284519', 197, '2017-11-13 19:09:56');
INSERT INTO `nm_shipping` VALUES (32, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '2', '03U1120119549191K', 186, '2017-11-17 16:15:39');
INSERT INTO `nm_shipping` VALUES (33, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '4', '', 186, '2017-11-17 16:50:06');
INSERT INTO `nm_shipping` VALUES (34, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '5', '9F082733SL7373426', 186, '2017-11-17 16:53:51');
INSERT INTO `nm_shipping` VALUES (35, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '4', 'ORDER1003', 186, '2017-11-17 18:49:19');
INSERT INTO `nm_shipping` VALUES (36, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '5', '9F082733SL7373426', 186, '2017-11-17 18:55:07');
INSERT INTO `nm_shipping` VALUES (37, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '6', '24630669TJ296101U', 186, '2017-11-18 14:03:27');
INSERT INTO `nm_shipping` VALUES (38, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '7', '2GB21781RJ791900C', 186, '2017-11-18 14:04:55');
INSERT INTO `nm_shipping` VALUES (39, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '8', '3AA23653AN9915137', 186, '2017-11-18 15:21:03');
INSERT INTO `nm_shipping` VALUES (40, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '6', '24630669TJ296101U', 186, '2017-11-18 19:24:46');
INSERT INTO `nm_shipping` VALUES (41, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '7', '2GB21781RJ791900C', 186, '2017-11-20 12:19:19');
INSERT INTO `nm_shipping` VALUES (42, 'ragul', 'coimbatore', 'coimbatore', 'fdgdfg', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulaero@gmail.com', '9', '9E3312339S531020N', 198, '2017-11-20 12:45:33');
INSERT INTO `nm_shipping` VALUES (43, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '10', '3NY50624961538124', 186, '2017-11-20 16:29:51');
INSERT INTO `nm_shipping` VALUES (44, 'ragul', 'coimbatore', 'sample stree', 'fdgdfg', 'tamil nadu', 'India', '641202', '9944349002', 'admin@gmail.com', '11', '6PJ31672EM452841Y', 198, '2017-11-20 20:33:49');
INSERT INTO `nm_shipping` VALUES (45, 'Test', 'test ship addr1', 'test ship addr2', '1', 'kerala', '1', '641001', '801212975', 'malarvizhi@pofitec.com', '12', '79J03532RU5764411', 186, '2017-11-21 20:02:57');
INSERT INTO `nm_shipping` VALUES (46, 'malar', 'test ship addr1', 'test ship addr2', '', 'Tamil nadu', '', '641001', '8012122975', 'malarvizhi@pofitec.com', '13', '86R34639F9605723P', 186, '2017-11-28 20:55:00');
INSERT INTO `nm_shipping` VALUES (47, 'vinod babu1', 'test ship addr1', 'test ship addr2', '', 'TN', '', '654321', '9876543210', 'malarvizhi@pofitec.com', '18', '6D355425689074204', 186, '2017-12-04 19:54:52');
INSERT INTO `nm_shipping` VALUES (48, 'vinod babu1', 'test ship addr1', 'test ship addr2', '', 'TN', '', '654321', '9876543210', 'malarvizhi@pofitec.com', '19', '9AJ78882LR057144R', 186, '2017-12-07 12:27:12');
INSERT INTO `nm_shipping` VALUES (49, 'vinod babu1', 'test ship addr1', 'test ship addr2', '', 'TN', '', '654321', '9876543210', 'malarvizhi@pofitec.com', '20', '7DK46533YS425152S', 186, '2017-12-08 12:40:24');
INSERT INTO `nm_shipping` VALUES (50, 'Malarvizhi', 'covai', 'covai', '', 'TN', '', '573735', '9876543210', 'malarvizhi@pofitec.com', '8', '3AA23653AN9915137', 186, '2017-12-08 13:37:36');
INSERT INTO `nm_shipping` VALUES (51, 'Malarvizhi', 'covai', 'covai', '', 'TN', '', '573735', '9876543210', 'malarvizhi@pofitec.com', '9', '9E3312339S531020N', 186, '2017-12-08 13:37:56');
INSERT INTO `nm_shipping` VALUES (52, 'testuset', '\"test addr1\"', '\"test addr2\"', '', 'tamil nadu', '', '123456', '7200285584', 'malarvizhi@pofitec.com', '10', '3NY50624961538124', 186, '2017-12-08 15:27:24');
INSERT INTO `nm_shipping` VALUES (53, 'vinod babu1', 'test ship addr1', 'test ship addr2', '', 'TN', '', '654321', '9876543210', 'malarvizhi@pofitec.com', '11', '6PJ31672EM452841Y', 186, '2017-12-08 15:47:30');
INSERT INTO `nm_shipping` VALUES (54, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '30', '9R416707CH5978206', 186, '2017-12-09 18:08:18');
INSERT INTO `nm_shipping` VALUES (55, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'venugopal@pofitec.com', '32', '5HE291760N2586152', 186, '2017-12-11 20:30:52');
INSERT INTO `nm_shipping` VALUES (56, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'venugopal@pofitec.com', '12', '79J03532RU5764411', 186, '2017-12-11 20:33:56');
INSERT INTO `nm_shipping` VALUES (57, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'venugopal@pofitec.com', '13', '86R34639F9605723P', 186, '2017-12-11 20:34:38');
INSERT INTO `nm_shipping` VALUES (58, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'venugopal@pofitec.com', '14', '0ED924767C9668059', 186, '2017-12-11 21:53:07');
INSERT INTO `nm_shipping` VALUES (59, 'Priscilla Santos', 'Adipisicing blanditiis placeat hic aspernatur quos id ea ullamco corrupti soluta aut quibusdam quis sunt enim eos placeat dolore', 'Nostrud labore aut et sunt', 'Aliquid cupidatat unde dolorem magnam ipsum volupt', 'Corporis est nisi dignissimos sed ipsam delectus ducimus impedit et illum laboriosam voluptatibus su', 'Neque laboriosam non quos aliquip vel nobis minima', '89321', '+747-32-8626491', 'vikopilyde@gmail.com', '34', '1XP685263D264494M', 201, '2017-12-11 22:28:56');
INSERT INTO `nm_shipping` VALUES (60, 'Chaim Odonnell', 'Earum est ipsam laborum Fugiat a distinctio Veritatis aut irure commodi beatae quia nihil adipisicing cupidatat', 'Quis voluptates vero irure delectus autem voluptatem', 'Enim saepe eos sunt fugiat et esse excepturi labor', 'Et pariatur Fugiat commodo aliqua Quidem qui voluptas itaque qui ea porro excepturi mollit', 'Quibusdam harum molestias dolore enim necessitatib', '36296', '+171-57-6244275', 'saga@yahoo.com', '36', '7HY02061W0863332R', 201, '2017-12-11 22:45:07');
INSERT INTO `nm_shipping` VALUES (61, 'sugi', 'kjj', 'jkj', 'Coimbatore', '3434', 'India', '343444', '8012122975', 'ere@gmail.com', '37', '1GY19202KC5728326', 201, '2017-12-12 13:03:44');
INSERT INTO `nm_shipping` VALUES (62, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgff@pofitec.com', '38', '1SE07703430416241', 201, '2017-12-12 13:05:31');
INSERT INTO `nm_shipping` VALUES (63, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'ere@gmail.com', '39', '58X139085H000343K', 201, '2017-12-12 13:06:49');
INSERT INTO `nm_shipping` VALUES (64, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgff@pofitec.com', '40', '2NP83756FC070680U', 201, '2017-12-12 13:09:03');
INSERT INTO `nm_shipping` VALUES (65, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'ere@gmail.com', '41', '2F716716P51046008', 201, '2017-12-12 13:11:50');
INSERT INTO `nm_shipping` VALUES (66, 'sugi', 'gf', 'fg', 'Coimbatore', 'ere', 'India', '123456', '8012122975', 'fgff@pofitec.com', '42', '59N95424B9609954T', 201, '2017-12-12 13:14:54');
INSERT INTO `nm_shipping` VALUES (67, 'sugi', 'gh', 'fhg', 'Coimbatore', 'gh', 'India', '123456', '8012122975', 'fgff@pofitec.com', '43', '55H76513UH811742B', 201, '2017-12-12 13:18:07');
INSERT INTO `nm_shipping` VALUES (68, 'sugi', 'hjh', 'hjh', 'Coimbatore', 'hjh', 'India', '123456', '8012122975', 'ere@gmail.com', '44', '3PY20343PJ9472408', 201, '2017-12-12 13:38:37');
INSERT INTO `nm_shipping` VALUES (69, 'sugi', 'hjh', 'hjh', 'Coimbatore', 'hjh', 'India', '123456', '8012122975', 'ere@gmail.com', '45', '9EK709210D1805016', 201, '2017-12-12 13:46:00');
INSERT INTO `nm_shipping` VALUES (70, 'sugi', 'tyt', 'fgf', 'Coimbatore', 'tyty', 'India', '123456', '8012122975', 'ere@gmail.com', '46', '42H9097038641362H', 201, '2017-12-12 14:05:09');
INSERT INTO `nm_shipping` VALUES (71, 'sugi', 'cvc', 'vcvc', 'Coimbatore', 'cvcv', 'India', '123456', '8012122975', 'fgff@pofitec.com', '47', '7CA103224P8613840', 201, '2017-12-12 14:08:04');
INSERT INTO `nm_shipping` VALUES (72, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '48', '6VR595661D662451N', 201, '2017-12-12 14:10:40');
INSERT INTO `nm_shipping` VALUES (73, 'sugi', 'dfdf', 'dfdf', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '49', '8BM34143MC985384A', 201, '2017-12-12 14:12:35');
INSERT INTO `nm_shipping` VALUES (74, 'sugi', 'df', 'dfdf', 'Coimbatore', 'dfdf', 'India', '123456', '8012122975', 'ere@gmail.com', '50', '7XV261868K389481E', 201, '2017-12-12 14:14:52');
INSERT INTO `nm_shipping` VALUES (75, 'sugi', 'dfdf', 'dfdf', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '15', '81N61059RB2577724', 201, '2017-12-12 14:16:41');
INSERT INTO `nm_shipping` VALUES (76, 'sugi', 'dfdf', 'dfdf', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '16', '81N61059RB2577724', 201, '2017-12-12 14:26:25');
INSERT INTO `nm_shipping` VALUES (77, 'sugi', 'df', 'dfdf', 'Coimbatore', 'dfdf', 'India', '123456', '8012122975', 'ere@gmail.com', '17', '6D355425689074204', 201, '2017-12-12 14:30:43');
INSERT INTO `nm_shipping` VALUES (78, 'sugi', 'df', 'dfdf', 'Coimbatore', 'dfdf', 'India', '123456', '8012122975', 'ere@gmail.com', '18', '6D355425689074204', 201, '2017-12-12 14:31:39');
INSERT INTO `nm_shipping` VALUES (79, 'sugi', 'ere', 'ere', 'Coimbatore', 'ere', 'India', '123456', '8012122975', 'suganya@pofitec.com', '19', '9AJ78882LR057144R', 201, '2017-12-12 14:34:51');
INSERT INTO `nm_shipping` VALUES (80, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'ere@gmail.com', '20', '7DK46533YS425152S', 201, '2017-12-12 14:50:31');
INSERT INTO `nm_shipping` VALUES (81, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '21', '2AG83087FB768830P', 197, '2017-12-12 14:55:25');
INSERT INTO `nm_shipping` VALUES (82, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '22', '4BG443238H202273B', 197, '2017-12-12 14:56:54');
INSERT INTO `nm_shipping` VALUES (83, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgff@pofitec.com', '51', '3UC24031A3721333C', 201, '2017-12-12 14:59:04');
INSERT INTO `nm_shipping` VALUES (84, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgff@pofitec.com', '23', '9TW30205YN1156411', 201, '2017-12-12 14:59:59');
INSERT INTO `nm_shipping` VALUES (85, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '24', '9M436776LG357834G', 197, '2017-12-12 15:01:28');
INSERT INTO `nm_shipping` VALUES (86, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '52', '9V914517RB797302W', 201, '2017-12-12 15:04:25');
INSERT INTO `nm_shipping` VALUES (87, 'sugi', 'hjh', 'hjh', 'Coimbatore', 'hjh', 'India', '123456', '8012122975', 'ere@gmail.com', '53', 'ORDER1002', 201, '2017-12-12 15:06:21');
INSERT INTO `nm_shipping` VALUES (88, 'sugi', 'cvc', 'vcvc', 'Coimbatore', 'cvcv', 'India', '123456', '8012122975', 'fgff@pofitec.com', '25', '52447455402780309', 201, '2017-12-12 15:07:21');
INSERT INTO `nm_shipping` VALUES (89, 'sugi', 'dfdf', 'dfdf', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '26', '6N553464YH560073S', 201, '2017-12-12 15:10:31');
INSERT INTO `nm_shipping` VALUES (90, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '54', 'ORDER1003', 197, '2017-12-12 15:12:42');
INSERT INTO `nm_shipping` VALUES (91, 'sugi', 'df', 'dfdf', 'Coimbatore', 'dfdf', 'India', '123456', '8012122975', 'ere@gmail.com', '27', '5XY4028984949073X', 201, '2017-12-12 15:14:43');
INSERT INTO `nm_shipping` VALUES (92, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '28', '8BV58074KH8941055', 201, '2017-12-12 15:16:44');
INSERT INTO `nm_shipping` VALUES (93, 'sugi', 'cvc', 'vcvc', 'Coimbatore', 'cvcv', 'India', '123456', '8012122975', 'fgff@pofitec.com', '55', '8FR3459685178804M', 201, '2017-12-12 15:17:57');
INSERT INTO `nm_shipping` VALUES (94, 'sugi', 'df', 'dfdf', 'Coimbatore', 'dfdf', 'India', '123456', '8012122975', 'ere@gmail.com', '29', '3X791322L39393717', 201, '2017-12-12 15:19:25');
INSERT INTO `nm_shipping` VALUES (95, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '30', '9R416707CH5978206', 201, '2017-12-12 15:45:25');
INSERT INTO `nm_shipping` VALUES (96, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '56', '4FM70563FJ6525317', 201, '2017-12-12 15:56:33');
INSERT INTO `nm_shipping` VALUES (97, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'ere@gmail.com', '31', '0RY18511MJ490792B', 201, '2017-12-12 15:57:35');
INSERT INTO `nm_shipping` VALUES (98, 'sugi', 'fgf', 'fgf', 'Coimbatore', 'fgf', 'India', '123456', '8012122975', 'suganya@pofitec.com', '32', '5HE291760N2586152', 201, '2017-12-12 16:03:45');
INSERT INTO `nm_shipping` VALUES (99, 'sugi', 'cvc', 'vcvc', 'Coimbatore', 'cvcv', 'India', '123456', '8012122975', 'fgff@pofitec.com', '33', '0L636862BX7370612', 201, '2017-12-12 16:16:05');
INSERT INTO `nm_shipping` VALUES (100, 'sugi', 'ghg', 'ghg', 'Coimbatore', 'ghg', 'India', '123456', '8012122975', 'fgff@pofitec.com', '34', '1XP685263D264494M', 201, '2017-12-12 16:19:55');
INSERT INTO `nm_shipping` VALUES (101, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '57', '164717853P1072731', 197, '2017-12-12 16:45:13');
INSERT INTO `nm_shipping` VALUES (102, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '58', 'ORDER1007', 197, '2017-12-12 16:57:51');
INSERT INTO `nm_shipping` VALUES (103, 'sugi', 'gh', 'hgh', 'Coimbatore', 'ghg', 'India', '123456', '8012122975', 'fgff@pofitec.com', '35', '4EB761201X023850H', 201, '2017-12-12 16:59:33');
INSERT INTO `nm_shipping` VALUES (104, 'sugi', 'f', 'f', 'Coimbatore', 'f', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '36', '7HY02061W0863332R', 201, '2017-12-12 17:02:35');
INSERT INTO `nm_shipping` VALUES (105, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '37', '1GY19202KC5728326', 201, '2017-12-12 17:19:21');
INSERT INTO `nm_shipping` VALUES (106, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '59', 'ORDER1008', 197, '2017-12-12 17:19:35');
INSERT INTO `nm_shipping` VALUES (107, 'sugi', 'fg', 'hf', 'Coimbatore', 'fg', 'India', '123654', '8012122975', 'ere@gmail.com', '38', '1SE07703430416241', 201, '2017-12-12 17:55:42');
INSERT INTO `nm_shipping` VALUES (108, 'sugi', 'gh', 'hgh', 'Coimbatore', 'ghg', 'India', '123456', '8012122975', 'fgff@pofitec.com', '39', '58X139085H000343K', 201, '2017-12-12 18:04:58');
INSERT INTO `nm_shipping` VALUES (109, 'sugi', 'kjj', 'jkj', 'Coimbatore', '3434', 'India', '343444', '8012122975', 'fgf@gmail.com', '40', '2NP83756FC070680U', 201, '2017-12-12 18:14:24');
INSERT INTO `nm_shipping` VALUES (110, 'sugi', 'jhj', 'hjh', 'Coimbatore', 'hjh', 'India', '123456', '8012122975', 'fgff@pofitec.com', '41', '2F716716P51046008', 201, '2017-12-12 18:24:33');
INSERT INTO `nm_shipping` VALUES (111, 'sugi', 'kjj', 'jkj', 'Coimbatore', '3434', 'India', '343444', '8012122975', 'fgff@pofitec.com', '42', '59N95424B9609954T', 201, '2017-12-12 18:56:29');
INSERT INTO `nm_shipping` VALUES (112, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '60', 'ORDER1009', 197, '2017-12-12 19:08:34');
INSERT INTO `nm_shipping` VALUES (113, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '61', 'ORDER1010', 197, '2017-12-12 19:12:35');
INSERT INTO `nm_shipping` VALUES (114, 'sugi', 'ujkj', 'jkjk', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '8012122975', 'ere@gmail.com', '62', 'ORDER1011', 201, '2017-12-12 19:22:56');
INSERT INTO `nm_shipping` VALUES (115, 'sugi', 'ghg', 'gg', 'Coimbatore', 'ghg', 'India', '123456', '8012122975', 'ere@gmail.com', '43', '55H76513UH811742B', 201, '2017-12-12 19:24:19');
INSERT INTO `nm_shipping` VALUES (116, 'sugi', 'gf', 'fg', 'Coimbatore', 'fgf', 'India', '123654', '8012122975', 'ere@gmail.com', '44', '3PY20343PJ9472408', 201, '2017-12-12 19:35:04');
INSERT INTO `nm_shipping` VALUES (117, 'sugi', 'h', 'ghgh', 'Coimbatore', 'hghg', 'India', '123456', '8012122975', 'suganya@pofitec.com', '45', '9EK709210D1805016', 201, '2017-12-12 19:38:27');
INSERT INTO `nm_shipping` VALUES (118, 'sugi', 'gff', 'fg', 'Coimbatore', 'Tam', 'India', '123654', '8012122975', 'fgf@gmail.com', '63', 'ORDER1012', 201, '2017-12-12 19:40:11');
INSERT INTO `nm_shipping` VALUES (119, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'ere@gmail.com', '64', 'ORDER1013', 201, '2017-12-12 19:46:45');
INSERT INTO `nm_shipping` VALUES (120, 'sugi', 'dfd', 'dfd', 'Coimbatore', 'dfd', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '65', 'ORDER1014', 201, '2017-12-12 19:51:24');
INSERT INTO `nm_shipping` VALUES (121, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgff@pofitec.com', '66', 'ORDER1015', 201, '2017-12-12 19:59:21');
INSERT INTO `nm_shipping` VALUES (122, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '46', '42H9097038641362H', 197, '2017-12-12 20:01:50');
INSERT INTO `nm_shipping` VALUES (123, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '47', '7CA103224P8613840', 197, '2017-12-12 20:26:37');
INSERT INTO `nm_shipping` VALUES (124, 'sugi', 'dfdf', 'dfdf', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '67', 'ORDER1011', 201, '2017-12-12 20:30:16');
INSERT INTO `nm_shipping` VALUES (125, 'sugi', 'hjh', 'hjh', 'Coimbatore', 'hjh', 'India', '123456', '8012122975', 'ere@gmail.com', '68', 'ORDER1012', 201, '2017-12-12 20:45:33');
INSERT INTO `nm_shipping` VALUES (126, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '48', '6VR595661D662451N', 197, '2017-12-12 20:46:27');
INSERT INTO `nm_shipping` VALUES (127, 'sugi', 'kjj', 'jkj', 'Coimbatore', '3434', 'India', '343444', '8012122975', 'dfgfg@pofitec.com', '69', 'ORDER1011', 201, '2017-12-12 20:47:09');
INSERT INTO `nm_shipping` VALUES (128, 'sugi', 'gf', 'fg', 'Coimbatore', 'ere', 'India', '123456', '8012122975', 'fgff@pofitec.com', '70', '3BR68107MB001423L', 201, '2017-12-12 20:50:17');
INSERT INTO `nm_shipping` VALUES (129, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '71', '3BR68107MB001423L', 201, '2017-12-12 20:53:01');
INSERT INTO `nm_shipping` VALUES (130, 'sugi', 'df', 'dfdf', 'Coimbatore', 'dfdf', 'India', '123456', '8012122975', 'ere@gmail.com', '72', '5CY08665XH8540825', 201, '2017-12-12 20:54:35');
INSERT INTO `nm_shipping` VALUES (131, 'sugi', 'kjj', 'jkj', 'Coimbatore', '3434', 'India', '343444', '8012122975', 'suganya@pofitec.com', '73', '6CU05309P59494244', 201, '2017-12-12 21:01:19');
INSERT INTO `nm_shipping` VALUES (132, 'sugi', 'gf', 'fg', 'Coimbatore', 'fgf', 'India', '123654', '8012122975', 'ere@gmail.com', '74', '1LL41476VJ1615912', 201, '2017-12-12 21:04:29');
INSERT INTO `nm_shipping` VALUES (133, 'sugi', 'cvc', 'vcvc', 'Coimbatore', 'cvcv', 'India', '123456', '8012122975', 'fgff@pofitec.com', '75', '1LL41476VJ1615912', 201, '2017-12-12 21:09:24');
INSERT INTO `nm_shipping` VALUES (134, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '76', 'ORDER1015', 201, '2017-12-12 21:12:11');
INSERT INTO `nm_shipping` VALUES (135, 'sugi', 'fgf', 'ghgh', 'Coimbatore', 'hghg', 'India', '123456', '8012122975', 'suganya@pofitec.com', '77', 'ORDER1016', 201, '2017-12-12 21:13:18');
INSERT INTO `nm_shipping` VALUES (136, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgff@pofitec.com', '78', 'ORDER1017', 201, '2017-12-12 21:14:56');
INSERT INTO `nm_shipping` VALUES (137, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'dfgfg@pofitec.com', '79', 'ORDER1018', 201, '2017-12-12 21:40:30');
INSERT INTO `nm_shipping` VALUES (138, 'sugi', 'ere', 'ere', 'Coimbatore', 'ere', 'India', '123456', '8012122975', 'ere@gmail.com', '80', 'ORDER1019', 201, '2017-12-12 21:41:31');
INSERT INTO `nm_shipping` VALUES (139, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'ere@gmail.com', '81', 'ORDER1015', 201, '2017-12-12 21:45:16');
INSERT INTO `nm_shipping` VALUES (140, 'sugi', 'nbn', 'nbnb', 'Coimbatore', 'bn', 'India', '123456', '8012122975', 'fgf@gmail.com', '82', 'ORDER1016', 201, '2017-12-12 21:47:41');
INSERT INTO `nm_shipping` VALUES (141, 'sugi', 'cvc', 'vcvc', 'Coimbatore', 'cvcv', 'India', '123456', '8012122975', 'fgff@pofitec.com', '83', 'ORDER1017', 201, '2017-12-12 21:49:01');
INSERT INTO `nm_shipping` VALUES (142, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '49', '8BM34143MC985384A', 197, '2017-12-12 22:04:25');
INSERT INTO `nm_shipping` VALUES (143, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '84', 'ORDER1018', 197, '2017-12-12 22:08:07');
INSERT INTO `nm_shipping` VALUES (144, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '85', 'ORDER1019', 197, '2017-12-12 22:09:41');
INSERT INTO `nm_shipping` VALUES (145, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '86', 'ORDER1020', 197, '2017-12-12 23:08:35');
INSERT INTO `nm_shipping` VALUES (146, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '87', 'ORDER1021', 197, '2017-12-12 23:12:02');
INSERT INTO `nm_shipping` VALUES (147, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '50', '7XV261868K389481E', 197, '2017-12-12 23:29:29');
INSERT INTO `nm_shipping` VALUES (148, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '51', '3UC24031A3721333C', 197, '2017-12-13 12:26:25');
INSERT INTO `nm_shipping` VALUES (149, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '52', '9V914517RB797302W', 197, '2017-12-13 12:31:22');
INSERT INTO `nm_shipping` VALUES (150, 'sugi', 'cbe', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya@pofitec.com', '1', '6K031407V76284519', 201, '2017-12-16 21:54:26');
INSERT INTO `nm_shipping` VALUES (151, 'sugi', 'cbekkk', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya@pofitec.com', '1', '6K031407V76284519', 201, '2017-12-16 21:56:41');
INSERT INTO `nm_shipping` VALUES (152, 'Malar Gopal', 'coimbatore', 'ram nagar', 'Coimbatore', 'Tamil NAdu', 'India', '12234578', '801212975', 'malarvizhi@pofitec.com', '2', '03U1120119549191K', 186, '2017-12-18 14:59:53');
INSERT INTO `nm_shipping` VALUES (153, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '2', 'ORDER1002', 201, '2017-12-18 15:16:18');
INSERT INTO `nm_shipping` VALUES (154, 'suganya', 'cbe', 'cbe,ghg', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '3', '79N20323NE5053056', 201, '2017-12-18 17:51:43');
INSERT INTO `nm_shipping` VALUES (155, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '3', '79N20323NE5053056', 197, '2017-12-19 12:45:10');
INSERT INTO `nm_shipping` VALUES (156, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '4', 'ORDER1004', 197, '2017-12-19 12:46:53');
INSERT INTO `nm_shipping` VALUES (157, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '5', '9F082733SL7373426', 201, '2017-12-19 16:03:46');
INSERT INTO `nm_shipping` VALUES (158, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '7', '2GB21781RJ791900C', 201, '2017-12-19 16:09:38');
INSERT INTO `nm_shipping` VALUES (159, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '8', '3AA23653AN9915137', 201, '2017-12-19 17:29:44');
INSERT INTO `nm_shipping` VALUES (160, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '10', '3NY50624961538124', 201, '2017-12-19 19:15:17');
INSERT INTO `nm_shipping` VALUES (161, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '4', '', 201, '2017-12-19 19:19:32');
INSERT INTO `nm_shipping` VALUES (162, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '12', '79J03532RU5764411', 201, '2017-12-19 19:33:17');
INSERT INTO `nm_shipping` VALUES (163, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '13', '86R34639F9605723P', 201, '2017-12-20 14:30:37');
INSERT INTO `nm_shipping` VALUES (164, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '14', '0ED924767C9668059', 201, '2017-12-20 14:34:31');
INSERT INTO `nm_shipping` VALUES (165, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '5', '9F082733SL7373426', 201, '2017-12-20 14:35:33');
INSERT INTO `nm_shipping` VALUES (166, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '6', '24630669TJ296101U', 201, '2017-12-20 14:38:39');
INSERT INTO `nm_shipping` VALUES (167, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '15', 'ORDER1001', 201, '2017-12-20 14:45:35');
INSERT INTO `nm_shipping` VALUES (168, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '7', '2GB21781RJ791900C', 201, '2017-12-20 15:00:59');
INSERT INTO `nm_shipping` VALUES (169, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '8', '3AA23653AN9915137', 201, '2017-12-20 15:58:39');
INSERT INTO `nm_shipping` VALUES (170, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '9', '9E3312339S531020N', 201, '2017-12-20 16:03:54');
INSERT INTO `nm_shipping` VALUES (171, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '16', 'ORDER1002', 201, '2017-12-20 16:04:54');
INSERT INTO `nm_shipping` VALUES (172, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '17', 'ORDER1003', 201, '2017-12-20 20:41:16');
INSERT INTO `nm_shipping` VALUES (173, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '18', 'ORDER1004', 201, '2017-12-20 21:10:25');
INSERT INTO `nm_shipping` VALUES (174, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '19', 'ORDER1005', 201, '2017-12-21 13:34:19');
INSERT INTO `nm_shipping` VALUES (175, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '10', '3NY50624961538124', 201, '2017-12-21 13:42:55');
INSERT INTO `nm_shipping` VALUES (176, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '20', 'ORDER1006', 201, '2017-12-21 13:43:36');
INSERT INTO `nm_shipping` VALUES (177, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '21', '2AG83087FB768830P', 201, '2017-12-21 13:44:09');
INSERT INTO `nm_shipping` VALUES (178, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '22', 'ORDER1008', 201, '2017-12-21 13:44:29');
INSERT INTO `nm_shipping` VALUES (179, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '11', '6PJ31672EM452841Y', 201, '2017-12-21 21:21:29');
INSERT INTO `nm_shipping` VALUES (180, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '12', '79J03532RU5764411', 201, '2017-12-21 21:29:28');
INSERT INTO `nm_shipping` VALUES (181, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '13', '86R34639F9605723P', 201, '2017-12-21 22:02:09');
INSERT INTO `nm_shipping` VALUES (182, 'john cena', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '9632587410', 'ajo@gmail.com', '23', 'ORDER1009', 202, '2017-12-22 12:52:50');
INSERT INTO `nm_shipping` VALUES (183, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '24', '9M436776LG357834G', 203, '2017-12-22 12:59:23');
INSERT INTO `nm_shipping` VALUES (184, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '14', '0ED924767C9668059', 203, '2017-12-22 13:03:43');
INSERT INTO `nm_shipping` VALUES (185, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '16', '', 201, '2017-12-22 13:07:55');
INSERT INTO `nm_shipping` VALUES (186, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '18', '', 201, '2017-12-22 13:24:52');
INSERT INTO `nm_shipping` VALUES (187, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '20', '', 201, '2017-12-22 13:28:45');
INSERT INTO `nm_shipping` VALUES (188, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '21', '2AG83087FB768830P', 203, '2017-12-22 13:31:56');
INSERT INTO `nm_shipping` VALUES (189, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '23', '', 201, '2017-12-22 13:47:41');
INSERT INTO `nm_shipping` VALUES (190, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '25', '52447455402780309', 201, '2017-12-22 14:13:06');
INSERT INTO `nm_shipping` VALUES (191, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '26', '6N553464YH560073S', 201, '2017-12-22 14:13:56');
INSERT INTO `nm_shipping` VALUES (192, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '27', '5XY4028984949073X', 201, '2017-12-22 15:46:49');
INSERT INTO `nm_shipping` VALUES (193, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '28', 'ORDER1014', 201, '2017-12-22 15:48:36');
INSERT INTO `nm_shipping` VALUES (194, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '29', 'ORDER1015', 201, '2017-12-22 15:49:22');
INSERT INTO `nm_shipping` VALUES (195, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '30', '9R416707CH5978206', 203, '2017-12-22 19:52:31');
INSERT INTO `nm_shipping` VALUES (196, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '31', '0RY18511MJ490792B', 203, '2017-12-22 19:57:56');
INSERT INTO `nm_shipping` VALUES (197, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '24', '9M436776LG357834G', 203, '2017-12-22 20:05:46');
INSERT INTO `nm_shipping` VALUES (198, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '25', '52447455402780309', 203, '2017-12-22 20:07:37');
INSERT INTO `nm_shipping` VALUES (199, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '26', '6N553464YH560073S', 203, '2017-12-22 20:11:24');
INSERT INTO `nm_shipping` VALUES (200, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '32', '5HE291760N2586152', 203, '2017-12-22 20:23:01');
INSERT INTO `nm_shipping` VALUES (201, 'amal', 'hj', 'nm n', 'Coimbatore', 'Tamil Nadu', 'India', '641010', '7531598624', 'amal@pofitec.com', '27', '5XY4028984949073X', 203, '2017-12-22 20:24:53');
INSERT INTO `nm_shipping` VALUES (202, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '33', '0L636862BX7370612', 201, '2017-12-22 20:47:16');
INSERT INTO `nm_shipping` VALUES (203, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '29', '', 201, '2017-12-22 20:47:59');
INSERT INTO `nm_shipping` VALUES (204, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '34', '1XP685263D264494M', 201, '2017-12-22 20:48:42');
INSERT INTO `nm_shipping` VALUES (205, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '35', '4EB761201X023850H', 201, '2017-12-25 13:59:19');
INSERT INTO `nm_shipping` VALUES (206, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '36', '7HY02061W0863332R', 201, '2017-12-25 14:01:26');
INSERT INTO `nm_shipping` VALUES (207, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '30', '9R416707CH5978206', 201, '2017-12-25 15:53:55');
INSERT INTO `nm_shipping` VALUES (208, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '31', '0RY18511MJ490792B', 201, '2017-12-25 15:59:24');
INSERT INTO `nm_shipping` VALUES (209, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '32', '5HE291760N2586152', 201, '2017-12-25 16:01:46');
INSERT INTO `nm_shipping` VALUES (210, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '33', '0L636862BX7370612', 201, '2017-12-25 16:02:58');
INSERT INTO `nm_shipping` VALUES (211, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '37', '1GY19202KC5728326', 201, '2017-12-25 17:25:23');
INSERT INTO `nm_shipping` VALUES (212, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '38', '1SE07703430416241', 201, '2017-12-25 17:30:12');
INSERT INTO `nm_shipping` VALUES (213, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '39', '58X139085H000343K', 201, '2017-12-25 17:31:58');
INSERT INTO `nm_shipping` VALUES (214, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '40', '2NP83756FC070680U', 201, '2017-12-25 17:38:04');
INSERT INTO `nm_shipping` VALUES (215, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '41', '2F716716P51046008', 201, '2017-12-25 17:46:06');
INSERT INTO `nm_shipping` VALUES (216, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '34', '1XP685263D264494M', 201, '2017-12-25 17:47:32');
INSERT INTO `nm_shipping` VALUES (217, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '35', '4EB761201X023850H', 201, '2017-12-25 17:48:49');
INSERT INTO `nm_shipping` VALUES (218, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '36', '7HY02061W0863332R', 201, '2017-12-25 18:07:35');
INSERT INTO `nm_shipping` VALUES (219, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '42', 'ORDER1010', 201, '2017-12-25 18:39:36');
INSERT INTO `nm_shipping` VALUES (220, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '43', 'ORDER1011', 201, '2017-12-25 18:41:00');
INSERT INTO `nm_shipping` VALUES (221, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '44', '3PY20343PJ9472408', 201, '2017-12-25 19:13:01');
INSERT INTO `nm_shipping` VALUES (222, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '37', '1GY19202KC5728326', 201, '2017-12-25 19:15:25');
INSERT INTO `nm_shipping` VALUES (223, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '38', '1SE07703430416241', 201, '2017-12-25 19:17:43');
INSERT INTO `nm_shipping` VALUES (224, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '39', '58X139085H000343K', 201, '2017-12-25 19:23:09');
INSERT INTO `nm_shipping` VALUES (225, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '45', '9EK709210D1805016', 201, '2017-12-25 19:28:52');
INSERT INTO `nm_shipping` VALUES (226, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '40', '2NP83756FC070680U', 201, '2017-12-25 19:48:50');
INSERT INTO `nm_shipping` VALUES (227, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '46', 'ORDER1014', 201, '2017-12-25 20:40:25');
INSERT INTO `nm_shipping` VALUES (228, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '47', 'ORDER1015', 201, '2017-12-26 12:46:52');
INSERT INTO `nm_shipping` VALUES (229, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '48', 'ORDER1016', 201, '2017-12-26 13:00:38');
INSERT INTO `nm_shipping` VALUES (230, 'suganya', 'cbe', 'cbe', 'city english', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '41', '2F716716P51046008', 201, '2017-12-26 13:01:45');
INSERT INTO `nm_shipping` VALUES (231, 'saranya', '', '', '1', '', '1', '', '', '', '', '', 207, '2017-12-26 15:57:26');
INSERT INTO `nm_shipping` VALUES (232, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '49', '8BM34143MC985384A', 207, '2017-12-27 16:03:08');
INSERT INTO `nm_shipping` VALUES (233, 'vinods', '', '', '', '', '', '', '', '', '', '', 208, '2017-12-27 18:54:10');
INSERT INTO `nm_shipping` VALUES (234, 'dgf', '', '', '1', '', '1', '', '', '', '', '', 209, '2017-12-28 19:05:17');
INSERT INTO `nm_shipping` VALUES (235, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '50', '7XV261868K389481E', 207, '2017-12-29 19:32:28');
INSERT INTO `nm_shipping` VALUES (236, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '51', '3UC24031A3721333C', 207, '2017-12-29 19:33:35');
INSERT INTO `nm_shipping` VALUES (237, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '53', 'ORDER1001', 207, '2017-12-29 19:36:38');
INSERT INTO `nm_shipping` VALUES (238, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '54', '', 207, '2017-12-29 19:58:34');
INSERT INTO `nm_shipping` VALUES (239, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '55', '8FR3459685178804M', 207, '2017-12-29 20:19:56');
INSERT INTO `nm_shipping` VALUES (240, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '56', '4FM70563FJ6525317', 207, '2017-12-29 20:40:52');
INSERT INTO `nm_shipping` VALUES (241, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '57', '164717853P1072731', 207, '2017-12-29 20:42:11');
INSERT INTO `nm_shipping` VALUES (242, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '58', '', 207, '2017-12-29 20:58:33');
INSERT INTO `nm_shipping` VALUES (243, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '59', '', 207, '2017-12-29 21:20:59');
INSERT INTO `nm_shipping` VALUES (244, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '60', '', 207, '2017-12-29 21:33:53');
INSERT INTO `nm_shipping` VALUES (245, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '42', '', 201, '2017-12-29 21:37:59');
INSERT INTO `nm_shipping` VALUES (246, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '61', '', 207, '2017-12-29 21:50:56');
INSERT INTO `nm_shipping` VALUES (247, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '43', '', 201, '2017-12-29 21:57:57');
INSERT INTO `nm_shipping` VALUES (248, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '62', 'ORDER1001', 207, '2018-01-02 15:50:30');
INSERT INTO `nm_shipping` VALUES (249, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '63', 'ORDER1002', 207, '2018-01-02 16:11:04');
INSERT INTO `nm_shipping` VALUES (250, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '65', 'ORDER1003', 197, '2018-01-03 19:31:38');
INSERT INTO `nm_shipping` VALUES (251, 'venugopal', 'jhkjhkk', 'jhkj', 'Coimbatore', 'jkk', 'India', '645678877', '3456765434', 'venugopal@pofitec.com', '66', 'ORDER1004', 197, '2018-01-03 21:32:22');
INSERT INTO `nm_shipping` VALUES (252, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '67', 'ORDER1005', 207, '2018-01-04 15:03:15');
INSERT INTO `nm_shipping` VALUES (253, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '68', 'ORDER1006', 207, '2018-01-04 17:50:39');
INSERT INTO `nm_shipping` VALUES (254, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '69', 'ORDER1007', 207, '2018-01-04 18:46:11');
INSERT INTO `nm_shipping` VALUES (255, 'suganya', 'sfsdf', 'df', 'Coimbatore', 'tamilnadu', 'India', '614523', '9856322356', 'suganya.t@pofitec.com', '70', '3BR68107MB001423L', 207, '2018-01-04 18:51:25');
INSERT INTO `nm_shipping` VALUES (256, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '72', '5CY08665XH8540825', 206, '2018-01-05 14:46:31');
INSERT INTO `nm_shipping` VALUES (257, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '73', '6CU05309P59494244', 212, '2018-01-05 17:17:06');
INSERT INTO `nm_shipping` VALUES (258, 'bala', 'Coimbatore, ram nagar', 'ram nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641001', '9874569856', 'bala@gmail.com', '74', '1LL41476VJ1615912', 212, '2018-01-05 17:22:31');
INSERT INTO `nm_shipping` VALUES (259, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '75', '1LL41476VJ1615912', 212, '2018-01-05 17:25:31');
INSERT INTO `nm_shipping` VALUES (260, 'vishnu.v.r', 'coimbatore', 'coimbatore', 'Coimbatore', 'tamilnadu', 'India', '641104', '8891619125', 'vishnu@pofitec.com', '76', 'ORDER1013', 213, '2018-01-05 21:58:04');
INSERT INTO `nm_shipping` VALUES (261, 'test name  sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*', 'test address1  sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@', 'test address2   sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#*)@*#)(@#@#@#@S DLJSDLKSJDJSKLD SLDK LDSJD LKASDLKA $@*#@Q)# SDLKJSDJAS##@', 'TEst city   sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@', 'test state  sfsdf dsf dsf dsf ds hf$@*$@)$*)(@*$)@$@FLCKSCLKSJDLKSDJLKASDLDSLDLSDLKSJDLSJD LS*$)@Q(#', 'test ccountry   sfsdf dsf dsf dsf ds hf$@*$@)$*)(@', '654321', '4244114321312', 'vinodbabu@pofitec.com', '77', 'ORDER1014', 214, '2018-01-08 14:19:29');
INSERT INTO `nm_shipping` VALUES (262, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '78', 'ORDER1015', 214, '2018-01-08 14:29:03');
INSERT INTO `nm_shipping` VALUES (263, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '79', 'ORDER1016', 214, '2018-01-08 14:55:08');
INSERT INTO `nm_shipping` VALUES (264, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '80', 'ORDER1017', 214, '2018-01-08 15:00:55');
INSERT INTO `nm_shipping` VALUES (265, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore1', 'Test state22', 'India1', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '44', '3PY20343PJ9472408', 214, '2018-01-08 15:35:55');
INSERT INTO `nm_shipping` VALUES (266, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state22', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '45', '9EK709210D1805016', 214, '2018-01-08 19:31:41');
INSERT INTO `nm_shipping` VALUES (267, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '81', '', 201, '2018-01-08 19:37:37');
INSERT INTO `nm_shipping` VALUES (268, 'suganya', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '654321', '7373857689', 'suganya.t@pofitec.com', '82', '', 201, '2018-01-08 19:38:22');
INSERT INTO `nm_shipping` VALUES (269, 'test', 'dfgd', 'dfdasf', 'sdfdsfds', 'sdfdsfds', 'sdfdsfds', '324324', '3245243242', 'vinodbabu@pofitec.com', '83', 'ORDER1001', 214, '2018-01-08 19:47:57');
INSERT INTO `nm_shipping` VALUES (270, 'suganya', 'test ship addr1', 'test ship addr2', '', 'TN', '', '654321', '7373857689', 'suganya.t@pofitec.com', '84', '', 207, '2018-01-08 20:03:40');
INSERT INTO `nm_shipping` VALUES (271, 'suganya', 'test ship addr1', 'test ship addr2', '', 'TN', '', '654321', '7373857689', 'suganya.t@pofitec.com', '85', '', 207, '2018-01-08 20:04:08');
INSERT INTO `nm_shipping` VALUES (272, 'gahdhi', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '641654', '9944349002', 'suganyya.t@pofitec.com', '86', '', 207, '2018-01-08 20:13:17');
INSERT INTO `nm_shipping` VALUES (273, 'testuset', '\"test addr1\"', '\"test addr2\"', '1', 'tamil nadu', '1', '123456', '7200285584', 'suganya.t@pofitec.com', '46', '', 207, '2018-01-08 20:18:12');
INSERT INTO `nm_shipping` VALUES (274, 'gahdhi', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '641654', '9944349002', 'suganyya.t@pofitec.com', '87', '', 201, '2018-01-08 20:29:35');
INSERT INTO `nm_shipping` VALUES (275, 'gahdhi', 'test ship addr1', 'test ship addr2', '1', 'TN', '1', '641654', '9944349002', 'suganyya.t@pofitec.com', '88', '', 201, '2018-01-08 20:29:36');
INSERT INTO `nm_shipping` VALUES (276, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '47', '', 214, '2018-01-08 20:54:08');
INSERT INTO `nm_shipping` VALUES (277, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '48', '', 214, '2018-01-08 20:54:08');
INSERT INTO `nm_shipping` VALUES (278, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '91', 'ORDER1001', 201, '2018-01-10 14:10:38');
INSERT INTO `nm_shipping` VALUES (279, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '92', 'ORDER1002', 201, '2018-01-10 14:18:43');
INSERT INTO `nm_shipping` VALUES (280, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '93', 'ORDER1003', 201, '2018-01-10 15:02:06');
INSERT INTO `nm_shipping` VALUES (281, 'venugopal', 'dsfsd', 'sdfsd', 'Coimbatore', 'fsdfsdf', 'India', '4345', '3456765434', 'venugopal@pofitec.com', '94', 'ORDER1004', 220, '2018-01-10 15:16:01');
INSERT INTO `nm_shipping` VALUES (282, 'venugopal', 'dsfsd', 'sdfsd', 'Coimbatore', 'fsdfsdf', 'India', '546456', '3456765434', 'venugopal@pofitec.com', '95', 'ORDER1005', 220, '2018-01-10 15:25:43');
INSERT INTO `nm_shipping` VALUES (283, 'venugopal', 'rwer', '34', 'Coimbatore', '3423', 'India', '4234', '3456765434', 'venugopal@pofitec.com', '96', 'ORDER1006', 220, '2018-01-10 15:38:29');
INSERT INTO `nm_shipping` VALUES (284, 'venugopal', 'l;\'l', 'l;\'', 'Coimbatore', '8978', 'India', '987978', '3456765434', 'venugopal@pofitec.com', '98', 'ORDER1007', 220, '2018-01-10 16:09:51');
INSERT INTO `nm_shipping` VALUES (285, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '99', 'ORDER1008', 201, '2018-01-10 18:33:19');
INSERT INTO `nm_shipping` VALUES (286, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '102', 'ORDER1009', 206, '2018-01-10 18:59:50');
INSERT INTO `nm_shipping` VALUES (287, 'suganya', '', '', '7', '', '8', '', '', '', '', '', 226, '2018-01-10 19:06:51');
INSERT INTO `nm_shipping` VALUES (288, 'suganya', '', '', '1', '', '1', '', '', '', '', '', 227, '2018-01-10 19:08:37');
INSERT INTO `nm_shipping` VALUES (289, 'vinod babu', '', '', '', '', '', '', '', '', '', '', 228, '2018-01-10 19:25:17');
INSERT INTO `nm_shipping` VALUES (290, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya@pofitec.com', '103', 'ORDER1010', 201, '2018-01-10 21:37:39');
INSERT INTO `nm_shipping` VALUES (291, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '104', 'ORDER1011', 212, '2018-01-10 21:45:46');
INSERT INTO `nm_shipping` VALUES (292, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '105', 'ORDER1012', 212, '2018-01-10 21:50:55');
INSERT INTO `nm_shipping` VALUES (293, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '106', 'ORDER1013', 212, '2018-01-10 21:54:09');
INSERT INTO `nm_shipping` VALUES (294, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '107', 'ORDER1014', 212, '2018-01-10 21:57:36');
INSERT INTO `nm_shipping` VALUES (295, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '108', 'ORDER1015', 212, '2018-01-11 12:44:35');
INSERT INTO `nm_shipping` VALUES (296, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '109', 'ORDER1016', 201, '2018-01-11 12:46:37');
INSERT INTO `nm_shipping` VALUES (297, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '110', 'ORDER1017', 212, '2018-01-11 12:56:19');
INSERT INTO `nm_shipping` VALUES (298, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'balamurugan@pofitec.com', '111', 'ORDER1018', 212, '2018-01-11 13:09:47');
INSERT INTO `nm_shipping` VALUES (299, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'balamurugan@pofitec.com', '112', 'ORDER1019', 212, '2018-01-11 13:12:21');
INSERT INTO `nm_shipping` VALUES (300, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'balamurugan@pofitec.com', '113', 'ORDER1020', 212, '2018-01-11 13:21:56');
INSERT INTO `nm_shipping` VALUES (301, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'balamurugan@pofitec.com', '114', 'ORDER1021', 212, '2018-01-11 13:48:38');
INSERT INTO `nm_shipping` VALUES (302, 'venugopal_shipping name', 'shipping adress 1', 'shipping adress2', 'shipping city', 'shipping state', 'shipping country', '111111', '0000000000', 'shippingID@pofitec.com', '115', 'ORDER1022', 220, '2018-01-11 14:35:59');
INSERT INTO `nm_shipping` VALUES (303, 'venugopal_shippin', 'shipping adress  Line1', 'shipping Address Line2', 'Coimbatore', 'shipping state', 'shipping  India', '333333', '2222222222', 'shippingvenugopal@pofitec.com', '117', 'ORDER1023', 220, '2018-01-11 14:41:09');
INSERT INTO `nm_shipping` VALUES (304, 'venugopal_s', 'gfh', 'gfh', 'Coimbatore', 'gf', 'India', '123456', '3456765434', 'venugopal@pofitec.com', '117', 'ORDER1024', 220, '2018-01-11 15:56:29');
INSERT INTO `nm_shipping` VALUES (305, 'venugopal', 'ghjh', 'ghj', 'Coimbatore', 'hgjghj', 'India', '7567', '3456765434', 'venugopal@pofitec.com', '49', '8BM34143MC985384A', 220, '2018-01-11 15:59:57');
INSERT INTO `nm_shipping` VALUES (306, 'qwerty', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'Coimbatore', 'ertrd', 'India', '123456', '7418529635', 'suganya.t@pofitec.com', '118', 'ORDER1025', 232, '2018-01-11 17:17:25');
INSERT INTO `nm_shipping` VALUES (307, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'werewtre', 'etrhgfh', 'tyrytjhg', '123456', '7418529635', 'suganya.t@pofitec.com', '120', 'ORDER1026', 232, '2018-01-11 17:22:30');
INSERT INTO `nm_shipping` VALUES (308, 'users', 'wadsedfggh', 'cbe', 'Coimbatore', 'ertrd', 'India', '123456', '7418529635', 'suganya.t@pofitec.com', '121', 'ORDER1027', 232, '2018-01-11 17:43:49');
INSERT INTO `nm_shipping` VALUES (309, 'users', 'rtryuy57', 'cbe', 'Coimbatore', 'ertrd', 'India', '123456', '7418529635', 'suganya.t@pofitec.com', '122', 'ORDER1028', 232, '2018-01-11 17:54:12');
INSERT INTO `nm_shipping` VALUES (310, 'bala', 'gandhipuram', 'Bus stand', '1', 'tn', '1', '640122', '0123456789', 'bala@gmail.com', '123', 'ORDER1029', 212, '2018-01-11 20:59:12');
INSERT INTO `nm_shipping` VALUES (311, 'bala', 'gandhipuram', 'Bus stand', '1', 'tn', '1', '640122', '0123456789', 'balamurugan@pofitec.com', '50', '7XV261868K389481E', 212, '2018-01-11 21:05:38');
INSERT INTO `nm_shipping` VALUES (312, 'bala', 'gandhipuram', 'Bus stand', '12', 'tn', '1', '640122', '0123456789', 'balamurugan@pofitec.com', '124', 'ORDER1030', 212, '2018-01-11 21:11:41');
INSERT INTO `nm_shipping` VALUES (313, 'bala', 'gandhipuram', 'Bus stand', '22', 'tn', '7', '640122', '0123456789', 'balamurugan@pofitec.com', '125', 'ORDER1031', 212, '2018-01-11 21:15:56');
INSERT INTO `nm_shipping` VALUES (314, 'bala', 'gandhipuram', 'Bus stand', '18', 'tn', '8', '640122', '9874569856', 'balamurugan@pofitec.com', '126', 'ORDER1032', 212, '2018-01-11 21:32:13');
INSERT INTO `nm_shipping` VALUES (315, 'bala', 'gandhipuram', 'Bus stand', '12', 'tn', '7', '640122', '9874569856', 'balamurugan@pofitec.com', '51', '3UC24031A3721333C', 212, '2018-01-11 21:38:34');
INSERT INTO `nm_shipping` VALUES (316, 'bala', 'gandhipuram', 'Bus stand', '12', 'tn', '7', '640122', '0123456', 'balamurugan@pofitec.com', '52', '9V914517RB797302W', 212, '2018-01-11 21:53:15');
INSERT INTO `nm_shipping` VALUES (317, 'bala', 'gandhipuram', 'Bus stand', '1', 'tn', '1', '640122', '9874569856', 'balamurugan@pofitec.com', '127', 'ORDER1033', 212, '2018-01-11 22:03:51');
INSERT INTO `nm_shipping` VALUES (318, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', '14', 'ertrd', '1', '123456', '7418529635', 'suganya.t@pofitec.com', '128', 'ORDER1034', 232, '2018-01-12 12:09:41');
INSERT INTO `nm_shipping` VALUES (319, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', '14', 'Test state21', '1', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '129', 'ORDER1035', 214, '2018-01-12 13:01:40');
INSERT INTO `nm_shipping` VALUES (320, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', '14', 'Test state21', '1', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '130', 'ORDER1036', 214, '2018-01-12 13:21:28');
INSERT INTO `nm_shipping` VALUES (321, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'Indira', 'ertrd', 'India', '123456', '7418529635', 'suganya.t@pofitec.com', '132', 'ORDER1037', 232, '2018-01-12 14:14:01');
INSERT INTO `nm_shipping` VALUES (322, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', '', 'ertrd', 'United States of America', '123456', '7418529635', 'suganya.t@pofitec.com', '133', 'ORDER1038', 232, '2018-01-12 14:26:52');
INSERT INTO `nm_shipping` VALUES (323, 'dsfds', 'fggfh', 'fdgfg', '0', 'fdh', '0', '342353', '43254365656545', 'reg@dfd.cvc', '134', 'ORDER1039', 232, '2018-01-12 14:46:17');
INSERT INTO `nm_shipping` VALUES (324, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', '0', 'ertrd', '0', '123456', '7418529635', 'suganya.t@pofitec.com', '135', 'ORDER1040', 232, '2018-01-12 14:54:12');
INSERT INTO `nm_shipping` VALUES (325, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', '0', 'ertrd', '0', '123456', '7418529635', 'suganya.t@pofitec.com', '136', 'ORDER1041', 232, '2018-01-12 14:55:25');
INSERT INTO `nm_shipping` VALUES (326, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', '0', 'ertrd', '0', '123456', '7418529635', 'suganya.t@pofitec.com', '137', 'ORDER1042', 232, '2018-01-12 14:57:20');
INSERT INTO `nm_shipping` VALUES (327, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'salem ', 'ertrd', 'United States of America', '123456', '7418529635', 'suganya.t@pofitec.com', '138', 'ORDER1043', 232, '2018-01-12 15:02:40');
INSERT INTO `nm_shipping` VALUES (328, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'salem ', 'ertrd', 'United States of America', '123456', '7418529635', 'suganya.t@pofitec.com', '139', 'ORDER1044', 232, '2018-01-12 15:03:15');
INSERT INTO `nm_shipping` VALUES (329, 'users', 'rgrd', 'cbe', '0', 'ertrd', '0', '123456', '7418529635', 'suganya.t@pofitec.com', '140', 'ORDER1045', 232, '2018-01-12 15:06:47');
INSERT INTO `nm_shipping` VALUES (330, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', '0', 'ertrd', '0', '123456', '7418529635', 'suganya.t@pofitec.com', '141', 'ORDER1046', 232, '2018-01-12 15:08:40');
INSERT INTO `nm_shipping` VALUES (331, 'sfdsf', 'fdgdhfd', 'gfdg', '', 'dfdsg', 'India', '654657', '354365464', 'dsfg@gf.cvv', '142', 'ORDER1047', 232, '2018-01-12 15:10:47');
INSERT INTO `nm_shipping` VALUES (332, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'Coimbatore', 'ertrd', 'India', '123456', '7418529635', 'suganya.t@pofitec.com', '144', 'ORDER1515760977144', 232, '2018-01-12 20:42:58');
INSERT INTO `nm_shipping` VALUES (333, 'vinod babu', 'fasdasdgfh', 'asdsafgdfg', 'Coimbatore', 'Test statwew', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '145', 'ORDER1515761002145', 214, '2018-01-12 20:43:22');
INSERT INTO `nm_shipping` VALUES (334, 'users', 'asdaddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAS', 'cbe', 'Coimbatore', 'ertrd', 'India', '123456', '7418529635', 'suganya.t@pofitec.com', '146', 'ORDER1515761158146', 232, '2018-01-12 20:45:58');
INSERT INTO `nm_shipping` VALUES (335, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '147', 'ORDER1515761998147', 201, '2018-01-12 20:59:58');
INSERT INTO `nm_shipping` VALUES (336, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '53', '', 201, '2018-01-12 21:16:54');
INSERT INTO `nm_shipping` VALUES (337, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '54', '', 201, '2018-01-12 21:16:54');
INSERT INTO `nm_shipping` VALUES (338, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '148', 'ORDER1515819755148', 201, '2018-01-13 13:02:35');
INSERT INTO `nm_shipping` VALUES (339, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '149', 'ORDER1515820016149', 201, '2018-01-13 13:06:56');
INSERT INTO `nm_shipping` VALUES (340, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '55', '8FR3459685178804M', 201, '2018-01-13 13:22:49');
INSERT INTO `nm_shipping` VALUES (341, 'suganya', 'cbe', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '56', '4FM70563FJ6525317', 201, '2018-01-13 13:34:55');
INSERT INTO `nm_shipping` VALUES (342, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulaero@gmail.com', '150', 'ORDER1515846047150', 249, '2018-01-13 20:20:47');
INSERT INTO `nm_shipping` VALUES (343, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '151', 'ORDER1515846205151', 249, '2018-01-13 20:23:25');
INSERT INTO `nm_shipping` VALUES (344, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulaero@gmail.com', '152', 'ORDER1515846895152', 249, '2018-01-13 20:34:55');
INSERT INTO `nm_shipping` VALUES (345, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '153', 'ORDER1515846987153', 249, '2018-01-13 20:36:28');
INSERT INTO `nm_shipping` VALUES (346, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '154', 'ORDER1515847427154', 249, '2018-01-13 20:43:47');
INSERT INTO `nm_shipping` VALUES (347, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '155', 'ORDER1515848274155', 249, '2018-01-13 20:57:54');
INSERT INTO `nm_shipping` VALUES (348, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulaero@gmail.com', '156', 'ORDER1515851015156', 249, '2018-01-13 21:43:36');
INSERT INTO `nm_shipping` VALUES (349, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '158', 'ORDER1516076276158', 201, '2018-01-16 12:17:56');
INSERT INTO `nm_shipping` VALUES (350, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '160', 'ORDER1516076610160', 201, '2018-01-16 12:23:30');
INSERT INTO `nm_shipping` VALUES (351, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '161', 'ORDER1516077358161', 250, '2018-01-16 12:35:59');
INSERT INTO `nm_shipping` VALUES (352, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '163', 'ORDER1516078039163', 201, '2018-01-16 12:47:19');
INSERT INTO `nm_shipping` VALUES (353, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '164', 'ORDER1516078628164', 250, '2018-01-16 12:57:08');
INSERT INTO `nm_shipping` VALUES (354, 'venugopal', 'dfgg', 'dfgdg', 'Coimbatore', 'dfgff', 'India', '545345', '3456765434', 'venugopal@pofitec.com', '57', '164717853P1072731', 220, '2018-01-16 13:21:44');
INSERT INTO `nm_shipping` VALUES (355, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '166', 'ORDER1516083178166', 201, '2018-01-16 14:12:59');
INSERT INTO `nm_shipping` VALUES (356, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '168', 'ORDER1516084251168', 214, '2018-01-16 14:30:52');
INSERT INTO `nm_shipping` VALUES (357, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '58', '', 214, '2018-01-16 14:42:02');
INSERT INTO `nm_shipping` VALUES (358, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '59', '', 214, '2018-01-16 14:42:02');
INSERT INTO `nm_shipping` VALUES (359, 'venugopal', 'ytrytry', 'tryrty', 'Coimbatore', 'Tytramil NAduy', 'India', '645645', '3456765434', 'venugopal@pofitec.com', '170', 'ORDER1516087066170', 220, '2018-01-16 15:17:46');
INSERT INTO `nm_shipping` VALUES (360, 'venugopal', 'ghgfh', 'gfhgf', 'Coimbatore', 'fghfg', 'India', '56456', '3456765434', 'venugopal@pofitec.com', '171', 'ORDER1516087172171', 220, '2018-01-16 15:19:32');
INSERT INTO `nm_shipping` VALUES (361, 'venugopal', 'ghjghj', 'bnmngh', 'Coimbatore', 'ghjghj', 'India', '765756', '3456765434', 'venugopal@pofitec.com', '172', 'ORDER1516087619172', 220, '2018-01-16 15:26:59');
INSERT INTO `nm_shipping` VALUES (362, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '60', '', 214, '2018-01-16 15:49:04');
INSERT INTO `nm_shipping` VALUES (363, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '61', '', 214, '2018-01-16 15:49:04');
INSERT INTO `nm_shipping` VALUES (364, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '62', '', 214, '2018-01-16 16:14:55');
INSERT INTO `nm_shipping` VALUES (365, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '63', '', 214, '2018-01-16 16:14:55');
INSERT INTO `nm_shipping` VALUES (366, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '64', '', 214, '2018-01-16 17:30:57');
INSERT INTO `nm_shipping` VALUES (367, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '65', '', 214, '2018-01-16 17:30:57');
INSERT INTO `nm_shipping` VALUES (368, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '66', '', 214, '2018-01-16 17:31:09');
INSERT INTO `nm_shipping` VALUES (369, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '67', '', 214, '2018-01-16 17:31:09');
INSERT INTO `nm_shipping` VALUES (370, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'bala@gmail.com', '173', 'ORDER1516095162173', 212, '2018-01-16 17:32:42');
INSERT INTO `nm_shipping` VALUES (371, 'vinod bab', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '68', '', 214, '2018-01-16 17:32:44');
INSERT INTO `nm_shipping` VALUES (372, 'vinod bab', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '69', '', 214, '2018-01-16 17:32:44');
INSERT INTO `nm_shipping` VALUES (373, 'venugopal', 'hjghj', 'fdgdfg', 'Coimbatore', 'dfgdfg', 'India', '123123', '3456765434', 'venugopal@pofitec.com', '174', 'ORDER1516095238174', 220, '2018-01-16 17:33:58');
INSERT INTO `nm_shipping` VALUES (374, 'vinod bab', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '70', '3BR68107MB001423L', 214, '2018-01-16 17:35:54');
INSERT INTO `nm_shipping` VALUES (375, 'vinod bab', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '71', '3BR68107MB001423L', 214, '2018-01-16 17:35:54');
INSERT INTO `nm_shipping` VALUES (376, 'venugopal', 'ghgfhgh', 'bnmnj', 'Coimbatore', 'tytyu', 'India', '67567', '3456765434', 'venugopal@pofitec.com', '175', 'ORDER1516095421175', 220, '2018-01-16 17:37:01');
INSERT INTO `nm_shipping` VALUES (377, 'bala', 'Ram nagar', 'ramnagar', 'Coimbatore', 'Tamil Nadu', 'India', '634217', '9874569856', 'balamurugan@pofitec.com', '176', 'ORDER1516096160176', 212, '2018-01-16 17:49:20');
INSERT INTO `nm_shipping` VALUES (378, 'venugopal', 'ghjghj', 'tytry', 'Coimbatore', 'hgjhgh', 'India', '123456', '3456765434', 'venugopal@pofitec.com', '177', 'ORDER1516096814177', 220, '2018-01-16 18:00:14');
INSERT INTO `nm_shipping` VALUES (379, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '178', 'ORDER1516097078178', 220, '2018-01-16 18:04:38');
INSERT INTO `nm_shipping` VALUES (380, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '179', 'ORDER1516097173179', 220, '2018-01-16 18:06:14');
INSERT INTO `nm_shipping` VALUES (381, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '72', '5CY08665XH8540825', 220, '2018-01-16 18:07:30');
INSERT INTO `nm_shipping` VALUES (382, 'ragul', '', 'coimbatore', 'Coimbatore', 'tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '181', 'ORDER1516104627181', 250, '2018-01-16 20:10:27');
INSERT INTO `nm_shipping` VALUES (383, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '183', 'ORDER1516104669183', 250, '2018-01-16 20:11:09');
INSERT INTO `nm_shipping` VALUES (384, 'suganya', 'asdfgj', 'qwerty', 'vadavalli', 'tn', 'United States of America', '123456', '8012122975', 'suganya.t@pofitec.com', '185', 'ORDER1516105593185', 201, '2018-01-16 20:26:33');
INSERT INTO `nm_shipping` VALUES (385, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '73', '6CU05309P59494244', 201, '2018-01-16 20:55:19');
INSERT INTO `nm_shipping` VALUES (386, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '186', 'ORDER1516114272186', 250, '2018-01-16 22:51:12');
INSERT INTO `nm_shipping` VALUES (387, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '187', 'ORDER1516167174187', 201, '2018-01-17 13:32:54');
INSERT INTO `nm_shipping` VALUES (388, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'tamilnady', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '190', 'ORDER1516169597190', 250, '2018-01-17 14:13:18');
INSERT INTO `nm_shipping` VALUES (389, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '74', '1LL41476VJ1615912', 214, '2018-01-17 15:25:53');
INSERT INTO `nm_shipping` VALUES (390, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu1@pofitec.com', '75', '1LL41476VJ1615912', 214, '2018-01-17 15:25:53');
INSERT INTO `nm_shipping` VALUES (391, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '76', '68L07932E58851627', 214, '2018-01-17 17:29:22');
INSERT INTO `nm_shipping` VALUES (392, 'vinod babu d gdf', 'fasdasdgfh fh', 'asdsafgdfgfghf', 'Lahore', 'Test state21', 'India', '123456', '42441143213125435435', 'vinodbabu@pofitec.com', '77', '68L07932E58851627', 214, '2018-01-17 17:29:22');
INSERT INTO `nm_shipping` VALUES (393, 'vinod babu', 'test address1', 'test address2', 'vadavalli', 'Test state21', 'India', '123456', '9790417157', 'vinodbabu@pofitec.com', '79', '56E0726737616602T', 214, '2018-01-17 17:41:14');
INSERT INTO `nm_shipping` VALUES (394, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '192', 'ORDER1516182147192', 201, '2018-01-17 17:42:27');
INSERT INTO `nm_shipping` VALUES (395, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '193', 'ORDER1516189815193', 201, '2018-01-17 19:50:15');
INSERT INTO `nm_shipping` VALUES (396, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '80', '3D239866UL551162H', 201, '2018-01-17 19:51:37');
INSERT INTO `nm_shipping` VALUES (397, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '81', '9YN55284MV039463P', 250, '2018-01-17 20:35:25');
INSERT INTO `nm_shipping` VALUES (398, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '194', 'ORDER1516192587194', 250, '2018-01-17 20:36:27');
INSERT INTO `nm_shipping` VALUES (399, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '642356', '9944349002', 'ragulgandhi@pofitec.com', '82', '7UA06428H85103338', 250, '2018-01-17 20:54:48');
INSERT INTO `nm_shipping` VALUES (400, 'ragul', 'coimabatore', 'coimabatore', 'Coimbatore', 'tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '196', 'ORDER1516269124196', 250, '2018-01-18 17:52:04');
INSERT INTO `nm_shipping` VALUES (401, 'suganya', '', '', '1', '', '1', '', '', '', '', '', 251, '2018-01-18 19:52:16');
INSERT INTO `nm_shipping` VALUES (402, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '197', 'ORDER1516277128197', 250, '2018-01-18 20:05:28');
INSERT INTO `nm_shipping` VALUES (403, 'ragul', 'coimbatore', 'coimbatore', 'Coimbatore', 'tamilnadu', 'India', '641102', '9944349002', 'ragulgandhi@pofitec.com', '83', '85A49672BE817862B', 250, '2018-01-18 20:07:57');
INSERT INTO `nm_shipping` VALUES (404, 'ragul', 'Coimbatore', 'Coimbatore', 'Coimbatore', 'Tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '203', 'ORDER1516360022203', 250, '2018-01-19 19:07:03');
INSERT INTO `nm_shipping` VALUES (405, 'suganya', '', '', '1', '', '1', '', '', '', '', '', 252, '2018-01-22 20:01:03');
INSERT INTO `nm_shipping` VALUES (406, 'sfdfsdf', '', '', '1', '', '1', '', '', '', '', '', 253, '2018-01-23 14:06:23');
INSERT INTO `nm_shipping` VALUES (407, 'ragul', 'Coimbatore', 'Coimbatore', 'Coimbatore', 'Tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '204', 'ORDER1516960614204', 250, '2018-01-26 17:56:54');
INSERT INTO `nm_shipping` VALUES (408, 'ragul', 'Coimbatore', 'Coimbatore', 'Coimbatore', 'Tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '205', 'ORDER1516961277205', 250, '2018-01-26 18:07:57');
INSERT INTO `nm_shipping` VALUES (409, 'ragul', 'Coimbatore', 'Coimbatore', 'Coimbatore', 'Tamilnadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '206', 'ORDER1516961987206', 250, '2018-01-26 18:19:47');
INSERT INTO `nm_shipping` VALUES (410, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '207', 'ORDER1517807871207', 229, '2018-02-05 13:17:51');
INSERT INTO `nm_shipping` VALUES (411, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '208', 'ORDER1517807965208', 229, '2018-02-05 13:19:25');
INSERT INTO `nm_shipping` VALUES (412, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '209', 'ORDER1517808866209', 229, '2018-02-05 13:34:26');
INSERT INTO `nm_shipping` VALUES (413, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '210', 'ORDER1517809115210', 229, '2018-02-05 13:38:35');
INSERT INTO `nm_shipping` VALUES (414, 'bala', 'Hopes', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '9874569856', 'balamurugan@pofitec.com', '211', 'ORDER1517825036211', 212, '2018-02-05 18:03:56');
INSERT INTO `nm_shipping` VALUES (415, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '9874569856', 'balamurugan@pofitec.com', '212', 'ORDER1517825491212', 212, '2018-02-05 18:11:31');
INSERT INTO `nm_shipping` VALUES (416, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '213', 'ORDER1517831514213', 229, '2018-02-05 19:51:54');
INSERT INTO `nm_shipping` VALUES (417, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '84', '3P6520629W955813U', 229, '2018-02-05 19:57:28');
INSERT INTO `nm_shipping` VALUES (418, 'bala', 'ram nagar', 'Peelamedu', 'Coimbatore', 'tamil nadu', 'India', '634601', '7418529635', 'balamurugan@pofitec.com', '214', 'ORDER1517835128214', 229, '2018-02-05 20:52:08');
INSERT INTO `nm_shipping` VALUES (419, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '85', '0BF64068RG828243R', 229, '2018-02-05 21:01:43');
INSERT INTO `nm_shipping` VALUES (420, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '215', 'ORDER1517894784215', 229, '2018-02-06 13:26:24');
INSERT INTO `nm_shipping` VALUES (421, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '86', '2DB3789912043444P', 229, '2018-02-06 13:28:12');
INSERT INTO `nm_shipping` VALUES (422, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '216', 'ORDER1517895517216', 229, '2018-02-06 13:38:37');
INSERT INTO `nm_shipping` VALUES (423, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '87', '00B391695E622323V', 229, '2018-02-06 13:39:58');
INSERT INTO `nm_shipping` VALUES (424, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '217', 'ORDER1517898034217', 201, '2018-02-06 14:20:34');
INSERT INTO `nm_shipping` VALUES (425, 'user', 'cbe', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '1234567895', 'user@gmail.com', '218', 'ORDER1517915909218', 253, '2018-02-06 19:18:29');
INSERT INTO `nm_shipping` VALUES (426, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '219', 'ORDER1517916234219', 229, '2018-02-06 19:23:54');
INSERT INTO `nm_shipping` VALUES (427, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '220', 'ORDER1517917355220', 229, '2018-02-06 19:42:35');
INSERT INTO `nm_shipping` VALUES (428, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '221', 'ORDER1517990078221', 229, '2018-02-07 15:54:38');
INSERT INTO `nm_shipping` VALUES (429, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '222', 'ORDER1517990184222', 229, '2018-02-07 15:56:24');
INSERT INTO `nm_shipping` VALUES (430, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '88', '2D4253430C282510E', 229, '2018-02-07 15:59:00');
INSERT INTO `nm_shipping` VALUES (431, 'bala', 'Hope', 'Peelamedu', 'Coimbatore', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '89', '52B74444A5176283B', 229, '2018-02-07 16:04:07');
INSERT INTO `nm_shipping` VALUES (432, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '223', 'ORDER1518415103223', 201, '2018-02-12 13:58:23');
INSERT INTO `nm_shipping` VALUES (433, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '224', 'ORDER1518415193224', 201, '2018-02-12 13:59:53');
INSERT INTO `nm_shipping` VALUES (434, 'balaa', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '225', 'ORDER1518583040225', 229, '2018-02-14 12:37:20');
INSERT INTO `nm_shipping` VALUES (435, 'balaa', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '226', 'ORDER1518586299226', 229, '2018-02-14 13:31:39');
INSERT INTO `nm_shipping` VALUES (436, 'balaa', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '227', 'ORDER1518586507227', 229, '2018-02-14 13:35:07');
INSERT INTO `nm_shipping` VALUES (437, 'balaa', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '90', '9WR947581X8183918', 229, '2018-02-14 13:36:40');
INSERT INTO `nm_shipping` VALUES (438, 'balaa', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '637020', '7418529635', 'balamurugan@pofitec.com', '228', 'ORDER1518595915228', 229, '2018-02-14 16:11:55');
INSERT INTO `nm_shipping` VALUES (439, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '229', 'ORDER1518687054229', 229, '2018-02-15 17:30:54');
INSERT INTO `nm_shipping` VALUES (440, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '230', 'ORDER1518873841230', 229, '2018-02-17 21:24:02');
INSERT INTO `nm_shipping` VALUES (441, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '232', 'ORDER1519387550232', 220, '2018-02-23 20:05:50');
INSERT INTO `nm_shipping` VALUES (442, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '233', 'ORDER1519387672233', 220, '2018-02-23 20:07:52');
INSERT INTO `nm_shipping` VALUES (443, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '91', '48X82225YX0460820', 220, '2018-02-23 20:20:50');
INSERT INTO `nm_shipping` VALUES (444, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '234', 'ORDER1519732831234', 220, '2018-02-27 20:00:32');
INSERT INTO `nm_shipping` VALUES (445, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '456345', '3456765434', 'venugopal@pofitec.com', '235', 'ORDER1519732929235', 220, '2018-02-27 20:02:09');
INSERT INTO `nm_shipping` VALUES (446, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '236', 'ORDER1519733205236', 220, '2018-02-27 20:06:45');
INSERT INTO `nm_shipping` VALUES (447, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '237', 'ORDER1519733350237', 220, '2018-02-27 20:09:10');
INSERT INTO `nm_shipping` VALUES (448, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '238', 'ORDER1519733461238', 220, '2018-02-27 20:11:01');
INSERT INTO `nm_shipping` VALUES (449, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '239', 'ORDER1519733550239', 220, '2018-02-27 20:12:30');
INSERT INTO `nm_shipping` VALUES (450, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '240', 'ORDER1519733610240', 220, '2018-02-27 20:13:30');
INSERT INTO `nm_shipping` VALUES (451, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '241', 'ORDER1519733796241', 220, '2018-02-27 20:16:36');
INSERT INTO `nm_shipping` VALUES (452, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '242', 'ORDER1519739165242', 229, '2018-02-27 21:46:05');
INSERT INTO `nm_shipping` VALUES (453, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '92', '96K86894UA423315R', 229, '2018-02-27 21:51:14');
INSERT INTO `nm_shipping` VALUES (454, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '243', 'ORDER1519739939243', 229, '2018-02-27 21:59:00');
INSERT INTO `nm_shipping` VALUES (455, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '244', 'ORDER1519740136244', 229, '2018-02-27 22:02:16');
INSERT INTO `nm_shipping` VALUES (456, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '7', '5992b77cced87dd7df08', 220, '2018-02-28 15:42:44');
INSERT INTO `nm_shipping` VALUES (457, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '9', '5992b77cced87dd7df08', 220, '2018-02-28 15:43:12');
INSERT INTO `nm_shipping` VALUES (458, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '11', 'b289180adcf4fc6fe85b', 220, '2018-02-28 16:55:22');
INSERT INTO `nm_shipping` VALUES (459, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '13', '8d1d632b64bd245bae80', 220, '2018-02-28 17:15:57');
INSERT INTO `nm_shipping` VALUES (460, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '15', '8d1d632b64bd245bae80', 220, '2018-02-28 17:20:56');
INSERT INTO `nm_shipping` VALUES (461, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '17', '8d1d632b64bd245bae80', 220, '2018-02-28 17:40:15');
INSERT INTO `nm_shipping` VALUES (462, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '19', '1d807a8896f3aa9d7ee3', 220, '2018-02-28 17:42:50');
INSERT INTO `nm_shipping` VALUES (463, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '20', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:02:49');
INSERT INTO `nm_shipping` VALUES (464, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '21', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:05:41');
INSERT INTO `nm_shipping` VALUES (465, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '22', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:05:56');
INSERT INTO `nm_shipping` VALUES (466, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '23', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:07:54');
INSERT INTO `nm_shipping` VALUES (467, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '24', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:08:42');
INSERT INTO `nm_shipping` VALUES (468, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '25', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:09:44');
INSERT INTO `nm_shipping` VALUES (469, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '26', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:10:21');
INSERT INTO `nm_shipping` VALUES (470, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '27', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:10:48');
INSERT INTO `nm_shipping` VALUES (471, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '28', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:11:04');
INSERT INTO `nm_shipping` VALUES (472, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '29', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:11:37');
INSERT INTO `nm_shipping` VALUES (473, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '30', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:11:57');
INSERT INTO `nm_shipping` VALUES (474, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '31', 'f714a5964e443a3dfa0b', 220, '2018-02-28 19:12:34');
INSERT INTO `nm_shipping` VALUES (475, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '32', 'b647bd8f4ecd2d139e02', 220, '2018-02-28 19:44:24');
INSERT INTO `nm_shipping` VALUES (476, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '33', '468544edd4b2daca74e7', 220, '2018-02-28 19:47:38');
INSERT INTO `nm_shipping` VALUES (477, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '34', '2458047c4f71f91ddaba', 220, '2018-02-28 20:51:39');
INSERT INTO `nm_shipping` VALUES (478, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '35', 'ce850aafa72be1761c1b', 229, '2018-03-01 13:33:43');
INSERT INTO `nm_shipping` VALUES (479, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '37', '247896d2542de383dadf', 220, '2018-03-01 13:39:31');
INSERT INTO `nm_shipping` VALUES (480, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '38', 'd9f2b5986a4bc93efed0', 229, '2018-03-01 18:15:22');
INSERT INTO `nm_shipping` VALUES (481, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '40', 'd0fb26af598f198b152f', 220, '2018-03-01 18:43:43');
INSERT INTO `nm_shipping` VALUES (482, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '41', '30fcb112016c45c1655e', 229, '2018-03-01 19:18:58');
INSERT INTO `nm_shipping` VALUES (483, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '42', '14e58b691d16f7daff58', 229, '2018-03-01 19:20:27');
INSERT INTO `nm_shipping` VALUES (484, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '43', '4cb87f43757948455676', 229, '2018-03-01 19:49:35');
INSERT INTO `nm_shipping` VALUES (485, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '44', '990aa13ad82aef28c774', 229, '2018-03-01 20:13:28');
INSERT INTO `nm_shipping` VALUES (486, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '45', '7b89f04b2169ab1fff80', 229, '2018-03-01 20:16:24');
INSERT INTO `nm_shipping` VALUES (487, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '46', '98e8d799fa60914e3828', 229, '2018-03-01 20:41:57');
INSERT INTO `nm_shipping` VALUES (488, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '47', '5bb15302256e2f6562ff', 229, '2018-03-01 20:49:45');
INSERT INTO `nm_shipping` VALUES (489, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '48', 'b9a23a0ba178c1b07987', 229, '2018-03-01 20:53:24');
INSERT INTO `nm_shipping` VALUES (490, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '49', 'e3f5db72fd0b9d5b816e', 229, '2018-03-01 21:24:40');
INSERT INTO `nm_shipping` VALUES (491, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '50', 'd11e6e7890108a03620e', 229, '2018-03-01 22:07:11');
INSERT INTO `nm_shipping` VALUES (492, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '51', 'b3c6520df608a957f861', 229, '2018-03-01 22:08:44');
INSERT INTO `nm_shipping` VALUES (493, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '52', '9f850433dfa62a117b8a', 229, '2018-03-01 22:11:24');
INSERT INTO `nm_shipping` VALUES (494, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '53', 'e543bc373d50c9cde89a', 229, '2018-03-01 22:13:00');
INSERT INTO `nm_shipping` VALUES (495, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '54', 'ba75ebec441f7b0883be', 229, '2018-03-02 13:14:59');
INSERT INTO `nm_shipping` VALUES (496, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '55', 'e8cfc26079c1738d0185', 229, '2018-03-02 13:16:26');
INSERT INTO `nm_shipping` VALUES (497, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '245', 'ORDER1519969592245', 229, '2018-03-02 13:46:32');
INSERT INTO `nm_shipping` VALUES (498, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '246', 'ORDER1519997476246', 229, '2018-03-02 21:31:16');
INSERT INTO `nm_shipping` VALUES (499, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '247', 'ORDER1519998023247', 229, '2018-03-02 21:40:23');
INSERT INTO `nm_shipping` VALUES (500, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '56', '39aa66cb2a27a859cee3', 220, '2018-03-03 13:49:49');
INSERT INTO `nm_shipping` VALUES (501, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '248', 'ORDER1520062842248', 229, '2018-03-03 15:40:42');
INSERT INTO `nm_shipping` VALUES (502, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '249', 'ORDER1520070131249', 229, '2018-03-03 17:42:12');
INSERT INTO `nm_shipping` VALUES (503, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '93', '9KK20004A38663738', 229, '2018-03-03 17:59:19');
INSERT INTO `nm_shipping` VALUES (504, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '250', 'ORDER1520224766250', 229, '2018-03-05 12:39:26');
INSERT INTO `nm_shipping` VALUES (505, 'bala', 'Hope', 'Peelamedu', 'peelamedu', 'tn', 'India', '641004', '7418529635  ', 'balamurugan@pofitec.com', '94', '3BD73522RR768160V', 229, '2018-03-05 13:01:57');
INSERT INTO `nm_shipping` VALUES (506, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '251', 'ORDER1520427623251', 220, '2018-03-07 21:00:23');
INSERT INTO `nm_shipping` VALUES (507, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '95', '3KK12016GN4813604', 220, '2018-03-07 21:43:20');
INSERT INTO `nm_shipping` VALUES (508, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '252', 'ORDER1520493681252', 201, '2018-03-08 15:21:21');
INSERT INTO `nm_shipping` VALUES (509, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '96', '3FN48224BD5999131', 201, '2018-03-08 17:52:08');
INSERT INTO `nm_shipping` VALUES (510, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '57', 'ebcdedbb3a4ce1403ec1', 201, '2018-03-08 19:47:02');
INSERT INTO `nm_shipping` VALUES (511, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '253', 'ORDER1520512398253', 201, '2018-03-08 20:33:18');
INSERT INTO `nm_shipping` VALUES (512, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '58', '39eedd89e3ba0e1e5b86', 220, '2018-03-08 21:39:21');
INSERT INTO `nm_shipping` VALUES (513, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '254', 'ORDER1520516626254', 220, '2018-03-08 21:43:47');
INSERT INTO `nm_shipping` VALUES (514, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '255', 'ORDER1520516743255', 220, '2018-03-08 21:45:43');
INSERT INTO `nm_shipping` VALUES (515, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '59', 'e755631bed08eb6bef3d', 220, '2018-03-08 21:48:25');
INSERT INTO `nm_shipping` VALUES (516, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '60', '79ccbaf93c0130ce3698', 220, '2018-03-08 21:56:05');
INSERT INTO `nm_shipping` VALUES (517, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '61', '9b1c2c4186260cf47694', 220, '2018-03-08 22:00:59');
INSERT INTO `nm_shipping` VALUES (518, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '62', '4c28051e7786d1117917', 220, '2018-03-08 22:15:53');
INSERT INTO `nm_shipping` VALUES (519, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '63', '4d7a77a3912a8e89c6c3', 220, '2018-03-08 22:19:10');
INSERT INTO `nm_shipping` VALUES (520, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '64', '4d7a77a3912a8e89c6c3', 220, '2018-03-08 22:21:08');
INSERT INTO `nm_shipping` VALUES (521, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '65', '4d7a77a3912a8e89c6c3', 220, '2018-03-08 22:22:13');
INSERT INTO `nm_shipping` VALUES (522, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '66', '4d7a77a3912a8e89c6c3', 220, '2018-03-08 22:22:31');
INSERT INTO `nm_shipping` VALUES (523, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '67', '4d7a77a3912a8e89c6c3', 220, '2018-03-08 22:23:07');
INSERT INTO `nm_shipping` VALUES (524, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '68', '4d7a77a3912a8e89c6c3', 220, '2018-03-08 22:23:14');
INSERT INTO `nm_shipping` VALUES (525, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '69', '949057169e835d161b05', 220, '2018-03-08 22:25:59');
INSERT INTO `nm_shipping` VALUES (526, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '70', '949057169e835d161b05', 220, '2018-03-08 22:27:07');
INSERT INTO `nm_shipping` VALUES (527, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '71', '949057169e835d161b05', 220, '2018-03-08 22:28:25');
INSERT INTO `nm_shipping` VALUES (528, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '72', '949057169e835d161b05', 220, '2018-03-08 22:28:29');
INSERT INTO `nm_shipping` VALUES (529, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '73', '949057169e835d161b05', 220, '2018-03-08 22:28:31');
INSERT INTO `nm_shipping` VALUES (530, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '74', '949057169e835d161b05', 220, '2018-03-08 22:28:32');
INSERT INTO `nm_shipping` VALUES (531, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '75', '949057169e835d161b05', 220, '2018-03-08 22:28:33');
INSERT INTO `nm_shipping` VALUES (532, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '76', '940479095d5dd3b17b6f', 220, '2018-03-08 22:29:27');
INSERT INTO `nm_shipping` VALUES (533, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '77', '940479095d5dd3b17b6f', 220, '2018-03-08 22:29:37');
INSERT INTO `nm_shipping` VALUES (534, 'ragul', 'RS Puram', 'r', 'Coimbatore', 'Tamil Nadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '261', 'ORDER1521005081261', 250, '2018-03-14 13:24:41');
INSERT INTO `nm_shipping` VALUES (535, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '262', 'ORDER1521015893262', 201, '2018-03-14 16:24:53');
INSERT INTO `nm_shipping` VALUES (536, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '97', '5KM51120KY2373525', 201, '2018-03-14 16:28:39');
INSERT INTO `nm_shipping` VALUES (537, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '263', 'ORDER1521019143263', 201, '2018-03-14 17:19:03');
INSERT INTO `nm_shipping` VALUES (538, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '98', '8T650245VM497843C', 201, '2018-03-14 17:22:11');
INSERT INTO `nm_shipping` VALUES (539, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '100', 'ORDER1521119275mwXG6T', 201, '2018-03-15 21:07:55');
INSERT INTO `nm_shipping` VALUES (540, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '264', 'ORDER1521194410264', 201, '2018-03-16 18:00:10');
INSERT INTO `nm_shipping` VALUES (541, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '265', 'ORDER1521194729265', 201, '2018-03-16 18:05:29');
INSERT INTO `nm_shipping` VALUES (542, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Delhi', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '266', 'ORDER1521456258266', 201, '2018-03-19 18:44:18');
INSERT INTO `nm_shipping` VALUES (543, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '267', 'ORDER1521549591267', 201, '2018-03-20 20:39:51');
INSERT INTO `nm_shipping` VALUES (544, 'Suganya', 'Ramnagar', 'Gan', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '1234567890', 'suganya@pofitec.com', '268', 'ORDER1522133855268', 272, '2018-03-27 14:57:36');
INSERT INTO `nm_shipping` VALUES (545, 'Suganya', 'Ramnagar', 'Gan', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '1234567890', 'suganya@pofitec.com', '101', '36K38055GJ032682S', 272, '2018-03-27 14:58:42');
INSERT INTO `nm_shipping` VALUES (546, 'Suganya', 'Gandhipuram', 'Mtp', 'Coimbatore', 'Tamil Nadu', 'India', '123456', '1234567890', 'suganya@pofitec.com', '269', 'ORDER1522134551269', 272, '2018-03-27 15:09:11');
INSERT INTO `nm_shipping` VALUES (547, 'Suganya', 'Gandhipuram', 'Mtp', 'Coimbatore', 'Tamil Nadu', 'India', '123456', '1234567890', 'suganya@pofitec.com', '102', '9NG36189H8313451T', 272, '2018-03-27 15:10:44');
INSERT INTO `nm_shipping` VALUES (548, 'Suganya', 'Ramnagar', 'Gan', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '1234567890', 'suganya@pofitec.com', '270', 'ORDER1522143907270', 272, '2018-03-27 17:45:07');
INSERT INTO `nm_shipping` VALUES (549, 'Suganya', 'Ramnagar', 'Gan', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '1234567890', 'suganya@pofitec.com', '271', 'ORDER1522143986271', 272, '2018-03-27 17:46:26');
INSERT INTO `nm_shipping` VALUES (550, 'Suganya', 'Ramnagar', 'Gan', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '1234567890', 'suganya@pofitec.com', '272', 'ORDER1522144014272', 272, '2018-03-27 17:46:54');
INSERT INTO `nm_shipping` VALUES (551, 'Suganya', 'Mettupalayam', 'Mettupalayam', 'Coimbatore', 'Tamil Nadu', 'India', '213444', '1234567890', 'suganya@pofitec.com', '273', 'ORDER1522327230273', 272, '2018-03-29 20:40:30');
INSERT INTO `nm_shipping` VALUES (552, 'Suganya', 'Mettupalayam', 'mettupalayam', 'Coimbatore', 'Tamil Nadu', 'India', '641302', '1234567890', 'suganya@pofitec.com', '274', 'ORDER1522327282274', 272, '2018-03-29 20:41:23');
INSERT INTO `nm_shipping` VALUES (553, 'Suganya', 'mettupalayam', 'mettupalayam', 'Coimbatore', 'Tamil Nadu', 'India', '123654', '1234567890', 'suganya@pofitec.com', '275', 'ORDER1522327329275', 272, '2018-03-29 20:42:09');
INSERT INTO `nm_shipping` VALUES (554, 'Suganya', 'mettupalayam', 'mettupalayam', 'Delhi', 'Tamilnadu', 'India', '600042', '1234567890', 'suganya@pofitec.com', '276', 'ORDER1522399301276', 272, '2018-03-30 16:41:42');
INSERT INTO `nm_shipping` VALUES (555, 'Suganya', 'mettupalayam', 'mettupalayam', 'Delhi', 'Tamilnadu', 'India', '600042', '1234567890', 'suganya@pofitec.com', '103', '3B595938SW8090046', 272, '2018-03-30 16:43:23');
INSERT INTO `nm_shipping` VALUES (556, 'suganya', 'mettupalayam', 'mettupalayam', 'Delhi', 'Tamilnadu', 'India', '600042', '1234567890', 'suganya@pofitec.com', '104', '6DR414542C078684R', 273, '2018-03-30 20:01:52');
INSERT INTO `nm_shipping` VALUES (557, 'suganya', 'hg', 'ghgh', 'Coimbatore', 'ghg', 'India', '12134', '1234567890', 'suganya@pofitec.com', '277', 'ORDER1522416246277', 273, '2018-03-30 21:24:06');
INSERT INTO `nm_shipping` VALUES (558, 'suganya', 'dfd', 'dfdfd', 'Coimbatore', 'dfdfd', 'India', '123456', '1234567890', 'suganya@pofitec.com', '78', '30e8822151683a1abf4d', 273, '2018-04-03 20:51:35');
INSERT INTO `nm_shipping` VALUES (559, 'suganya', 'tyty', 'tyt', 'Coimbatore', 'tytyt', 'India', '123456', '1234567890', 'suganya@pofitec.com', '79', '77baf2687873ae5aa98b', 273, '2018-04-03 21:04:04');
INSERT INTO `nm_shipping` VALUES (560, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '279', 'ORDER1523247844279', 275, '2018-04-09 12:24:04');
INSERT INTO `nm_shipping` VALUES (561, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '105', '5KH6307008680393V', 275, '2018-04-09 12:27:51');
INSERT INTO `nm_shipping` VALUES (562, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '80', 'ee4701bd60f59804f437', 275, '2018-04-09 12:29:02');
INSERT INTO `nm_shipping` VALUES (563, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '280', 'ORDER1523248166280', 275, '2018-04-09 12:29:26');
INSERT INTO `nm_shipping` VALUES (564, 'Nagoor Meeran GPlus', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '281', 'ORDER1523258580281', 276, '2018-04-09 15:23:00');
INSERT INTO `nm_shipping` VALUES (565, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '106', '1V043942HV8450455', 283, '2018-04-09 17:20:14');
INSERT INTO `nm_shipping` VALUES (566, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '282', 'ORDER1523265714282', 283, '2018-04-09 17:21:54');
INSERT INTO `nm_shipping` VALUES (567, 'Kailash', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '1591591599', 'nagoor@pofitec.com', '283', 'ORDER1523268893283', 285, '2018-04-09 18:14:53');
INSERT INTO `nm_shipping` VALUES (568, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbatore', 'Tamil Nadu', 'India', '641008', '01591591599', 'nagoor@pofitec.com', '284', 'ORDER1523354078284', 275, '2018-04-10 17:54:38');
INSERT INTO `nm_shipping` VALUES (569, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Delhi', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '285', 'ORDER1523361762285', 201, '2018-04-10 20:02:42');
INSERT INTO `nm_shipping` VALUES (570, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', '0', 'tn', '0', '123456', '8012122975', 'suganya.t@pofitec.com', '286', 'ORDER1523362536286', 201, '2018-04-10 20:15:36');
INSERT INTO `nm_shipping` VALUES (571, 'venugopal', 'Address1', 'Address2', '', 'CSA state', 'United States of America', '12134', '3456765434', 'venugopal@pofitec.com', '288', 'ORDER1523443074288', 220, '2018-04-11 18:37:54');
INSERT INTO `nm_shipping` VALUES (572, 'venugopal', 'Address1', 'Address2', '0', 'CSA state', '0', '12134', '3456765434', 'venugopal@pofitec.com', '290', 'ORDER1523454711290', 220, '2018-04-11 21:51:51');
INSERT INTO `nm_shipping` VALUES (573, 'venugopal', 'Address1', 'Address2', '0', 'CSA state', '0', '12134', '3456765434', 'venugopal@pofitec.com', '292', 'ORDER1523455729292', 220, '2018-04-11 22:08:49');
INSERT INTO `nm_shipping` VALUES (574, 'venugopal', 'Address1', 'Address2', '0', 'CSA state', '0', '12134', '3456765434', 'venugopal@pofitec.com', '293', 'ORDER1523455766293', 220, '2018-04-11 22:09:26');
INSERT INTO `nm_shipping` VALUES (575, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '107', '07767225X2743033K', 201, '2018-04-12 12:07:22');
INSERT INTO `nm_shipping` VALUES (576, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '81', '244fff4c45bd2451b423', 201, '2018-04-12 12:10:35');
INSERT INTO `nm_shipping` VALUES (577, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '294', 'ORDER1523506304294', 201, '2018-04-12 12:11:44');
INSERT INTO `nm_shipping` VALUES (578, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '295', 'ORDER1523506657295', 201, '2018-04-12 12:17:37');
INSERT INTO `nm_shipping` VALUES (579, 'ragul', 'RS Puram', 'r', 'Coimbatore', 'Tamil Nadu', 'India', '641104', '9944349002', 'ragulgandhi@pofitec.com', '300', 'ORDER1523513034300', 273, '2018-04-12 14:03:54');
INSERT INTO `nm_shipping` VALUES (580, 'suganya', 'test', 'sdsd', 'Coimbatore', 'chsdfsd', 'India', '123456', '1234567890', 'suganya@pofitec.com', '301', 'ORDER1523531974301', 273, '2018-04-12 19:19:35');
INSERT INTO `nm_shipping` VALUES (581, 'suganya', 'fgf', 'fgf', 'Coimbatore', 'fgfgf', 'India', '132132', '1234567890', 'suganya@pofitec.com', '302', 'ORDER1523532018302', 273, '2018-04-12 19:20:18');
INSERT INTO `nm_shipping` VALUES (582, 'suganya', 'sds', '323232', 'Coimbatore', 'fgfgf', 'India', '23232', '1234567890', 'suganya@pofitec.com', '303', 'ORDER1523532330303', 273, '2018-04-12 19:25:30');
INSERT INTO `nm_shipping` VALUES (583, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975', 'suganya.t@pofitec.com', '83', 'c4cc1d2b07a2d502e685', 201, '2018-04-12 19:49:16');
INSERT INTO `nm_shipping` VALUES (584, 'suganya', 'tyt', 'tytyt', 'Coimbatore', 'tytyt', 'India', '121232', '1234567890', 'suganya@pofitec.com', '304', 'ORDER1523534913304', 273, '2018-04-12 20:08:34');
INSERT INTO `nm_shipping` VALUES (585, 'suganya', 'uiu', 'uiu', 'Chennai', 'Tamil Nadu', 'India', '767676', '1234567890', 'suganya@pofitec.com', '109', '2H152882V33480439', 273, '2018-04-12 20:23:33');
INSERT INTO `nm_shipping` VALUES (586, 'suganya', 'ttyt', 'yty', 'Coimbatore', 'syfdfdf', 'India', '121232', '1234567890', 'suganya@pofitec.com', '84', 'b5406e429779f579966a', 273, '2018-04-12 21:03:05');
INSERT INTO `nm_shipping` VALUES (587, 'suganya', 'fgfg', 'fgfg', 'Chennai', 'fyyy', 'India', '123456', '1234567890', 'suganya@pofitec.com', '85', 'fdb8245504ed6c513f8a', 273, '2018-04-12 21:04:33');
INSERT INTO `nm_shipping` VALUES (588, 'suganya', 'xfdf', 'dfdf', 'Chennai', 'dfdf', 'India', '123456', '1234567890', 'suganya@pofitec.com', '86', 'deea6a51d0a8e2a39ae7', 273, '2018-04-12 21:27:06');
INSERT INTO `nm_shipping` VALUES (589, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '111', 'ORDER1523625861RSFchz', 201, '2018-04-13 21:24:21');
INSERT INTO `nm_shipping` VALUES (590, 'suganya', 'rtrtr', 'rtrtr', 'Chennai', 'rtrtr', 'India', '123456', '1234567890', 'suganya@pofitec.com', '306', 'ORDER1523627127306', 273, '2018-04-13 21:45:28');
INSERT INTO `nm_shipping` VALUES (591, 'suganya', 'rtrt', 'rtrtr', 'Chennai', 'rtrtr', 'India', '123456', '1234567890', 'suganya@pofitec.com', '113', 'ORDER1523628427AaBJar', 273, '2018-04-13 22:07:07');
INSERT INTO `nm_shipping` VALUES (592, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '88', 'baf3cca6b08a6277bc7e', 201, '2018-04-13 22:08:56');
INSERT INTO `nm_shipping` VALUES (593, 'suganya', 'rtrtr', 'rt', 'Coimbatore', 'rtrtr', 'India', '123456', '1234567890', 'suganya@pofitec.com', '114', '93730221G0400623E', 273, '2018-04-13 22:13:06');
INSERT INTO `nm_shipping` VALUES (594, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '307', 'ORDER1523851592307', 220, '2018-04-16 12:06:33');
INSERT INTO `nm_shipping` VALUES (595, 'suganya', 'gdgfdhghshhytuuytu', 'cbe', 'Lahore', 'tn', 'Italy', '123456', '8012122975', 'suganya.t@pofitec.com', '308', 'ORDER1523852958308', 201, '2018-04-16 12:29:18');
INSERT INTO `nm_shipping` VALUES (596, 'suganya', 'test', 'rtr', 'Coimbatore', 'Tamil Nadu', 'India', '54321', '1234567890', 'suganya@pofitec.com', '115', '90A962132A6099009', 273, '2018-04-16 13:08:19');
INSERT INTO `nm_shipping` VALUES (597, 'suganya.t', 'ram nagar', 'cbe', 'vadavalli', 'tn', 'United States of America', '123456', '8012122975 ', 'suganya.t@pofitec.com', '310', 'ORDER1523858408310', 201, '2018-04-16 14:00:08');
INSERT INTO `nm_shipping` VALUES (598, 'venugopal', 'Address1', 'Address2', 'Lahore', 'CSA state', 'India', '12134', '3456765434', 'venugopal@pofitec.com', '312', 'ORDER1523858457312', 220, '2018-04-16 14:00:57');
INSERT INTO `nm_shipping` VALUES (599, 'suganya.t', 'ram nagar', 'cbe', 'vadavalli', 'tn', 'United States of America', '123456', '8012122975 ', 'suganya.t@pofitec.com', '313', 'ORDER1523858499313', 201, '2018-04-16 14:01:39');
INSERT INTO `nm_shipping` VALUES (600, 'suganya.t', 'ram nagar', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975 ', 'suganya.t@pofitec.com', '89', 'e0aee06be67b524efcea', 201, '2018-04-16 16:12:43');
INSERT INTO `nm_shipping` VALUES (601, 'suganya.t', 'ram nagar', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975 ', 'suganya.t@pofitec.com', '314', 'ORDER1523883240314', 201, '2018-04-16 20:54:00');
INSERT INTO `nm_shipping` VALUES (602, 'suganya.t', 'ram nagar', 'cbe', 'Coimbatore', 'tn', 'India', '123456', '8012122975 ', 'suganya.t@pofitec.com', '315', 'ORDER1523883592315', 201, '2018-04-16 20:59:52');

-- ----------------------------
-- Table structure for nm_size
-- ----------------------------
DROP TABLE IF EXISTS `nm_size`;
CREATE TABLE `nm_size`  (
  `si_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `si_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`si_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_size
-- ----------------------------
INSERT INTO `nm_size` VALUES (4, '28');
INSERT INTO `nm_size` VALUES (5, '32');
INSERT INTO `nm_size` VALUES (7, '36');
INSERT INTO `nm_size` VALUES (8, '38');
INSERT INTO `nm_size` VALUES (9, '40');
INSERT INTO `nm_size` VALUES (11, '53');
INSERT INTO `nm_size` VALUES (12, '66');
INSERT INTO `nm_size` VALUES (13, '55');
INSERT INTO `nm_size` VALUES (14, 'no size');
INSERT INTO `nm_size` VALUES (15, '4');
INSERT INTO `nm_size` VALUES (16, '52');
INSERT INTO `nm_size` VALUES (17, '123456789012349');
INSERT INTO `nm_size` VALUES (18, '1');
INSERT INTO `nm_size` VALUES (19, '123456789012345');
INSERT INTO `nm_size` VALUES (20, '30');
INSERT INTO `nm_size` VALUES (21, 'Xl');

-- ----------------------------
-- Table structure for nm_smtp
-- ----------------------------
DROP TABLE IF EXISTS `nm_smtp`;
CREATE TABLE `nm_smtp`  (
  `sm_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `sm_host` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_port` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_uname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_pwd` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_isactive` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`sm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_smtp
-- ----------------------------
INSERT INTO `nm_smtp` VALUES (1, 'smtp.gmail.com', '587', 'kailashkumar.r@pofitec.com', '1234567890', 1);
INSERT INTO `nm_smtp` VALUES (2, 'Send Grid', '149', 'send grid', 'sendgrid', 0);

-- ----------------------------
-- Table structure for nm_social_media
-- ----------------------------
DROP TABLE IF EXISTS `nm_social_media`;
CREATE TABLE `nm_social_media`  (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT,
  `sm_fb_app_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_fb_sec_key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_fb_page_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_fb_like_page_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_twitter_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_twitter_app_id` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_twitter_sec_key` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_linkedin_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_youtube_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_gmap_app_key` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_android_page_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_iphone_url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_analytics_code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_gl_client_id` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sm_gl_sec_key` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`sm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_social_media
-- ----------------------------
INSERT INTO `nm_social_media` VALUES (1, '108134949325990', 'c29a8a4e205b942082e44b5cf01df6d9', 'http://192.168.0.62/laravelecommerce_ver5.5/', 'https://www.facebook.com', 'https://www.facebook.com', 'dsf1dsfsd232d1f21dsf21ds2f1dsf', 'sd2f1sd2f13sfgsd543df3ds1fds1f', 'https://www.facebook.com', 'https://www.facebook.com', 'AIzaSyCsDoY1OPjAqu1PlQhH3UljYsfw-81bLkI', '', '', '<script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-62671250-4\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n</script>', '782885230420-rbpe9m9044krsto1dqchhr3p6am81ggh.apps.googleusercontent.com', 'O40k7cbT7lnLaESYQ0npsY5c');

-- ----------------------------
-- Table structure for nm_specification
-- ----------------------------
DROP TABLE IF EXISTS `nm_specification`;
CREATE TABLE `nm_specification`  (
  `sp_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sp_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sp_name_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sp_spg_id` smallint(5) UNSIGNED NOT NULL,
  `sp_order` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`sp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_specification
-- ----------------------------
INSERT INTO `nm_specification` VALUES (15, 'In the Box', ' En el cuadro', 10, 5);
INSERT INTO `nm_specification` VALUES (16, 'Model Number', ' Número de modelo', 10, 2);
INSERT INTO `nm_specification` VALUES (17, 'Model Name', ' Nombre del modelo', 10, 3);
INSERT INTO `nm_specification` VALUES (18, 'Color', 'Color', 10, 4);
INSERT INTO `nm_specification` VALUES (19, 'Display Size', '', 11, 1);
INSERT INTO `nm_specification` VALUES (20, 'Resolution', '', 11, 2);
INSERT INTO `nm_specification` VALUES (21, 'Resolution Type', '', 11, 3);
INSERT INTO `nm_specification` VALUES (22, 'Operating System', '', 12, 1);
INSERT INTO `nm_specification` VALUES (24, 'Processor Core', '', 12, 3);
INSERT INTO `nm_specification` VALUES (26, 'Resolution Type', '', 10, 1);
INSERT INTO `nm_specification` VALUES (29, 'Lether', '', 13, 3);
INSERT INTO `nm_specification` VALUES (30, 'Glass', '', 11, 43);
INSERT INTO `nm_specification` VALUES (31, 'glass type', '', 10, 44);
INSERT INTO `nm_specification` VALUES (32, 'Gorilla', '', 16, 11);
INSERT INTO `nm_specification` VALUES (33, 'xx', '', 14, 44);
INSERT INTO `nm_specification` VALUES (34, 'Casual Shirts', '', 10, 3);
INSERT INTO `nm_specification` VALUES (35, 'Short Shirts', '', 10, 4);
INSERT INTO `nm_specification` VALUES (36, 'Nightshirt ', '', 10, 6);
INSERT INTO `nm_specification` VALUES (37, 'Poet shirt ', '', 10, 7);
INSERT INTO `nm_specification` VALUES (38, 'White shirt', '', 10, 7);
INSERT INTO `nm_specification` VALUES (39, 'Halfshirt', '', 10, 7);
INSERT INTO `nm_specification` VALUES (40, 'Camp shirt ', '', 10, 1);
INSERT INTO `nm_specification` VALUES (41, 'Rugby shirt', '', 10, 1);
INSERT INTO `nm_specification` VALUES (42, 'Ballet shoe', '', 13, 3);
INSERT INTO `nm_specification` VALUES (43, 'Boat shoe', '', 13, 3);
INSERT INTO `nm_specification` VALUES (44, 'Derby shoe', '', 13, 4);
INSERT INTO `nm_specification` VALUES (45, 'High-heeled footwear', '', 13, 3);
INSERT INTO `nm_specification` VALUES (46, 'Elevator shoes', '', 13, 3);
INSERT INTO `nm_specification` VALUES (47, 'Rocker bottom shoe', '', 13, 3);
INSERT INTO `nm_specification` VALUES (48, 'Snow boot', '', 13, 3);
INSERT INTO `nm_specification` VALUES (49, 'Steel-toe boot', '', 13, 3);
INSERT INTO `nm_specification` VALUES (50, 'Hooded towel', '', 18, 8);
INSERT INTO `nm_specification` VALUES (51, 'Baby shampoo', '', 18, 8);
INSERT INTO `nm_specification` VALUES (52, 'Safety nail scissors', '', 18, 8);
INSERT INTO `nm_specification` VALUES (53, 'Bottle/nipple brush', '', 18, 8);
INSERT INTO `nm_specification` VALUES (54, 'Stroller', '', 18, 8);
INSERT INTO `nm_specification` VALUES (56, 'Brase Styles', '', 20, 44);
INSERT INTO `nm_specification` VALUES (57, 'touch', '', 11, 3);

-- ----------------------------
-- Table structure for nm_spgroup
-- ----------------------------
DROP TABLE IF EXISTS `nm_spgroup`;
CREATE TABLE `nm_spgroup`  (
  `spg_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spg_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `spg_name_fr` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `spg_order` smallint(6) NOT NULL,
  `sp_mc_id` int(11) NOT NULL,
  `sp_smc_id` int(11) NOT NULL,
  `show_on_filter` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '0:No;1:yes',
  PRIMARY KEY (`spg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_spgroup
-- ----------------------------
INSERT INTO `nm_spgroup` VALUES (10, 'Generall', ' General', 1, 2, 2, '1');
INSERT INTO `nm_spgroup` VALUES (11, 'Display Features', 'Características de la pantalla', 2, 6, 48, '1');
INSERT INTO `nm_spgroup` VALUES (12, 'Os & Processor Features', ' Funciones del procesador y del procesador', 3, 6, 16, '1');
INSERT INTO `nm_spgroup` VALUES (13, 'types', '', 4, 2, 10, '1');
INSERT INTO `nm_spgroup` VALUES (14, 'General o', '', 6, 3, 4, '0');
INSERT INTO `nm_spgroup` VALUES (15, 'Screen', '', 33, 6, 48, '0');
INSERT INTO `nm_spgroup` VALUES (16, 'General glass', '', 22, 6, 48, '0');
INSERT INTO `nm_spgroup` VALUES (18, 'New Borns ', '', 7, 4, 6, '1');
INSERT INTO `nm_spgroup` VALUES (20, 'Trendings', '', 67, 3, 47, '1');

-- ----------------------------
-- Table structure for nm_store
-- ----------------------------
DROP TABLE IF EXISTS `nm_store`;
CREATE TABLE `nm_store`  (
  `stor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stor_merchant_id` int(10) NOT NULL,
  `stor_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_name_fr` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_address1` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_address1_fr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_address2` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_address2_fr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_country` smallint(5) UNSIGNED NOT NULL,
  `stor_city` int(10) UNSIGNED NOT NULL,
  `stor_zipcode` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_metakeywords` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_metakeywords_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_metadesc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_metadesc_fr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_website` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_latitude` decimal(18, 14) NOT NULL,
  `stor_longitude` decimal(18, 14) NOT NULL,
  `stor_img` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>unblock,0=>block',
  `created_date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stor_addedby` int(5) NOT NULL DEFAULT 1 COMMENT '1-admin,2 -merchant',
  `store_city_status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'A',
  `promote_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`stor_id`) USING BTREE,
  INDEX `stor_merchant_id`(`stor_merchant_id`) USING BTREE,
  INDEX `stor_status`(`stor_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_store
-- ----------------------------
INSERT INTO `nm_store` VALUES (57, 41, 'Fun store', 'magasin de produits', '8883857744', 'test,coimbatore', 'tester', 'test,mettuplayam', 'tester2', 1, 1, '641004', 'test', 'test2', 'test', 'test2', '', 11.02098300000000, 76.96633440000005, 'Store_1521451312_Store_1507890416_open-ok.jpg', 0, '', 1, 'B', 1);
INSERT INTO `nm_store` VALUES (59, 58, 'Store', ' le magasinaa', '88833377335645645', 'Ram Nagar', 'Ram Nagaraa', 'Coimbatore', 'Coimbatoreaa', 1, 1, '1234567890123456', 'Meta Keyword', 'Meta Keywordaa', 'Meta Description', 'Meta Descriptionaa', 'http://pofitec.com', 11.01684450000000, 76.95583209999995, 'Deal_151065251918518.png', 1, '09/29/2017', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (61, 41, 'Product store', 'Soies de Chennaiss', '8883857744', 'Gandhipuram', 'Gandhipuramss', 'Address', 'Adressess', 1, 2, '7654367', 'Keywords', 'Mots clésss', 'description', 'la descriptionss', '', 13.08268020000000, 80.27071840000008, 'Store_1513684245.jpg', 0, '', 2, 'A', 0);
INSERT INTO `nm_store` VALUES (62, 59, 'Ganapathy skills', 'Habilidades de Ganapatia', '8883857743', 'Gandhipuram', 'Gandhipuram', 'Coimbatore', 'Coimbatore', 1, 4, '641006', 'Keywords', 'Palabras claves', 'description', 'descripción', 'http://pofitec.com', 11.01680000000000, 76.95580000000000, 'Deal_151013461130690.png', 0, '10/04/2017', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (63, 60, 'RG', 'RG', '9944349002', 'Coimbatore', 'Coimbatore', 'Coimbatore', 'Coimbatore', 1, 1, '641104', 'dfdsfg', 'Coimbatore', 'sfdgdsfgdsfg', 'Coimbatore', 'laraveleommerce.com', 11.01684450000000, 76.95583209999995, 'Deal_15106456068257.png', 1, '11/09/2017', 1, 'A', 1);
INSERT INTO `nm_store` VALUES (65, 62, 'cvb store', '', '453456', 'gfhgf', '', 'gh', '', 1, 1, '64645', 'gfh', '', 'gfhgfh', '', 'http://192.168.0.6/Socialecommerce/blog_view/1', 38.29491000000000, -78.33370489999999, 'Store_1513836812.jpg', 1, '12/12/2017', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (66, 63, 'rr', '', '4534533453', 'fg', '', 'dfgdfg', '', 1, 1, '5345345', 'gdfg', '', 'dfgdfg', '', 'http://192.168.0.6/Socialecommerce/blog_view/1', 10.32359080000000, 76.95100300000001, 'Deal_151360408320191.png', 0, '12/18/2017', 1, 'B', 0);
INSERT INTO `nm_store` VALUES (67, 41, 'store3', '', '5454545454', 'sdfs', '', 'sdfdf', '', 1, 1, '654543', '', '', 'sdfd', '', 'http://192.168.0.6/Socialecommerce/blog_view/1', 10.91322060000000, 77.03690200000005, 'Store_1513608051.jpg', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (68, 63, 'yuyu', '', '1234567895', 'yuy', '', 'yuyu', '', 1, 1, '123456', 'yuy', '', 'uy', '', 'https://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1513836591.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (69, 64, 'hjhj', '', '18985656565', 'trtr', '', 'rtrtr', '', 1, 1, '213456', 'rtr', '', 'rtr', '', 'https://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1513836679.jpg', 1, '12/21/2017', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (70, 64, 'zzzzzzzzzzzzzz', '', '08012122975', 'fgf', '', 'ghgh', '', 1, 5, '123456', 'ty', '', 'tyt', '', 'https://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1513836755.png', 0, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (71, 65, 'ghg', '', '454545455454', 'ttt', '', 'tyt', '', 15, 13, '123456', 'yuyuy', '', 'yyuy', '', 'https://www.google.com', 13.08268020000000, 80.27071840000008, 'Store_1513837031.png', 0, '12/21/2017', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (72, 66, 'FINAL', '', '45445454554', 'rtr', '', 'rtr', '', 1, 4, '123456', 'hjhh', '', 'hjh', '', 'https://www.google.com', 13.08268020000000, 80.27071840000008, 'Store_1513837187.jpg', 0, '12/21/2017', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (73, 67, 'big show', '', '09632587410', 'hj', '', 'nm n', '', 1, 1, '641010', 'fsdf', '', 'afsfs', '', 'https://www.google.co.in', 11.01040330000000, 76.94990280000002, 'Store_1513858694.png', 1, '12/21/2017', 1, 'A', 1);
INSERT INTO `nm_store` VALUES (74, 67, 'edge', '', '09632587410', 'hj', '', 'nm n', '', 15, 13, '641010', 'assa ', '', 'zxz', '', 'https://www.google.co.in', 11.01235010000000, 76.96286580000003, 'Store_1513858640.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (75, 68, 'ragul gandhi1', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '', 'https://www.google.com', 11.01680000000000, 76.95580000000000, '', 1, '01/05/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (76, 69, ' d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskd', '', '3242343243243243', ' d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskdjfkldsfldsjfldsf jdslf sdfds fdsf jdlfjdsl fsd s ', '', ' d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskdjfkldsfldsjfldsf jdslf sdfds fdsf jdlfjdsl fsd s ', '', 1, 14, '321231', ' d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskdjfkldsfldsjfldsf jdslf sdfds fdsf jdlfjdsl fsd s ', '', ' d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskdjfkldsfldsjfldsf jdslf sdfds fdsf jdlfjdsl fsd s  d dfg lkdfgdlgjdflgfdgkdfg;ldfkgdfdf;lgkdf;lkgdfl;gp435 43853-5=2 ***^*^(_(_^&% $^%$$##$%&*&& flskdjfkldsfldsjfldsf jdslf sdfds fdsf jdlfjdsl fsd s ', '', 'http://google.com', 20.59368400000000, 78.96288000000004, 'Store_1515241639.png', 1, '01/06/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (77, 70, 'test store', '', '09876543210', 'test ship addr1', '', 'test ship addr2', '', 1, 15, '132456', 'dfgdf', '', 'gdgfdf', '', 'http://google.com', 7.95462956363331, 80.65544599609370, 'Deal_151524737810313.png', 1, '01/06/2018', 1, 'B', 0);
INSERT INTO `nm_store` VALUES (78, 70, 'test storetest storetest storetest storetest storetest storetest storetest storetest storetest store', '', '09876543210', 'test ship addr1', '', 'test ship addr2', '', 1, 14, '132456', 'test storetest storetest store', '', 'test storetest storetest storetest storetest storetest store', '', 'http://google.com', 8.07021974820911, 80.89027875976558, 'Store_1515246297.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (79, 71, 'cvb', '', '23456789', 'nmbnm', '', 'bnm', '', 1, 1, '567898', 'ghf', '', 'fgh', '', 'http://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1515389351.png', 1, '01/08/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (80, 72, 'venugds', '', '03456765434', 'jhkjhkk', '', 'jhkj', '', 1, 1, '645678', 'keywordskeywordskeywordskeywords', '', 'descriptiondescriptiondescriptiondescription', '', 'http://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1515389654.png', 1, '01/08/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (81, 73, 'venug', '', '03456765434', 'jhkjhkk', '', 'jhkj', '', 1, 1, '645678', '', '', '', '', 'http://www.google.com', 12.98545420000000, 77.66392480000002, 'Store_1515393786.png', 1, '01/08/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (82, 74, 'bcvb', '', '6456456456456456', 'gdfg', '', 'fgdf', '', 1, 1, '123456789012', 'fg', '', 'dfg', '', 'http://www.google.com', 23.68499400000000, 90.35633099999995, 'Store_1515409339.png', 1, '01/08/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (83, 75, 'venugddfgdfgdfgdfgghjghjghj_____', '', '0345676543456786', 'jhkjhkk', '', 'jhkjghjghjghj', '', 1, 14, '7778678768768', '', '', '', '', 'http://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1515409535.png', 1, '01/08/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (84, 75, 'sfsdfsdff_-------', '', '1312323123123123', '23sdfsdfsdfsddsfsdf', '', 'sdfsdfsdfsdfsdf', '', 1, 1, '453453453453', '', '', '', '', 'http://www.google.com', 13.08268020000000, 80.27071840000008, 'Store_1515410002.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (85, 75, 'venugd', '', '03456765434', 'jhkjhkk', '', 'jhkj', '', 1, 1, '645678877', '', '', '', '', 'http://www.google.com', 8.19956380000000, 80.63269160000004, 'Store_1515410992.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (86, 75, 'ertet__', '', '5675675675675675', 'ytu', '', 'tyutyu', '', 1, 1, '6456456', 'dfgfdg', '', 'dfgdfgdfgdf', '', 'http://www.google.com', 11.01684450000000, 76.95583209999995, 'Store_1515412745.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (87, 75, 'venugd', '', '03456765434', 'jhkjhkk', '', 'jhkj', '', 1, 1, '6756756756', '', '', '', '', 'http://www.google.com', 56.13036600000000, -106.34677099999999, 'Store_1515412878.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (88, 75, 'rtytry', '', '03456765434', 'jhkjhkk', '', 'jhkj', '', 1, 14, '645678877', '', '', '', '', 'http://www.google.com', 23.68499400000000, 90.35633099999995, 'Store_1515414284.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (89, 58, 'ttytrytry_---', '', '6757567', 'gfhh', '', 'ytrytr', '', 1, 14, '5564645664564564', 'yuiuiyuiyuiyui', '', 'uiyui', '', 'http://www.google.com', 13.08268020000000, 80.27071840000008, 'Store_1515417320_455x378.png', 1, '', 2, 'A', 0);
INSERT INTO `nm_store` VALUES (90, 76, 'zxcvzxcv', '', '45454', 'cxvzxcv', '', 'zxcvzxcv', '', 1, 1, '53565', 'xcvzxc', '', 'zxcvzxc', '', 'http://192.168.0.24/laravelecommerce_with_lang/add_merchant', 56.13036600000000, -106.34677099999999, 'Store_1515495765.jpg', 1, '01/09/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (91, 77, 'a-1 chips', '', '09874569856', 'gandhipurams', '', 'Bus stand', '', 1, 1, '640122', 'Chips companys', '', 'We are having more Chips items', '', 'https://www.a1chips.com', 11.22003200000000, 78.16813800000000, 'Store_1515499728.jpg', 1, '01/09/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (92, 78, 'Walmarts', '', '09874569856', 'gandhipuram', '', 'back side,Bus stand', '', 1, 17, '640122', '', '', 'born a fashion', '', 'https://www.google.co.in', 10.79048330000000, 78.70467250000002, 'Store_1515501547.jpg', 1, '01/09/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (93, 78, 'puma store', '', '98658654578', 'hopes college', '', 'covai', '', 1, 1, '637020', 'shoe', '', 'Quality', '', 'https://www.google.co.in', 1.35208300000000, 103.81983600000001, 'Store_1515502955.jpg', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (94, 79, 'Nike', '', '09874569856', 'gandhipuram', '', 'Bus stand', '', 1, 1, '640122', 'test', '', 'test', '', 'https://www.google.co.in', 18.33576499999999, -64.89633500000002, 'Store_1515503848.jpg', 1, '01/09/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (95, 80, 'puma', '', '09874569856', 'gandhipuram', '', 'Bus stand', '', 1, 1, '640122', 'test', '', 'test', '', 'https://www.google.co.in', 8.22288100000000, 81.40385770000000, 'Store_1515505475.jpg', 1, '01/09/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (96, 81, 'gfsdg', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dsfdsf', '', 'dasfdasf', '', 'https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=fdhZWrTdFIWRvASQ2r7YCA', 11.01684450000000, 76.95583209999995, 'Store_1515837751.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (97, 82, 'dsfgdfg', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dsfdasf', '', 'asdfdasf', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515838886.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (98, 83, 'dsfgdfg', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 15, '4641104', 'asdasd', '', 'asdasd', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515839052.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (99, 84, 'ragul gandhi2', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dsfgdsfg', '', 'dfgdfg', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515839908.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (100, 85, 'ragul gandhi3', '', '09994446464', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dfgdsfg', '', 'dsgdsg', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515840018.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (101, 86, 'ragul gandhi4', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dsfdasf', '', 'sdfdasf', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515840868.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (102, 87, 'dfdasf', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'jhgfhj', '', 'fgjhfg', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515841130.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (103, 88, 'ragul gandhi5', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'asdasd', '', 'asdasd', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515843315.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (104, 89, 'werdaesf', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dsfdsf', '', 'sdfdsf', '', 'https://www.google.co.in/search?q=images&dcr=0&biw=1366&bih=662&tbm=isch&source=lnt&tbs=isz:ex,iszw:455,iszh:378#imgrc=6F8A78tDxV_nrM:', 11.01684450000000, 76.95583209999995, 'Store_1515843889.jpg', 1, '01/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (105, 90, 'Smart stores', '', '09874569856', 'vatican city', '', 'Bus stand', '', 14, 12, '640122', 'test', '', 'test', '', 'https://www.google.co.in', 45.34406227982666, 16.21483309179689, 'Store_1516865349.jpg', 1, '01/25/2018', 1, 'A', 1);
INSERT INTO `nm_store` VALUES (106, 89, 'Branch1', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'asdfdasf', '', 'dasfdasf', '', 'https://www.lipsum.com/', 11.02098300000000, 76.96633440000005, 'Store_1516970198.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (107, 89, 'tttttt', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'sdfdsa', '', 'dsfdsf', '', 'https://www.lipsum.com/', 11.28908730000000, 76.94096860000002, 'Store_1516970397.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (108, 89, 'dsafdf', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 1, '642356', 'dsfdasf', '', 'sdfdsf', '', 'https://www.lipsum.com/', 11.24319440000000, 76.96135819999995, 'Store_1516970513.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (109, 89, 'adsfdasf', '', '09944349002', 'coimbatore', '', 'coimbatore', '', 1, 19, '642356', 'sadasd', '', 'asdfdasf', '', 'https://www.lipsum.com/', 13.08268020000000, 80.27071840000008, 'Store_1516970645.png', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (110, 91, 'testss', '', '07418529635', 'ram nagar', '', 'Peelamedu', '', 1, 1, '634601', '', '', '', '', 'https://www.google.com', 9.92520070000000, 78.11977539999998, 'Store_1517903925.jpg', 1, '02/06/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (111, 90, 'Vatican store', '', '9865865421', 'hopes', '', 'peelamedu', '', 1, 1, '637020', '', '', '', '', 'https://www.google.com', 13.08268020000000, 80.27071840000008, 'Store_1517917856_sss.jpg', 1, '', 2, 'A', 0);
INSERT INTO `nm_store` VALUES (112, 92, 'rrrrrrrrrrr', '', '45364545', 'dsafdfa', '', 'sdfadf', '', 1, 1, '5464745', 'dsfa', '', 'sdfa', '', 'https://www.google.co.in', 13.08268020000000, 80.27071840000008, 'Store_1517995432_app.jpg', 1, '02/07/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (113, 91, 'Fun mall', '', '56748785685689', 'dfgfh', '', 'gfhfgh', '', 7, 24, '454356', 'fdhsh', '', 'dgfgsh', '', 'http://www.google.com', 7.98591014355452, 80.73921674804683, '', 1, '02/13/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (114, 92, 'dfsdfa', '', '65745674576', 'fdffsdfa', '', 'sdfad', '', 1, 1, '4565435', '', '', '', '', 'https://www.google.co.in', 35.86166000000001, 104.19539699999996, 'Store_1518690334.jpg', 1, '02/15/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (115, 92, 'sdfas', '', '4532435', 'sdfa', '', 'sdaf', '', 1, 1, '354465', 'sdf', '', 'af', '', 'https://www.google.co.in', 7.85954140000000, 80.63400939999997, 'Store_1518760176.jpg', 0, '', 1, 'B', 0);
INSERT INTO `nm_store` VALUES (116, 93, 'dsfa', '', '45324531534', 'sdfsadf', '', 'sdfas', '', 7, 24, '45353', 'sdf', '', 'sdfa', '', 'https://www.google.co.in', 7.98591014355452, 80.73921674804683, 'Store_1519735349_ca.jpg', 1, '02/27/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (117, 94, 'dsaf', '', '09874569856', 'gandhipuram', '', 'Bus stand', '', 1, 3, '640122', '', '', '', '', 'https://www.google.co.in', 6.92707860000000, 79.86124300000006, 'Store_1519736741.jpg', 1, '02/27/2018', 1, 'A', 1);
INSERT INTO `nm_store` VALUES (118, 93, 'Cadman House', '', '46', 'Deleniti in earum veritatis delectus omnis repudiandae expedita beatae et ut aut', '', 'Ex beatae ipsa inventore culpa reprehenderit voluptatem magna do fugit eveniet corrupti eveniet blanditiis sit qui', '', 1, 1, '40462', 'Quod incididunt assumenda et ullamco deleniti distinctio Saepe', '', 'Alias sapiente est laudantium aute', '', 'http://www.kuk.org.uk', 7.98591014355452, 80.73921674804683, '', 1, '03/01/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (119, 94, 'Chantale Pacheco', '', '1234567', 'Quo vero elit provident hic consequatur Tempora temporibus aperiam consequatur voluptatum aliquip doloremque ea quos quis delectus vel proident', '', 'Dicta officiis obcaecati expedita velit ex aut', '', 1, 1, '27190', 'Ex sit incididunt amet ut officiis esse sit veritatis error magna culpa reprehenderit lorem alias sunt cumque ab', '', 'Animi excepteur facilis corporis culpa dolorem', '', 'http://www.git.us', 8.03758584867377, 80.64171308593745, 'Store_1520426574.png', 1, '03/07/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (120, 95, 'Todd Malone', '', '142986102371', 'Sit libero aliquip velit eaque nemo dolorum ullamco earum consequatur ut aut ducimus esse impedit possimus rerum et nulla', '', 'Exercitationem officiis dolor non aliqua', '', 1, 1, '31464', 'Amet excepteur praesentium ad consectetur inventore sunt nulla quaerat vero aliquip', '', 'Quaerat aut maxime beatae facere anim quia id illum esse eaque quia cillum', '', 'http://www.bik.org.au', 8.01310870085436, 80.74608320312495, 'Store_1523424729.jpg', 1, '03/07/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (121, 95, 'testbramch', '', '01234567890', 'test', '', 'test', '', 1, 1, '312312', '', '', 'test', '', 'http://192.168.0.62/laravelecommerce_ver5.5_theme/', 11.01684450000000, 76.95583209999995, 'Store_1523424582.jpg', 1, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (122, 95, 'branch2', '', '01234567890', 'test', '', 'test', '', 1, 4, '641302', 'test', '', 'tes', '', 'http://192.168.0.62/laravelecommerce_ver5.5_theme/add_store/95', 13.08268020000000, 80.27071840000008, 'Store_1523424823.jpg', 0, '', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (123, 96, 'vstorestesting', '', '8891678989', 'address', '', 'address', '', 1, 1, '622213', 'dfgdsfg', '', 'dsfgdsg', '', 'http://www.carrera.com', 7.98591014355452, 80.73921674804683, '', 1, '04/12/2018', 1, 'A', 0);
INSERT INTO `nm_store` VALUES (124, 41, 'gfdg', '', '4675687686786', 'fgdgfdg', '', 'fdgfd', '', 1, 1, '46546547', 'rfgfh', '', 'fdhhfgjg', '', 'http://mobileapp.shopurfood.com/', 11.01684450000000, 76.95583209999995, 'Store_1523597382_Store_1507891172_618_57.png', 0, '', 2, 'B', 0);
INSERT INTO `nm_store` VALUES (125, 97, 'Bree Humphrey', '', '1234567890', 'Deleniti dolorem incidunt perferendis velit distinctio Reprehenderit cupiditate id cupidatat nulla aute aut cum qui expedita', '', 'Incidunt incidunt expedita aut qui assumenda enim provident veniam nulla placeat ad maxime velit dolor qui veniam eligendi ducimus aperiam', '', 1, 4, '72091', 'Dolore molestias aute velit magna nostrum incididunt voluptate consequat At aut nemo sit optio ratione dolor in maxime', '', 'Sint mollitia sed pariatur Adipisicing reprehenderit', '', 'http://www.ridopybi.biz', 7.98591014355452, 80.73921674804683, '', 0, '04/16/2018', 1, 'A', 0);

-- ----------------------------
-- Table structure for nm_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `nm_subcategory`;
CREATE TABLE `nm_subcategory`  (
  `sb_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sb_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sb_name_fr` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sc_img` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sb_smc_id` smallint(5) UNSIGNED NOT NULL,
  `mc_id` smallint(5) UNSIGNED NOT NULL,
  `sb_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`sb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_subcategory
-- ----------------------------
INSERT INTO `nm_subcategory` VALUES (3, 'T-Shirtt', 'T-Chemise', 'Sub_category_15106434443044.jpg', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (4, 'Formal Shirts', 'Chemises officielles', 'Sub_category_1513604271_200-200.png', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (5, 'Saree\'s', 'Sarees', 'test.jpg', 4, 3, 1);
INSERT INTO `nm_subcategory` VALUES (6, 'Kurtas', 'Kurtas', 'test.jpg', 4, 3, 1);
INSERT INTO `nm_subcategory` VALUES (7, 'Diapers', ' Couches', 'test.jpg', 6, 4, 1);
INSERT INTO `nm_subcategory` VALUES (8, 'Wipes', ' Lingettes', 'test.jpg', 6, 4, 1);
INSERT INTO `nm_subcategory` VALUES (9, 'jeans', 'jeans', 'test.jpg', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (10, 'Tops', 'Tops', 'test.jpg', 7, 3, 1);
INSERT INTO `nm_subcategory` VALUES (13, 'Kids and Baby Footwear', 'Chaussures pour enfants et bébés', 'test.jpg', 6, 4, 1);
INSERT INTO `nm_subcategory` VALUES (15, 'Casual', 'Décontractée', 'test.jpg', 10, 2, 1);
INSERT INTO `nm_subcategory` VALUES (17, 'Casual Watches', 'Montres décontractées', 'test.jpg', 11, 2, 1);
INSERT INTO `nm_subcategory` VALUES (18, 'Tops', 'Tops', 'test.jpg', 6, 4, 1);
INSERT INTO `nm_subcategory` VALUES (19, 'Shrug', 'Hausser les épaules', 'test.jpg', 7, 3, 1);
INSERT INTO `nm_subcategory` VALUES (20, 'Kids Clothing', 'Vêtements pour enfants', 'test.jpg', 12, 4, 1);
INSERT INTO `nm_subcategory` VALUES (21, 'Jeans', 'Jeans', 'test.jpg', 7, 3, 0);
INSERT INTO `nm_subcategory` VALUES (22, 'Skin Care', 'Soin de la peau', 'test.jpg', 6, 4, 1);
INSERT INTO `nm_subcategory` VALUES (23, 'Wooden Furniture', ' Meubles en bois', 'test.jpg', 14, 5, 1);
INSERT INTO `nm_subcategory` VALUES (24, 'Laptops', 'Ordinateurs portables', 'test.jpg', 16, 6, 1);
INSERT INTO `nm_subcategory` VALUES (25, 'Desktops', 'Ordinateurs de bureau', 'test.jpg', 16, 6, 1);
INSERT INTO `nm_subcategory` VALUES (26, 'Full Kit', 'Kit complet', 'test.jpg', 17, 7, 1);
INSERT INTO `nm_subcategory` VALUES (27, 'Separate Equipments', 'Équipements séparés', 'test.jpg', 17, 7, 1);
INSERT INTO `nm_subcategory` VALUES (28, 'Basic Cars', ' Voitures de base', 'test.jpg', 18, 8, 1);
INSERT INTO `nm_subcategory` VALUES (29, 'Sports Car', ' Voiture de sport', 'test.jpg', 18, 8, 1);
INSERT INTO `nm_subcategory` VALUES (30, 'Luxury Car', 'Voiture de luxe', 'test.jpg', 18, 8, 1);
INSERT INTO `nm_subcategory` VALUES (31, 'Historical', 'Historique', 'test.jpg', 20, 9, 1);
INSERT INTO `nm_subcategory` VALUES (32, 'Thriller', 'Thriller', 'test.jpg', 20, 9, 1);
INSERT INTO `nm_subcategory` VALUES (33, 'Comic', 'Bande dessinée', 'test.jpg', 20, 9, 1);
INSERT INTO `nm_subcategory` VALUES (34, 'Basic Bikes', ' Vélos de base', 'test.jpg', 19, 8, 1);
INSERT INTO `nm_subcategory` VALUES (35, 'Sports Bikes', 'Vélos sportifs', 'test.jpg', 19, 8, 1);
INSERT INTO `nm_subcategory` VALUES (36, 'Luxury Bikes', 'Vélos de luxe', 'test.jpg', 19, 8, 1);
INSERT INTO `nm_subcategory` VALUES (37, 'Digital ', 'Numérique', 'test.jpg', 24, 6, 1);
INSERT INTO `nm_subcategory` VALUES (38, 'DSLR', 'DSLR', 'test.jpg', 24, 6, 1);
INSERT INTO `nm_subcategory` VALUES (76, 'Motolora', 'Motolora', 'test.jpg', 48, 6, 1);
INSERT INTO `nm_subcategory` VALUES (77, 'Sarees', 'Sarees', 'sareeWF8I8WW7.jpg', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (78, 'dsfds', '', 'Sup_category_1515130076_T144693858.jpg', 53, 12, 1);
INSERT INTO `nm_subcategory` VALUES (79, 'test Sub cat', '', 'Sup_category_1515130219_T144693858.jpg', 49, 15, 1);
INSERT INTO `nm_subcategory` VALUES (80, 'test Sub cat', '', 'Sup_category_1515130229_T144693858.jpg', 49, 15, 1);
INSERT INTO `nm_subcategory` VALUES (81, 'Cloth', '', 'Sup_category_1516194439_200-200.png', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (82, 'k', '', 'Sup_category_1516198287_200-200.png', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (83, 'T-Shirtd', '', 'Sup_category_1516198411_200-200.png', 2, 2, 1);
INSERT INTO `nm_subcategory` VALUES (84, 'Tops', '', 'Sup_category_1517811492_200x 200.jpg', 4, 3, 1);
INSERT INTO `nm_subcategory` VALUES (85, 'Spray', '', 'Sup_category_1517816998_agri.jpg', 62, 18, 1);
INSERT INTO `nm_subcategory` VALUES (86, 'Parker', '', 'Sup_category_1521193387_Top_category_1511961899_200x200.jpg', 64, 19, 1);

-- ----------------------------
-- Table structure for nm_subscription
-- ----------------------------
DROP TABLE IF EXISTS `nm_subscription`;
CREATE TABLE `nm_subscription`  (
  `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sub_cus_id` int(10) UNSIGNED NOT NULL COMMENT 'customer id',
  `sub_mc_id` smallint(5) UNSIGNED NOT NULL,
  `sub_status` tinyint(4) NOT NULL,
  `sub_readstatus` int(11) NOT NULL DEFAULT 0 COMMENT '-not read 1 read',
  PRIMARY KEY (`sub_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_terms
-- ----------------------------
DROP TABLE IF EXISTS `nm_terms`;
CREATE TABLE `nm_terms`  (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tr_description_fr` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tr_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`tr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_terms
-- ----------------------------
INSERT INTO `nm_terms` VALUES (1, '<b>Introduction</b><br>These terms and conditions govern your use of <a href=\"http://http://www.rapamber.com/\" target=\"\" rel=\"\">http://www.rapamber.com/</a>; by using this website, you accept these terms and conditions in full. If you disagree with these terms and conditions or any part of these terms and conditions, you must not use this website.<br>You must be at least 18 years of age to use this website. By using this website and by agreeing to these terms and conditions you warrant and represent that you are at least 18 years of age.<br>This website uses cookies. By using this website and agreeing to these terms and conditions, you consent to use of cookies in accordance with the terms of <a href=\"http://www.laravelecommerce.com\" target=\"\" rel=\"\">www.laravelecommerce.com</a><br>\r\n             <b>LICENSE TO USE WEBSITE</b><br>Unless otherwise stated, Laravel Ecommerce and/or its licensors own the intellectual property rights in the website and material on the website. Subject to the license below, all these intellectual property rights are reserved.<br>You may view, download for caching purposes only, and print pages [or [OTHER CONTENT]] from the website for your own personal use, subject to the restrictions set out below and elsewhere in these terms and conditions.<br><br>YOU MUST NOT:&nbsp;&nbsp; <br><ul><li>Sell, rent or sub license material from the website;</li><li>Show any material from the website in public;</li><li>Reproduce, duplicate, copy or otherwise exploit material on this website for a commercial purpose;</li><li>Edit or otherwise modify any material on the website;</li><li>Redistribute material from this website.</li></ul><b>ACCEPTABLE USE </b><ul><li>You must not use this website in any way that causes, or may cause, damage to the website or impairment of the availability or accessibility of the website; or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.</li><li>You must not use this website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software.</li><li>You must not conduct any systematic or automated data collection activities (including without limitation scraping, data mining, data extraction and data harvesting) on or in relation to this website without Laravel Ecommerce’s express written consent.</li><li>You must not use this website to transmit or send unsolicited commercial communications.</li><li>You must not use this website for any purposes related to marketing without Laravel Ecommerce’s express written consent.</li></ul><b>RESTRICTED ACCESS </b><br>[Access to certain areas of this website is restricted.] Laravel Ecommerce’s reserves the right to restrict access to [other] areas of this website, or indeed this entire website, at Laravel Ecommerce discretion.<br>If Laravel Ecommerce’s provides you with a user ID and password to enable you to access restricted areas of this website or other content or services, you must ensure that the user ID and password are kept confidential.<br>Laravel Ecommerce’s may disable your user ID and password in Laravel Ecommerce’s sole discretion without notice or explanation.]<br><br><b>USER CONTENT</b> <br>In these terms and conditions, “your user content” means material (including without limitation text, images, audio material, video material and audio-visual material) that you submit to this website, for whatever purpose.<br>You grant to Laravel Ecommerce a worldwide, irrevocable, non-exclusive, royalty-free license to use, reproduce, adapt, publish, translate and distribute your user content in any existing or future media. You also grant to the right to sub-license these rights, and the right to bring an action for infringement of these rights.<br>Your user content must not be illegal or unlawful, must not infringe any third party’s legal rights, and must not be capable of giving rise to legal action whether against you or Laravel Ecommerce or a third party.<br>You must not submit any user content to the website that is or has ever been the subject of any threatened or actual legal proceedings or other similar complaint.<br>Laravel Ecommerce reserves the right to edit or remove any material submitted to this website, or stored on Laravel Ecommerce’s servers, or hosted or published upon this website. <br><br><b>LIMITATIONS OF LIABILITY</b> <br>Laravel Ecommerce will not be liable to you (whether under the law of contact, the law of torts or otherwise) in relation to the contents of, or use of, or otherwise in connection with, this website:<br>For any indirect, special or consequential loss; or For any business losses, loss of revenue, income, profits or anticipated savings, loss of contracts or business relationships, loss of reputation or goodwill, or loss or corruption of information or data.<br>These limitations of liability apply even if Laravel Ecommerce has been expressly advised of the potential loss.<br><br><b>REASONABLENESS</b> <br>By using this website, you agree that the exclusions and limitations of liability set out in this website disclaimer are reasonable.<br>If you do not think they are reasonable, you must not use this website.<br><br><b>UNENFORCEABLE PROVISIONS<br></b>&nbsp;If any provision of this website disclaimer is, or is found to be, unenforceable under applicable law, that will not affect the enforceability of the other provisions of this website disclaimer.<br><br><b>BREACHES OF THESE TERMS AND CONDITIONS<br></b>&nbsp;Without prejudice to Laravel Ecommerce’s other rights under these terms and conditions, if you breach these terms and conditions in any way, Laravel Ecommerce may take such action as Laravel Ecommerce deems appropriate to deal with the breach, including suspending your access to this website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.<br><br><b>VARIATION<br></b>&nbsp;Laravel Ecommerce may revise these terms and conditions from time-to-time. Revised terms and conditions will apply to the use of this website from the date of the publication of the revised terms and conditions on this website. Please check this page regularly to ensure you are familiar with the current version.<br><br><b>ASSIGNMENT<br></b>&nbsp;Laravel Ecommerce may transfer, sub-contract or otherwise deal with Laravel Ecommerce rights and/or obligations under these terms and conditions without notifying you or obtaining your consent.<br>You may not transfer, sub-contract or otherwise deal with your rights and/or obligations under these terms and conditions.<br><br><b>SEVERABILITY<br></b>&nbsp;If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect. If any unlawful and/or unenforceable provision would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.<br><br><b>LAW AND JURISDICTION<br></b>&nbsp;These terms and conditions will be governed by and construed in accordance with Indian law, and any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of Coimbatore.<br><br><br><br>', 'introduction\r\nCes termes et conditions régissent votre utilisation de http://www.rapamber.com/; En utilisant ce site, vous acceptez ces termes et conditions dans leur intégralité. Si vous n\'êtes pas d\'accord avec ces termes et conditions ou une partie de ces termes et conditions, vous ne devez pas utiliser ce site.\r\nVous devez avoir au moins 18 ans pour utiliser ce site. En utilisant ce site et en acceptant ces termes et conditions, vous garantissez et vous déclare que vous avez au moins 18 ans.\r\nCe site utilise des cookies. En utilisant ce site et en acceptant ces termes et conditions, vous consentez à utiliser des cookies conformément aux termes de www.laravelecommerce.com\r\nLICENCE D\'UTILISATION DU SITE WEB\r\nSauf indication contraire, Laravel Ecommerce et / ou ses concédants possèdent les droits de propriété intellectuelle sur le site et le matériel sur le site. Sous réserve de la licence ci-dessous, tous ces droits de propriété intellectuelle sont réservés.\r\nVous pouvez visualiser, télécharger uniquement à des fins de mise en cache et imprimer des pages [ou [AUTRES CONTENUS]] à partir du site Web pour votre propre usage, sous réserve des restrictions énoncées ci-dessous et ailleurs dans ces termes et conditions.', '2017-12-09 17:00:12');

-- ----------------------------
-- Table structure for nm_theme
-- ----------------------------
DROP TABLE IF EXISTS `nm_theme`;
CREATE TABLE `nm_theme`  (
  `the_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `the_Name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`the_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nm_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `nm_wishlist`;
CREATE TABLE `nm_wishlist`  (
  `ws_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ws_pro_id` bigint(20) UNSIGNED NOT NULL,
  `ws_cus_id` bigint(20) UNSIGNED NOT NULL,
  `ws_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`ws_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_wishlist
-- ----------------------------
INSERT INTO `nm_wishlist` VALUES (1, 1, 186, '2017-10-09 20:59:45');
INSERT INTO `nm_wishlist` VALUES (3, 6, 186, '2017-10-16 20:28:53');
INSERT INTO `nm_wishlist` VALUES (6, 3, 186, '2017-10-17 16:19:08');
INSERT INTO `nm_wishlist` VALUES (7, 170, 186, '2018-01-09 19:40:38');
INSERT INTO `nm_wishlist` VALUES (8, 164, 201, '2018-01-16 20:20:23');
INSERT INTO `nm_wishlist` VALUES (10, 180, 250, '2018-01-17 21:01:41');
INSERT INTO `nm_wishlist` VALUES (11, 181, 250, '2018-01-19 19:05:39');
INSERT INTO `nm_wishlist` VALUES (15, 163, 201, '2018-04-13 17:13:41');
INSERT INTO `nm_wishlist` VALUES (16, 47, 201, '2018-04-13 17:25:08');
INSERT INTO `nm_wishlist` VALUES (28, 193, 201, '2018-04-13 18:40:23');
INSERT INTO `nm_wishlist` VALUES (29, 171, 201, '2018-04-13 18:40:30');
INSERT INTO `nm_wishlist` VALUES (33, 196, 201, '2018-04-13 18:43:12');
INSERT INTO `nm_wishlist` VALUES (36, 52, 201, '2018-04-13 18:44:05');
INSERT INTO `nm_wishlist` VALUES (37, 189, 201, '2018-04-13 18:48:29');
INSERT INTO `nm_wishlist` VALUES (38, 138, 201, '2018-04-13 18:48:54');
INSERT INTO `nm_wishlist` VALUES (39, 178, 201, '2018-04-13 18:49:12');
INSERT INTO `nm_wishlist` VALUES (40, 136, 201, '2018-04-13 18:49:21');
INSERT INTO `nm_wishlist` VALUES (41, 140, 201, '2018-04-13 18:49:31');
INSERT INTO `nm_wishlist` VALUES (49, 60, 273, '2018-04-13 19:11:08');
INSERT INTO `nm_wishlist` VALUES (51, 112, 201, '2018-04-13 19:54:56');
INSERT INTO `nm_wishlist` VALUES (53, 181, 201, '2018-04-16 12:18:46');
INSERT INTO `nm_wishlist` VALUES (54, 181, 273, '2018-04-16 15:05:01');
INSERT INTO `nm_wishlist` VALUES (55, 66, 273, '2018-04-16 15:44:49');
INSERT INTO `nm_wishlist` VALUES (60, 72, 273, '2018-04-16 17:36:36');
INSERT INTO `nm_wishlist` VALUES (63, 156, 201, '2018-04-16 17:45:49');
INSERT INTO `nm_wishlist` VALUES (64, 63, 201, '2018-04-16 17:46:24');
INSERT INTO `nm_wishlist` VALUES (65, 72, 201, '2018-04-16 17:46:29');
INSERT INTO `nm_wishlist` VALUES (66, 66, 201, '2018-04-16 17:48:52');
INSERT INTO `nm_wishlist` VALUES (67, 139, 201, '2018-04-16 17:55:24');
INSERT INTO `nm_wishlist` VALUES (68, 178, 213, '2018-05-02 14:56:48');

-- ----------------------------
-- Table structure for nm_withdraw_request
-- ----------------------------
DROP TABLE IF EXISTS `nm_withdraw_request`;
CREATE TABLE `nm_withdraw_request`  (
  `wd_id` int(11) NOT NULL AUTO_INCREMENT,
  `wd_mer_id` int(11) NOT NULL,
  `wd_total_wd_amt` decimal(10, 2) NOT NULL,
  `wd_submited_wd_amt` decimal(10, 2) NOT NULL,
  `wd_status` int(11) NOT NULL COMMENT '1 => paid, 0=> Hold',
  `wd_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`wd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_withdraw_request
-- ----------------------------
INSERT INTO `nm_withdraw_request` VALUES (3, 41, 96682.79, 559.00, 1, '2018-03-21 14:03:24');
INSERT INTO `nm_withdraw_request` VALUES (4, 95, 172.00, 10.00, 1, '2018-03-08 18:38:22');
INSERT INTO `nm_withdraw_request` VALUES (5, 59, 10.00, 3.00, 1, '2018-03-31 15:09:39');

-- ----------------------------
-- Table structure for nm_withdraw_request_paypal
-- ----------------------------
DROP TABLE IF EXISTS `nm_withdraw_request_paypal`;
CREATE TABLE `nm_withdraw_request_paypal`  (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_mer_id` int(11) NOT NULL,
  `wr_mer_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wr_mer_payment_email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wr_paid_amount` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wr_txn_id` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wr_status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wr_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`wr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_withdraw_request_paypal
-- ----------------------------
INSERT INTO `nm_withdraw_request_paypal` VALUES (2, 41, 'Asuganya', 'malarvizhi@pofitec.com', '62.00', '2WN19316W51867640', 'Pending', '2018-03-31 13:42:28');
INSERT INTO `nm_withdraw_request_paypal` VALUES (3, 41, 'Asuganya', 'vinodbabu.89-buyer-1@gmail.com', '7.00', '8VA704656W076994W', 'Pending', '2018-01-17 13:43:31');
INSERT INTO `nm_withdraw_request_paypal` VALUES (4, 41, 'Asuganya', 'suganya.t@pofitec.com', '20.00', 'd82295f3a6624c422fd9', '1', '2018-03-01 15:53:58');
INSERT INTO `nm_withdraw_request_paypal` VALUES (5, 41, 'venugopal', 'venugopal@pofitec.com', '270.00', 'd83d171e7e563139ffdc', '1', '2018-03-01 18:40:35');
INSERT INTO `nm_withdraw_request_paypal` VALUES (6, 95, 'calc3_7_2018', 'vinodbabu.89-buyer-1@gmail.com', '10.00', '3ND01498V90263714', 'Pending', '2018-03-08 18:38:22');
INSERT INTO `nm_withdraw_request_paypal` VALUES (7, 41, 'Asuganya', 'vinodbabu.89-buyer-1@gmail.com', '170.00', '2AL52113X7401572Y', 'Pending', '2018-03-21 13:17:45');
INSERT INTO `nm_withdraw_request_paypal` VALUES (8, 41, 'Asuganya', 'vinodbabu.89-buyer-1@gmail.com', '10.00', '2AV790444L1805102', 'Pending', '2018-03-21 13:44:45');
INSERT INTO `nm_withdraw_request_paypal` VALUES (9, 41, 'Asuganya', 'vinodbabu.89-buyer-1@gmail.com', '10.00', '28P532491K657690B', 'Pending', '2018-03-21 13:51:05');
INSERT INTO `nm_withdraw_request_paypal` VALUES (10, 41, 'Asuganya', 'venugopal-buyer@pofitec.com', '10.00', '7CF79759P51832428', 'Pending', '2018-03-21 14:17:33');
INSERT INTO `nm_withdraw_request_paypal` VALUES (11, 59, 'Preetha', 'venugopal-buyer@pofitec.com', '1.00', '8R7377191P309262L', 'Completed', '2018-03-31 14:38:45');
INSERT INTO `nm_withdraw_request_paypal` VALUES (12, 59, 'Preetha', 'venugopal-buyer@pofitec.com', '2.00', '3AK06831C20693911', 'Completed', '2018-03-31 15:09:39');

SET FOREIGN_KEY_CHECKS = 1;
