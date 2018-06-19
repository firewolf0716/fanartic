/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : stockmanager_db

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 19/06/2018 00:25:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banktype
-- ----------------------------
DROP TABLE IF EXISTS `banktype`;
CREATE TABLE `banktype`  (
  `id` int(11) NOT NULL,
  `bank_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for claims
-- ----------------------------
DROP TABLE IF EXISTS `claims`;
CREATE TABLE `claims`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_closingday` int(11) NULL DEFAULT NULL,
  `claim_client` int(11) NULL DEFAULT NULL,
  `claim_prev` double(255, 5) NULL DEFAULT NULL,
  `claim_input` double(255, 5) NULL DEFAULT NULL,
  `claim_left` double(255, 0) NULL DEFAULT NULL,
  `claim_cost` double(255, 5) NULL DEFAULT NULL,
  `claim_tax` double(255, 5) NULL DEFAULT NULL,
  `claim_total` double(255, 5) NULL DEFAULT NULL,
  `claim_recover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_method` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for collectioncategory
-- ----------------------------
DROP TABLE IF EXISTS `collectioncategory`;
CREATE TABLE `collectioncategory`  (
  `id` int(11) NOT NULL,
  `collection_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for collectionmethod
-- ----------------------------
DROP TABLE IF EXISTS `collectionmethod`;
CREATE TABLE `collectionmethod`  (
  `id` int(11) NOT NULL,
  `collection_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for payhistorys
-- ----------------------------
DROP TABLE IF EXISTS `payhistorys`;
CREATE TABLE `payhistorys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slip_no` int(11) NULL DEFAULT NULL,
  `pay_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `settle_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_7` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_sum` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bill_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bill_number` int(11) NULL DEFAULT NULL,
  `elect_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `elect_number` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `hgroup` int(11) NULL DEFAULT NULL,
  `admin_actual` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pays
-- ----------------------------
DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `settle_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_7` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pay_sum` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bill_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bill_number` int(11) NULL DEFAULT NULL,
  `elect_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `elect_number` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for recoverhistorys
-- ----------------------------
DROP TABLE IF EXISTS `recoverhistorys`;
CREATE TABLE `recoverhistorys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slip_no` int(11) NULL DEFAULT NULL,
  `recover_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `client` int(11) NULL DEFAULT NULL,
  `recover_1` double(11, 3) NULL DEFAULT NULL,
  `recover_2` double(11, 3) NULL DEFAULT NULL,
  `recover_3` double(11, 3) NULL DEFAULT NULL,
  `recover_ext` double(11, 3) NULL DEFAULT NULL,
  `recover_4` double(11, 3) NULL DEFAULT NULL,
  `recover_5` double(11, 3) NULL DEFAULT NULL,
  `recover_6` double(11, 3) NULL DEFAULT NULL,
  `recover_7` double(11, 3) NULL DEFAULT NULL,
  `recover_sum` double(11, 3) NULL DEFAULT NULL,
  `bill_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bill_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `elect_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `elect_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `hgroup` int(11) NULL DEFAULT NULL,
  `admin_actual` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for recovers
-- ----------------------------
DROP TABLE IF EXISTS `recovers`;
CREATE TABLE `recovers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recover_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `client` int(11) NULL DEFAULT NULL,
  `recover_1` double(11, 3) NULL DEFAULT NULL,
  `recover_2` double(11, 3) NULL DEFAULT NULL,
  `recover_3` double(11, 3) NULL DEFAULT NULL,
  `recover_ext` double(11, 3) NULL DEFAULT NULL,
  `recover_4` double(11, 3) NULL DEFAULT NULL,
  `recover_5` double(11, 3) NULL DEFAULT NULL,
  `recover_6` double(11, 3) NULL DEFAULT NULL,
  `recover_7` double(11, 3) NULL DEFAULT NULL,
  `recover_sum` double(11, 3) NULL DEFAULT NULL,
  `bill_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bill_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `elect_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `elect_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for settles
-- ----------------------------
DROP TABLE IF EXISTS `settles`;
CREATE TABLE `settles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settle_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `settle_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `settle_closingday` int(11) NULL DEFAULT NULL,
  `settle_supplier` int(11) NULL DEFAULT NULL,
  `settle_prev` double(11, 2) NULL DEFAULT NULL,
  `settle_input` double(11, 2) NULL DEFAULT NULL,
  `settle_left` double(11, 2) NULL DEFAULT NULL,
  `settle_cost` double(11, 2) NULL DEFAULT NULL,
  `settle_tax` double(11, 2) NULL DEFAULT NULL,
  `settle_total` double(11, 2) NULL DEFAULT NULL,
  `settle_plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `settle_mehtod` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
