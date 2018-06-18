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

 Date: 18/06/2018 15:06:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mall_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `mall_brand_match`;
CREATE TABLE `mall_brand_match`  (
  `mall_id` int(11) NOT NULL,
  `brand_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
