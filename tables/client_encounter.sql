/*
Navicat MySQL Data Transfer

Source Server         : 127 Localhost
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2024-03-29 12:31:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_encounter
-- ----------------------------
DROP TABLE IF EXISTS `client_encounter`;
CREATE TABLE `client_encounter` (
  `source_id` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `patient_cid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `type_display` varchar(255) DEFAULT NULL,
  `type_code` varchar(255) DEFAULT NULL,
  `type_system` varchar(255) DEFAULT NULL,
  `service_type_display` varchar(255) DEFAULT NULL,
  `service_type_code` varchar(255) DEFAULT NULL,
  `service_type_system` varchar(255) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `reason_display` varchar(255) DEFAULT NULL,
  `reason_code` varchar(255) DEFAULT NULL,
  `reason_system` varchar(255) DEFAULT NULL,
  `service_provider` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `patient_cid` (`patient_cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;