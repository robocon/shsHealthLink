/*
Navicat MySQL Data Transfer

Source Server         : 127 Localhost
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2024-03-27 09:29:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_allergyintolerance
-- ----------------------------
DROP TABLE IF EXISTS `client_allergyintolerance`;
CREATE TABLE `client_allergyintolerance` (
  `source_id` varchar(255) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `patient_cid` varchar(255) DEFAULT NULL,
  `encounter_id` varchar(255) DEFAULT NULL,
  `clinical_status` varchar(255) DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `criticality` varchar(255) DEFAULT NULL,
  `code_display` varchar(255) DEFAULT NULL,
  `code_code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `onset_date_time` datetime DEFAULT NULL,
  `recorded_date` datetime DEFAULT NULL,
  `reaction_display` varchar(255) DEFAULT NULL,
  `reaction_code` varchar(255) DEFAULT NULL,
  `reaction_system` varchar(255) DEFAULT NULL,
  `reaction_severity` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `deleted` varchar(255) DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `code_display` (`code_display`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
