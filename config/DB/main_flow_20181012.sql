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

 Date: 12/10/2018 01:03:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
