/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : user_info

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-01 10:54:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for leon
-- ----------------------------
DROP TABLE IF EXISTS `leon`;
CREATE TABLE `leon` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `stockname` varchar(20) DEFAULT NULL,
  `number_own` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lmz
-- ----------------------------
DROP TABLE IF EXISTS `lmz`;
CREATE TABLE `lmz` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `stockname` varchar(20) DEFAULT NULL,
  `number_own` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `username` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `time` datetime NOT NULL,
  `indx` int(11) NOT NULL,
  PRIMARY KEY (`indx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `balance` decimal(10,0) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
