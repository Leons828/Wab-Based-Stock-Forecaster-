/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : cur_info

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-01 10:53:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acwx_cur
-- ----------------------------
DROP TABLE IF EXISTS `acwx_cur`;
CREATE TABLE `acwx_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adp_cur
-- ----------------------------
DROP TABLE IF EXISTS `adp_cur`;
CREATE TABLE `adp_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adrd_cur
-- ----------------------------
DROP TABLE IF EXISTS `adrd_cur`;
CREATE TABLE `adrd_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adsk_cur
-- ----------------------------
DROP TABLE IF EXISTS `adsk_cur`;
CREATE TABLE `adsk_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for airt_cur
-- ----------------------------
DROP TABLE IF EXISTS `airt_cur`;
CREATE TABLE `airt_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for algn_cur
-- ----------------------------
DROP TABLE IF EXISTS `algn_cur`;
CREATE TABLE `algn_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for alot_cur
-- ----------------------------
DROP TABLE IF EXISTS `alot_cur`;
CREATE TABLE `alot_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for alqa_cur
-- ----------------------------
DROP TABLE IF EXISTS `alqa_cur`;
CREATE TABLE `alqa_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for amzn_cur
-- ----------------------------
DROP TABLE IF EXISTS `amzn_cur`;
CREATE TABLE `amzn_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for arna_cur
-- ----------------------------
DROP TABLE IF EXISTS `arna_cur`;
CREATE TABLE `arna_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for asrv_cur
-- ----------------------------
DROP TABLE IF EXISTS `asrv_cur`;
CREATE TABLE `asrv_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for atrm_cur
-- ----------------------------
DROP TABLE IF EXISTS `atrm_cur`;
CREATE TABLE `atrm_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bbep_cur
-- ----------------------------
DROP TABLE IF EXISTS `bbep_cur`;
CREATE TABLE `bbep_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bdms_cur
-- ----------------------------
DROP TABLE IF EXISTS `bdms_cur`;
CREATE TABLE `bdms_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for btui_cur
-- ----------------------------
DROP TABLE IF EXISTS `btui_cur`;
CREATE TABLE `btui_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bwld_cur
-- ----------------------------
DROP TABLE IF EXISTS `bwld_cur`;
CREATE TABLE `bwld_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cacc_cur
-- ----------------------------
DROP TABLE IF EXISTS `cacc_cur`;
CREATE TABLE `cacc_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ca_cur
-- ----------------------------
DROP TABLE IF EXISTS `ca_cur`;
CREATE TABLE `ca_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cemi_cur
-- ----------------------------
DROP TABLE IF EXISTS `cemi_cur`;
CREATE TABLE `cemi_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cgnx_cur
-- ----------------------------
DROP TABLE IF EXISTS `cgnx_cur`;
CREATE TABLE `cgnx_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chxf_cur
-- ----------------------------
DROP TABLE IF EXISTS `chxf_cur`;
CREATE TABLE `chxf_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ckec_cur
-- ----------------------------
DROP TABLE IF EXISTS `ckec_cur`;
CREATE TABLE `ckec_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for clacw_cur
-- ----------------------------
DROP TABLE IF EXISTS `clacw_cur`;
CREATE TABLE `clacw_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cownl_cur
-- ----------------------------
DROP TABLE IF EXISTS `cownl_cur`;
CREATE TABLE `cownl_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for crus_cur
-- ----------------------------
DROP TABLE IF EXISTS `crus_cur`;
CREATE TABLE `crus_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ctxs_cur
-- ----------------------------
DROP TABLE IF EXISTS `ctxs_cur`;
CREATE TABLE `ctxs_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cunb_cur
-- ----------------------------
DROP TABLE IF EXISTS `cunb_cur`;
CREATE TABLE `cunb_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cvly_cur
-- ----------------------------
DROP TABLE IF EXISTS `cvly_cur`;
CREATE TABLE `cvly_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cytr_cur
-- ----------------------------
DROP TABLE IF EXISTS `cytr_cur`;
CREATE TABLE `cytr_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dspg_cur
-- ----------------------------
DROP TABLE IF EXISTS `dspg_cur`;
CREATE TABLE `dspg_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dxjs_cur
-- ----------------------------
DROP TABLE IF EXISTS `dxjs_cur`;
CREATE TABLE `dxjs_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for efoi_cur
-- ----------------------------
DROP TABLE IF EXISTS `efoi_cur`;
CREATE TABLE `efoi_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for emcb_cur
-- ----------------------------
DROP TABLE IF EXISTS `emcb_cur`;
CREATE TABLE `emcb_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for esio_cur
-- ----------------------------
DROP TABLE IF EXISTS `esio_cur`;
CREATE TABLE `esio_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eslt_cur
-- ----------------------------
DROP TABLE IF EXISTS `eslt_cur`;
CREATE TABLE `eslt_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ffnm_cur
-- ----------------------------
DROP TABLE IF EXISTS `ffnm_cur`;
CREATE TABLE `ffnm_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for flxs_cur
-- ----------------------------
DROP TABLE IF EXISTS `flxs_cur`;
CREATE TABLE `flxs_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fpxi_cur
-- ----------------------------
DROP TABLE IF EXISTS `fpxi_cur`;
CREATE TABLE `fpxi_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fwp_cur
-- ----------------------------
DROP TABLE IF EXISTS `fwp_cur`;
CREATE TABLE `fwp_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goodn_cur
-- ----------------------------
DROP TABLE IF EXISTS `goodn_cur`;
CREATE TABLE `goodn_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for googl_cur
-- ----------------------------
DROP TABLE IF EXISTS `googl_cur`;
CREATE TABLE `googl_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for grid_cur
-- ----------------------------
DROP TABLE IF EXISTS `grid_cur`;
CREATE TABLE `grid_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hbmd_cur
-- ----------------------------
DROP TABLE IF EXISTS `hbmd_cur`;
CREATE TABLE `hbmd_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hds_cur
-- ----------------------------
DROP TABLE IF EXISTS `hds_cur`;
CREATE TABLE `hds_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for htch_cur
-- ----------------------------
DROP TABLE IF EXISTS `htch_cur`;
CREATE TABLE `htch_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hynd_cur
-- ----------------------------
DROP TABLE IF EXISTS `hynd_cur`;
CREATE TABLE `hynd_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ibca_cur
-- ----------------------------
DROP TABLE IF EXISTS `ibca_cur`;
CREATE TABLE `ibca_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ibkr_cur
-- ----------------------------
DROP TABLE IF EXISTS `ibkr_cur`;
CREATE TABLE `ibkr_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for inwk_cur
-- ----------------------------
DROP TABLE IF EXISTS `inwk_cur`;
CREATE TABLE `inwk_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itic_cur
-- ----------------------------
DROP TABLE IF EXISTS `itic_cur`;
CREATE TABLE `itic_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jack_cur
-- ----------------------------
DROP TABLE IF EXISTS `jack_cur`;
CREATE TABLE `jack_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jjsf_cur
-- ----------------------------
DROP TABLE IF EXISTS `jjsf_cur`;
CREATE TABLE `jjsf_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kfrc_cur
-- ----------------------------
DROP TABLE IF EXISTS `kfrc_cur`;
CREATE TABLE `kfrc_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kone_cur
-- ----------------------------
DROP TABLE IF EXISTS `kone_cur`;
CREATE TABLE `kone_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for levy_cur
-- ----------------------------
DROP TABLE IF EXISTS `levy_cur`;
CREATE TABLE `levy_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for locm_cur
-- ----------------------------
DROP TABLE IF EXISTS `locm_cur`;
CREATE TABLE `locm_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mar_cur
-- ----------------------------
DROP TABLE IF EXISTS `mar_cur`;
CREATE TABLE `mar_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for matw_cur
-- ----------------------------
DROP TABLE IF EXISTS `matw_cur`;
CREATE TABLE `matw_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mbii_cur
-- ----------------------------
DROP TABLE IF EXISTS `mbii_cur`;
CREATE TABLE `mbii_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mbwm_cur
-- ----------------------------
DROP TABLE IF EXISTS `mbwm_cur`;
CREATE TABLE `mbwm_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mnrk_cur
-- ----------------------------
DROP TABLE IF EXISTS `mnrk_cur`;
CREATE TABLE `mnrk_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for msex_cur
-- ----------------------------
DROP TABLE IF EXISTS `msex_cur`;
CREATE TABLE `msex_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for nsit_cur
-- ----------------------------
DROP TABLE IF EXISTS `nsit_cur`;
CREATE TABLE `nsit_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ofix_cur
-- ----------------------------
DROP TABLE IF EXISTS `ofix_cur`;
CREATE TABLE `ofix_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oflx_cur
-- ----------------------------
DROP TABLE IF EXISTS `oflx_cur`;
CREATE TABLE `oflx_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for optt_cur
-- ----------------------------
DROP TABLE IF EXISTS `optt_cur`;
CREATE TABLE `optt_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for osbc_cur
-- ----------------------------
DROP TABLE IF EXISTS `osbc_cur`;
CREATE TABLE `osbc_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for osur_cur
-- ----------------------------
DROP TABLE IF EXISTS `osur_cur`;
CREATE TABLE `osur_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pbip_cur
-- ----------------------------
DROP TABLE IF EXISTS `pbip_cur`;
CREATE TABLE `pbip_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for prxl_cur
-- ----------------------------
DROP TABLE IF EXISTS `prxl_cur`;
CREATE TABLE `prxl_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for psec_cur
-- ----------------------------
DROP TABLE IF EXISTS `psec_cur`;
CREATE TABLE `psec_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for psti_cur
-- ----------------------------
DROP TABLE IF EXISTS `psti_cur`;
CREATE TABLE `psti_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pulb_cur
-- ----------------------------
DROP TABLE IF EXISTS `pulb_cur`;
CREATE TABLE `pulb_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qadb_cur
-- ----------------------------
DROP TABLE IF EXISTS `qadb_cur`;
CREATE TABLE `qadb_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qlik_cur
-- ----------------------------
DROP TABLE IF EXISTS `qlik_cur`;
CREATE TABLE `qlik_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rcmt_cur
-- ----------------------------
DROP TABLE IF EXISTS `rcmt_cur`;
CREATE TABLE `rcmt_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rick_cur
-- ----------------------------
DROP TABLE IF EXISTS `rick_cur`;
CREATE TABLE `rick_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for roka_cur
-- ----------------------------
DROP TABLE IF EXISTS `roka_cur`;
CREATE TABLE `roka_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for scon_cur
-- ----------------------------
DROP TABLE IF EXISTS `scon_cur`;
CREATE TABLE `scon_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sgnl_cur
-- ----------------------------
DROP TABLE IF EXISTS `sgnl_cur`;
CREATE TABLE `sgnl_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sgoc_cur
-- ----------------------------
DROP TABLE IF EXISTS `sgoc_cur`;
CREATE TABLE `sgoc_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sgypu_cur
-- ----------------------------
DROP TABLE IF EXISTS `sgypu_cur`;
CREATE TABLE `sgypu_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spil_cur
-- ----------------------------
DROP TABLE IF EXISTS `spil_cur`;
CREATE TABLE `spil_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spke_cur
-- ----------------------------
DROP TABLE IF EXISTS `spke_cur`;
CREATE TABLE `spke_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for strs_cur
-- ----------------------------
DROP TABLE IF EXISTS `strs_cur`;
CREATE TABLE `strs_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tlmr_cur
-- ----------------------------
DROP TABLE IF EXISTS `tlmr_cur`;
CREATE TABLE `tlmr_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tqqq_cur
-- ----------------------------
DROP TABLE IF EXISTS `tqqq_cur`;
CREATE TABLE `tqqq_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for trns_cur
-- ----------------------------
DROP TABLE IF EXISTS `trns_cur`;
CREATE TABLE `trns_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for uhal_cur
-- ----------------------------
DROP TABLE IF EXISTS `uhal_cur`;
CREATE TABLE `uhal_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for upld_cur
-- ----------------------------
DROP TABLE IF EXISTS `upld_cur`;
CREATE TABLE `upld_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for va_cur
-- ----------------------------
DROP TABLE IF EXISTS `va_cur`;
CREATE TABLE `va_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vidi_cur
-- ----------------------------
DROP TABLE IF EXISTS `vidi_cur`;
CREATE TABLE `vidi_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wabc_cur
-- ----------------------------
DROP TABLE IF EXISTS `wabc_cur`;
CREATE TABLE `wabc_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for win_cur
-- ----------------------------
DROP TABLE IF EXISTS `win_cur`;
CREATE TABLE `win_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wrld_cur
-- ----------------------------
DROP TABLE IF EXISTS `wrld_cur`;
CREATE TABLE `wrld_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wvfc_cur
-- ----------------------------
DROP TABLE IF EXISTS `wvfc_cur`;
CREATE TABLE `wvfc_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wwd_cur
-- ----------------------------
DROP TABLE IF EXISTS `wwd_cur`;
CREATE TABLE `wwd_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xiv_cur
-- ----------------------------
DROP TABLE IF EXISTS `xiv_cur`;
CREATE TABLE `xiv_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yhoo_cur
-- ----------------------------
DROP TABLE IF EXISTS `yhoo_cur`;
CREATE TABLE `yhoo_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zu_cur
-- ----------------------------
DROP TABLE IF EXISTS `zu_cur`;
CREATE TABLE `zu_cur` (
  `Last_Trade_Time` time DEFAULT NULL,
  `TimeRec` time NOT NULL,
  `Ask` decimal(6,2) DEFAULT NULL,
  `Pervious_Close` decimal(6,2) DEFAULT NULL,
  `open` decimal(6,2) DEFAULT NULL,
  `Days_Low` decimal(6,2) DEFAULT NULL,
  `Days_High` decimal(6,2) DEFAULT NULL,
  `Last_Trade` decimal(6,2) DEFAULT NULL,
  `YearHigh` decimal(6,2) DEFAULT NULL,
  `YearLow` decimal(6,2) DEFAULT NULL,
  `Market_Capitalization` varchar(7) DEFAULT NULL,
  `Shares_Outstanding` decimal(15,0) DEFAULT NULL,
  `Volume` int(15) DEFAULT NULL,
  PRIMARY KEY (`TimeRec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
