/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : user_info

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-04-25 12:39:12
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('lol', 'lolol', '2015-04-25 12:22:00', '1');
INSERT INTO `message` VALUES ('lol', 'earn money', '2015-04-25 12:26:00', '2');

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
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('JCX', 'xie', 'jiachi', 'jc@rutgers.edu', '123');
INSERT INTO `userinfo` VALUES ('leons', 'z', 'leon', 'dsad@hsas.com', '1233');
INSERT INTO `userinfo` VALUES ('lol', 'xie', 'jiachi', '423@qq.com', '12233');
