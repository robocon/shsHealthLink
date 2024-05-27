/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-27 14:31:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_procedure
-- ----------------------------
DROP TABLE IF EXISTS `client_procedure`;
CREATE TABLE `client_procedure` (
  `source_id` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `patient_cid` varchar(255) DEFAULT NULL,
  `encounter_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category_display` varchar(255) DEFAULT NULL,
  `category_code` varchar(255) DEFAULT NULL,
  `code_display` varchar(255) DEFAULT NULL,
  `code_code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `performed_date_time` datetime DEFAULT NULL,
  `performer` varchar(255) DEFAULT NULL,
  `reason_display` varchar(255) DEFAULT NULL,
  `reason_code` varchar(255) DEFAULT NULL,
  `reason_system` varchar(255) DEFAULT NULL,
  `body_site_display` varchar(255) DEFAULT NULL,
  `body_site_code` varchar(255) DEFAULT NULL,
  `outcome_display` varchar(255) DEFAULT NULL,
  `outcome_code` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `note_date_time` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  KEY `patient_cid` (`patient_cid`),
  KEY `encounter_id` (`encounter_id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
