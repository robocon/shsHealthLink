/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-06-04 11:11:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_procedure
-- ----------------------------
DROP TABLE IF EXISTS `client_procedure`;
CREATE TABLE `client_procedure` (
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encounter_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_display` varchar(255) DEFAULT NULL,
  `category_code` varchar(255) DEFAULT NULL,
  `code_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `performed_date_time` datetime NOT NULL,
  `performer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason_display` varchar(255) DEFAULT NULL,
  `reason_code` varchar(255) DEFAULT NULL,
  `reason_system` varchar(255) DEFAULT NULL,
  `body_site_display` varchar(255) DEFAULT NULL,
  `body_site_code` varchar(255) DEFAULT NULL,
  `outcome_display` varchar(255) DEFAULT NULL,
  `outcome_code` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `last_update_date_time` datetime NOT NULL,
  KEY `patient_cid` (`patient_cid`),
  KEY `encounter_id` (`encounter_id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
