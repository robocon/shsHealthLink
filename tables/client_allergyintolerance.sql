/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-31 09:50:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_allergyintolerance
-- ----------------------------
DROP TABLE IF EXISTS `client_allergyintolerance`;
CREATE TABLE `client_allergyintolerance` (
  `source_id` varchar(255) NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encounter_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clinical_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verification_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `criticality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `onset_date_time` datetime DEFAULT NULL,
  `recorded_date` datetime NOT NULL,
  `reaction_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reaction_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reaction_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reaction_severity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `last_update_date_time` datetime NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `code_display` (`code_display`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
