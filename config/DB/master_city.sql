/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : shoppingmoll

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 20/06/2018 12:12:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_city
-- ----------------------------
INSERT INTO `master_city` VALUES (1, 1, 'Tokyo', '1', '1', '1');
INSERT INTO `master_city` VALUES (2, 2, 'New York', NULL, NULL, '1');
INSERT INTO `master_city` VALUES (3, 2, 'Los Angles', NULL, NULL, '1');

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
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_state
-- ----------------------------
INSERT INTO `master_state` VALUES (1, 'JP', 'Japan', '¥', 'JPY');
INSERT INTO `master_state` VALUES (2, 'USA', 'United States of America', '$', 'USD');

SET FOREIGN_KEY_CHECKS = 1;
