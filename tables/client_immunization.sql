/*
Navicat MySQL Data Transfer

Source Server         : 127 Localhost
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2024-03-27 13:58:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_immunization
-- ----------------------------
DROP TABLE IF EXISTS `client_immunization`;
CREATE TABLE `client_immunization` (
  `source_id` varchar(255) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `patient_cid` varchar(255) DEFAULT NULL,
  `encounter_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vaccine_display` varchar(255) DEFAULT NULL,
  `vaccine_code` varchar(255) DEFAULT NULL,
  `vaccine_system` varchar(255) DEFAULT NULL,
  `occurrence_date_time` datetime DEFAULT NULL,
  `performer` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `patient_cid` (`patient_cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
