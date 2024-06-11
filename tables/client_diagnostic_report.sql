/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-06-11 11:43:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_diagnostic_report
-- ----------------------------
DROP TABLE IF EXISTS `client_diagnostic_report`;
CREATE TABLE `client_diagnostic_report` (
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encounter_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `effective_date_time` varchar(255) NOT NULL,
  `effective_period_start` varchar(255) DEFAULT NULL,
  `effective_period_end` varchar(255) DEFAULT NULL,
  `performer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `results_interpreter` varchar(255) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  `conclusion_display` varchar(255) DEFAULT NULL,
  `conclusion_code` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL,
  `last_update_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
