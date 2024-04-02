/*
Navicat MySQL Data Transfer

Source Server         : 127 Localhost
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2024-04-02 09:14:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_condition
-- ----------------------------
DROP TABLE IF EXISTS `client_condition`;
CREATE TABLE `client_condition` (
  `source_id` varchar(255) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `patient_cid` varchar(255) DEFAULT NULL,
  `encounter_id` varchar(255) DEFAULT NULL,
  `clinical_status` varchar(255) DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `severity` varchar(255) DEFAULT NULL,
  `code_display` varchar(255) DEFAULT NULL,
  `code_code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `body_site_display` varchar(255) DEFAULT NULL,
  `body_site_code` varchar(255) DEFAULT NULL,
  `recorded_date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `diagnosis_display` varchar(255) DEFAULT NULL,
  `diagnosis_code` varchar(255) DEFAULT NULL,
  `diagnosis_system` varchar(255) DEFAULT NULL,
  `diagnosis_rank` int(11) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  KEY `id` (`id`),
  KEY `patient_cid` (`patient_cid`),
  KEY `encounter_id` (`encounter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
