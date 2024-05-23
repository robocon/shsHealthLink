/*
Navicat MySQL Data Transfer

Source Server         : HealthLink
Source Server Version : 80017
Source Host           : 192.168.129.74:3306
Source Database       : smdb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2024-05-23 11:11:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_patient
-- ----------------------------
DROP TABLE IF EXISTS `client_patient`;
CREATE TABLE `client_patient` (
  `source_id` varchar(255) NOT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `name_prefix` varchar(255) DEFAULT NULL,
  `name_given` varchar(255) DEFAULT NULL,
  `name_family` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `last_visit_date` date DEFAULT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  UNIQUE KEY `cid` (`cid`) USING BTREE,
  KEY `name_given` (`name_given`),
  KEY `name_family` (`name_family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
