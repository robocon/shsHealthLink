/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-31 09:50:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_immunization
-- ----------------------------
DROP TABLE IF EXISTS `client_immunization`;
CREATE TABLE `client_immunization` (
  `source_id` varchar(255) NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encounter_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vaccine_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vaccine_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vaccine_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occurrence_date_time` datetime NOT NULL,
  `performer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL,
  `last_update_date_time` datetime NOT NULL,
  KEY `patient_cid` (`patient_cid`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
