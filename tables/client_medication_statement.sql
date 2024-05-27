/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-27 16:06:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_medication_statement
-- ----------------------------
DROP TABLE IF EXISTS `client_medication_statement`;
CREATE TABLE `client_medication_statement` (
  `source_id` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `patient_cid` varchar(255) DEFAULT NULL,
  `encounter_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `extension_string` varchar(255) DEFAULT NULL,
  `extension_drug_strength` varchar(255) DEFAULT NULL,
  `extension_drug_qty` decimal(10,0) DEFAULT NULL,
  `extension_drug_unit` varchar(255) DEFAULT NULL,
  `medication_display` varchar(255) DEFAULT NULL,
  `medication_code` varchar(255) DEFAULT NULL,
  `medication_system` varchar(255) DEFAULT NULL,
  `effective_date_time` datetime DEFAULT NULL,
  `effective_period_start` datetime DEFAULT NULL,
  `effective_period_end` datetime DEFAULT NULL,
  `information_source` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `dosage_text` varchar(255) DEFAULT NULL,
  `dosage_timing_frequency` varchar(255) DEFAULT NULL,
  `dosage_timing_period` decimal(10,0) DEFAULT NULL,
  `dosage_timing_unit` varchar(255) DEFAULT NULL,
  `dosage_qty` decimal(10,0) DEFAULT NULL,
  `dosage_unit` varchar(255) DEFAULT NULL,
  `dosage_as_needed_boolean` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
