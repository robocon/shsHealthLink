/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-31 09:50:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_encounter
-- ----------------------------
DROP TABLE IF EXISTS `client_encounter`;
CREATE TABLE `client_encounter` (
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_display` varchar(255) DEFAULT NULL,
  `type_code` varchar(255) DEFAULT NULL,
  `type_system` varchar(255) DEFAULT NULL,
  `service_type_display` varchar(255) DEFAULT NULL,
  `service_type_code` varchar(255) DEFAULT NULL,
  `service_type_system` varchar(255) DEFAULT NULL,
  `period_start` datetime NOT NULL,
  `period_end` datetime DEFAULT NULL,
  `reason_display` varchar(255) DEFAULT NULL,
  `reason_code` varchar(255) DEFAULT NULL,
  `reason_system` varchar(255) DEFAULT NULL,
  `service_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `last_update_date_time` datetime NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `patient_cid` (`patient_cid`),
  KEY `reason_code` (`reason_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
