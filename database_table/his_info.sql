/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : his_info

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-01 10:54:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acwx_his
-- ----------------------------
DROP TABLE IF EXISTS `acwx_his`;
CREATE TABLE `acwx_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adp_his
-- ----------------------------
DROP TABLE IF EXISTS `adp_his`;
CREATE TABLE `adp_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adrd_his
-- ----------------------------
DROP TABLE IF EXISTS `adrd_his`;
CREATE TABLE `adrd_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adsk_his
-- ----------------------------
DROP TABLE IF EXISTS `adsk_his`;
CREATE TABLE `adsk_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for airt_his
-- ----------------------------
DROP TABLE IF EXISTS `airt_his`;
CREATE TABLE `airt_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for algn_his
-- ----------------------------
DROP TABLE IF EXISTS `algn_his`;
CREATE TABLE `algn_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for alot_his
-- ----------------------------
DROP TABLE IF EXISTS `alot_his`;
CREATE TABLE `alot_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for alqa_his
-- ----------------------------
DROP TABLE IF EXISTS `alqa_his`;
CREATE TABLE `alqa_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for amzn_his
-- ----------------------------
DROP TABLE IF EXISTS `amzn_his`;
CREATE TABLE `amzn_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for arna_his
-- ----------------------------
DROP TABLE IF EXISTS `arna_his`;
CREATE TABLE `arna_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for asrv_his
-- ----------------------------
DROP TABLE IF EXISTS `asrv_his`;
CREATE TABLE `asrv_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for atrm_his
-- ----------------------------
DROP TABLE IF EXISTS `atrm_his`;
CREATE TABLE `atrm_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbep_his
-- ----------------------------
DROP TABLE IF EXISTS `bbep_his`;
CREATE TABLE `bbep_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bdms_his
-- ----------------------------
DROP TABLE IF EXISTS `bdms_his`;
CREATE TABLE `bdms_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bwld_his
-- ----------------------------
DROP TABLE IF EXISTS `bwld_his`;
CREATE TABLE `bwld_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cacc_his
-- ----------------------------
DROP TABLE IF EXISTS `cacc_his`;
CREATE TABLE `cacc_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ca_his
-- ----------------------------
DROP TABLE IF EXISTS `ca_his`;
CREATE TABLE `ca_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cemi_his
-- ----------------------------
DROP TABLE IF EXISTS `cemi_his`;
CREATE TABLE `cemi_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cgnx_his
-- ----------------------------
DROP TABLE IF EXISTS `cgnx_his`;
CREATE TABLE `cgnx_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chxf_his
-- ----------------------------
DROP TABLE IF EXISTS `chxf_his`;
CREATE TABLE `chxf_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for crus_his
-- ----------------------------
DROP TABLE IF EXISTS `crus_his`;
CREATE TABLE `crus_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ctxs_his
-- ----------------------------
DROP TABLE IF EXISTS `ctxs_his`;
CREATE TABLE `ctxs_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cvly_his
-- ----------------------------
DROP TABLE IF EXISTS `cvly_his`;
CREATE TABLE `cvly_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cytr_his
-- ----------------------------
DROP TABLE IF EXISTS `cytr_his`;
CREATE TABLE `cytr_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dspg_his
-- ----------------------------
DROP TABLE IF EXISTS `dspg_his`;
CREATE TABLE `dspg_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dxjs_his
-- ----------------------------
DROP TABLE IF EXISTS `dxjs_his`;
CREATE TABLE `dxjs_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for emcb_his
-- ----------------------------
DROP TABLE IF EXISTS `emcb_his`;
CREATE TABLE `emcb_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for esio_his
-- ----------------------------
DROP TABLE IF EXISTS `esio_his`;
CREATE TABLE `esio_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eslt_his
-- ----------------------------
DROP TABLE IF EXISTS `eslt_his`;
CREATE TABLE `eslt_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ffnm_his
-- ----------------------------
DROP TABLE IF EXISTS `ffnm_his`;
CREATE TABLE `ffnm_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for flxs_his
-- ----------------------------
DROP TABLE IF EXISTS `flxs_his`;
CREATE TABLE `flxs_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goodn_his
-- ----------------------------
DROP TABLE IF EXISTS `goodn_his`;
CREATE TABLE `goodn_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for googl_his
-- ----------------------------
DROP TABLE IF EXISTS `googl_his`;
CREATE TABLE `googl_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for grid_his
-- ----------------------------
DROP TABLE IF EXISTS `grid_his`;
CREATE TABLE `grid_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hbmd_his
-- ----------------------------
DROP TABLE IF EXISTS `hbmd_his`;
CREATE TABLE `hbmd_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hds_his
-- ----------------------------
DROP TABLE IF EXISTS `hds_his`;
CREATE TABLE `hds_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for htch_his
-- ----------------------------
DROP TABLE IF EXISTS `htch_his`;
CREATE TABLE `htch_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hynd_his
-- ----------------------------
DROP TABLE IF EXISTS `hynd_his`;
CREATE TABLE `hynd_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ibkr_his
-- ----------------------------
DROP TABLE IF EXISTS `ibkr_his`;
CREATE TABLE `ibkr_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for inwk_his
-- ----------------------------
DROP TABLE IF EXISTS `inwk_his`;
CREATE TABLE `inwk_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itic_his
-- ----------------------------
DROP TABLE IF EXISTS `itic_his`;
CREATE TABLE `itic_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jack_his
-- ----------------------------
DROP TABLE IF EXISTS `jack_his`;
CREATE TABLE `jack_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jjsf_his
-- ----------------------------
DROP TABLE IF EXISTS `jjsf_his`;
CREATE TABLE `jjsf_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kfrc_his
-- ----------------------------
DROP TABLE IF EXISTS `kfrc_his`;
CREATE TABLE `kfrc_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kone_his
-- ----------------------------
DROP TABLE IF EXISTS `kone_his`;
CREATE TABLE `kone_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for levy_his
-- ----------------------------
DROP TABLE IF EXISTS `levy_his`;
CREATE TABLE `levy_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for locm_his
-- ----------------------------
DROP TABLE IF EXISTS `locm_his`;
CREATE TABLE `locm_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mar_his
-- ----------------------------
DROP TABLE IF EXISTS `mar_his`;
CREATE TABLE `mar_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for matw_his
-- ----------------------------
DROP TABLE IF EXISTS `matw_his`;
CREATE TABLE `matw_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mbii_his
-- ----------------------------
DROP TABLE IF EXISTS `mbii_his`;
CREATE TABLE `mbii_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mbwm_his
-- ----------------------------
DROP TABLE IF EXISTS `mbwm_his`;
CREATE TABLE `mbwm_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mnrk_his
-- ----------------------------
DROP TABLE IF EXISTS `mnrk_his`;
CREATE TABLE `mnrk_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for msex_his
-- ----------------------------
DROP TABLE IF EXISTS `msex_his`;
CREATE TABLE `msex_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for nsit_his
-- ----------------------------
DROP TABLE IF EXISTS `nsit_his`;
CREATE TABLE `nsit_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ofix_his
-- ----------------------------
DROP TABLE IF EXISTS `ofix_his`;
CREATE TABLE `ofix_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oflx_his
-- ----------------------------
DROP TABLE IF EXISTS `oflx_his`;
CREATE TABLE `oflx_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for optt_his
-- ----------------------------
DROP TABLE IF EXISTS `optt_his`;
CREATE TABLE `optt_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for osbc_his
-- ----------------------------
DROP TABLE IF EXISTS `osbc_his`;
CREATE TABLE `osbc_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for osur_his
-- ----------------------------
DROP TABLE IF EXISTS `osur_his`;
CREATE TABLE `osur_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pbip_his
-- ----------------------------
DROP TABLE IF EXISTS `pbip_his`;
CREATE TABLE `pbip_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for prxl_his
-- ----------------------------
DROP TABLE IF EXISTS `prxl_his`;
CREATE TABLE `prxl_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for psec_his
-- ----------------------------
DROP TABLE IF EXISTS `psec_his`;
CREATE TABLE `psec_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for psti_his
-- ----------------------------
DROP TABLE IF EXISTS `psti_his`;
CREATE TABLE `psti_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pulb_his
-- ----------------------------
DROP TABLE IF EXISTS `pulb_his`;
CREATE TABLE `pulb_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qadb_his
-- ----------------------------
DROP TABLE IF EXISTS `qadb_his`;
CREATE TABLE `qadb_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qlik_his
-- ----------------------------
DROP TABLE IF EXISTS `qlik_his`;
CREATE TABLE `qlik_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rcmt_his
-- ----------------------------
DROP TABLE IF EXISTS `rcmt_his`;
CREATE TABLE `rcmt_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rick_his
-- ----------------------------
DROP TABLE IF EXISTS `rick_his`;
CREATE TABLE `rick_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for scon_his
-- ----------------------------
DROP TABLE IF EXISTS `scon_his`;
CREATE TABLE `scon_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sgoc_his
-- ----------------------------
DROP TABLE IF EXISTS `sgoc_his`;
CREATE TABLE `sgoc_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sgypu_his
-- ----------------------------
DROP TABLE IF EXISTS `sgypu_his`;
CREATE TABLE `sgypu_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spil_his
-- ----------------------------
DROP TABLE IF EXISTS `spil_his`;
CREATE TABLE `spil_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for strs_his
-- ----------------------------
DROP TABLE IF EXISTS `strs_his`;
CREATE TABLE `strs_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tlmr_his
-- ----------------------------
DROP TABLE IF EXISTS `tlmr_his`;
CREATE TABLE `tlmr_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tqqq_his
-- ----------------------------
DROP TABLE IF EXISTS `tqqq_his`;
CREATE TABLE `tqqq_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for trns_his
-- ----------------------------
DROP TABLE IF EXISTS `trns_his`;
CREATE TABLE `trns_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for uhal_his
-- ----------------------------
DROP TABLE IF EXISTS `uhal_his`;
CREATE TABLE `uhal_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vidi_his
-- ----------------------------
DROP TABLE IF EXISTS `vidi_his`;
CREATE TABLE `vidi_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wabc_his
-- ----------------------------
DROP TABLE IF EXISTS `wabc_his`;
CREATE TABLE `wabc_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for win_his
-- ----------------------------
DROP TABLE IF EXISTS `win_his`;
CREATE TABLE `win_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wrld_his
-- ----------------------------
DROP TABLE IF EXISTS `wrld_his`;
CREATE TABLE `wrld_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wvfc_his
-- ----------------------------
DROP TABLE IF EXISTS `wvfc_his`;
CREATE TABLE `wvfc_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wwd_his
-- ----------------------------
DROP TABLE IF EXISTS `wwd_his`;
CREATE TABLE `wwd_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xiv_his
-- ----------------------------
DROP TABLE IF EXISTS `xiv_his`;
CREATE TABLE `xiv_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yhoo_his
-- ----------------------------
DROP TABLE IF EXISTS `yhoo_his`;
CREATE TABLE `yhoo_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zu_his
-- ----------------------------
DROP TABLE IF EXISTS `zu_his`;
CREATE TABLE `zu_his` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `open` decimal(6,2) NOT NULL DEFAULT '0.00',
  `high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `low` decimal(6,2) NOT NULL DEFAULT '0.00',
  `close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `volume` decimal(12,0) NOT NULL DEFAULT '0',
  `predict` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_up` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_close` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_margin` decimal(6,2) NOT NULL DEFAULT '0.00',
  `up_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `down_accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `accuracy` decimal(6,2) NOT NULL DEFAULT '0.00',
  `amplitude` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_high` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pre_low` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
