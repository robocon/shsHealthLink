/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-06-17 16:15:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_vital_signs
-- ----------------------------
DROP TABLE IF EXISTS `client_vital_signs`;
CREATE TABLE `client_vital_signs` (
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encounter_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `effective_date_time` varchar(255) NOT NULL,
  `effective_period_start` varchar(255) DEFAULT NULL,
  `effective_period_end` varchar(255) DEFAULT NULL,
  `performer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_qty` varchar(10) NOT NULL,
  `value_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_code` varchar(255) DEFAULT NULL,
  `value_system` varchar(255) DEFAULT NULL,
  `interpretation_display` varchar(255) DEFAULT NULL,
  `interpretation_code` varchar(255) DEFAULT NULL,
  `reference_range_low` varchar(10) DEFAULT NULL,
  `reference_range_high` varchar(10) DEFAULT NULL,
  `reference_range_text` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL,
  `last_update_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
