/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-31 09:50:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_condition
-- ----------------------------
DROP TABLE IF EXISTS `client_condition`;
CREATE TABLE `client_condition` (
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encounter_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clinical_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verification_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `severity` varchar(255) DEFAULT NULL,
  `code_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `body_site_display` varchar(255) DEFAULT NULL,
  `body_site_code` varchar(255) DEFAULT NULL,
  `recorded_date` datetime NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `diagnosis_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `diagnosis_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `diagnosis_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `diagnosis_rank` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `last_update_date_time` datetime NOT NULL,
  KEY `id` (`id`),
  KEY `patient_cid` (`patient_cid`),
  KEY `encounter_id` (`encounter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
