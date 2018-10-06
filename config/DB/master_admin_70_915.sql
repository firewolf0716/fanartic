/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : shoppingmoll

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 15/09/2018 15:05:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for master_admin
-- ----------------------------
DROP TABLE IF EXISTS `master_admin`;
CREATE TABLE `master_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_permission` int(255) DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_admin
-- ----------------------------
INSERT INTO `master_admin` VALUES ('1', 'admin', 'admin', '$2y$10$9sNU9.MHIsQZStMVEs5b7eG3GGK72RdmL7ZvZstt0sm4aU7gjV6be', '1', NULL, NULL, NULL, NULL);
INSERT INTO `master_admin` VALUES ('2', 'root', 'root', '$2y$10$9sNU9.MHIsQZStMVEs5b7eG3GGK72RdmL7ZvZstt0sm4aU7gjV6be', '2', 'enR1Lm37riwcHLIezJnUATHN4Q7N2C3leu07pd6OMwlwIHOBIz7Ki5JR6fde', NULL, NULL, NULL);
INSERT INTO `master_admin` VALUES ('3', 'www', 'www@www.com', 'www', '2', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
