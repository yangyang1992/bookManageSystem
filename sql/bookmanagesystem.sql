/*
Navicat MySQL Data Transfer

Source Server         : asd
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : bookmanagesystem

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2015-01-01 16:06:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', '企业1', '1', '启用', '2014-05-28');

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('1', 'ROLE_USER', '用户', '1');
INSERT INTO `authority` VALUES ('2', 'ROLE_ADMIN', '管理员', '1');
INSERT INTO `authority` VALUES ('3', 'ROLE_ANONYMOUS', '游客', '1');

-- ----------------------------
-- Table structure for `authority_power`
-- ----------------------------
DROP TABLE IF EXISTS `authority_power`;
CREATE TABLE `authority_power` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorityId` bigint(20) DEFAULT NULL,
  `powerId` bigint(20) DEFAULT NULL,
  `powerResource` varchar(255) DEFAULT NULL,
  `authorityName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority_power
-- ----------------------------
INSERT INTO `authority_power` VALUES ('1', '1', '1', '/rs/**', 'ROLE_USER');
INSERT INTO `authority_power` VALUES ('2', '1', '4', '/index.jsp', 'ROLE_USER');
INSERT INTO `authority_power` VALUES ('4', '2', '1', '/rs/**', 'ROLE_ADMIN');
INSERT INTO `authority_power` VALUES ('5', '2', '2', '/user.html', 'ROLE_ADMIN');
INSERT INTO `authority_power` VALUES ('6', '2', '3', '/admin.html', 'ROLE_ADMIN');
INSERT INTO `authority_power` VALUES ('7', '2', '4', '/index.jsp', 'ROLE_ADMIN');
INSERT INTO `authority_power` VALUES ('8', '2', '15', 'cas/**', 'ROLE_ADMIN');
INSERT INTO `authority_power` VALUES ('9', '3', '5', '/rs/anonymous/**', 'ROLE_ANONYMOUS');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefixId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `storehouseId` bigint(20) DEFAULT NULL,
  `rentStatus` varchar(20) DEFAULT NULL,
  `bookTypeId` bigint(20) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for `bookrecord`
-- ----------------------------
DROP TABLE IF EXISTS `bookrecord`;
CREATE TABLE `bookrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `prefixId` bigint(20) DEFAULT NULL,
  `bookId` bigint(20) DEFAULT NULL,
  `bookNumber` varchar(255) DEFAULT NULL,
  `optionTypeId` bigint(20) DEFAULT NULL,
  `recordTime` date DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `booktype`
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booktype
-- ----------------------------

-- ----------------------------
-- Table structure for `optiontype`
-- ----------------------------
DROP TABLE IF EXISTS `optiontype`;
CREATE TABLE `optiontype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optiontype
-- ----------------------------
INSERT INTO `optiontype` VALUES ('2', '送误杀', '搜索', '1');

-- ----------------------------
-- Table structure for `power`
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES ('1', '/rs/**', 'resource', '所有rest服务');
INSERT INTO `power` VALUES ('2', '/user.html', 'url', null);
INSERT INTO `power` VALUES ('3', '/admin.html', 'url', null);
INSERT INTO `power` VALUES ('4', '/index.jsp', 'url', null);
INSERT INTO `power` VALUES ('5', '/rs/anonymous/**', 'resource', '匿名rest服务');
INSERT INTO `power` VALUES ('15', 'cas/**', 'service', 'cas client test from android');

-- ----------------------------
-- Table structure for `prefix`
-- ----------------------------
DROP TABLE IF EXISTS `prefix`;
CREATE TABLE `prefix` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cip` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `pressName` varchar(255) DEFAULT NULL,
  `pressLocation` varchar(255) DEFAULT NULL,
  `pressTime` date DEFAULT NULL,
  `appId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prefix
-- ----------------------------
INSERT INTO `prefix` VALUES ('1', '13', '223', '3', '4', '5', '2014-12-03', '1');

-- ----------------------------
-- Table structure for `reader`
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('1', '22', '123我', '233', '11', '2014-12-02', '1');
INSERT INTO `reader` VALUES ('2', '123', '111', '123', '123', '2014-12-02', '1');
INSERT INTO `reader` VALUES ('3', '33', '11', '23', '123', '2014-12-02', '1');

-- ----------------------------
-- Table structure for `readerrecord`
-- ----------------------------
DROP TABLE IF EXISTS `readerrecord`;
CREATE TABLE `readerrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `readerId` bigint(20) DEFAULT NULL,
  `bookSet` varchar(255) DEFAULT NULL,
  `optionTypeId` bigint(20) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of readerrecord
-- ----------------------------
INSERT INTO `readerrecord` VALUES ('1', '12', '1;3;4;5', '2', '2015-01-01', '1');

-- ----------------------------
-- Table structure for `reader_booktype`
-- ----------------------------
DROP TABLE IF EXISTS `reader_booktype`;
CREATE TABLE `reader_booktype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `readerId` bigint(20) DEFAULT NULL,
  `bookTypeId` bigint(20) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader_booktype
-- ----------------------------

-- ----------------------------
-- Table structure for `storehouse`
-- ----------------------------
DROP TABLE IF EXISTS `storehouse`;
CREATE TABLE `storehouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `telNumber` varchar(255) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storehouse
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `appId` bigint(20) DEFAULT '1',
  `status` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiaozhujun', 'e10adc3949ba59abbe56e057f20f883e', '男', 'ROLE_USER;ROLE_ADMIN;ROLE_ANONYMOUS', '1', '启用', null);
INSERT INTO `user` VALUES ('2', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '男', 'ROLE_USER;ROLE_ANONYMOUS', '1', '启用', null);
INSERT INTO `user` VALUES ('3', 'sunhui', 'e68fa2bc61b75b8a06766e25905052c7', '男', 'ROLE_USER', '1', '启用', null);
INSERT INTO `user` VALUES ('4', 'liujinxia', 'c99c1cbefe13019978d90cb442cb8f78', '女', 'ROLE_ADMIN', '1', '启用', null);

-- ----------------------------
-- Table structure for `user_authority`
-- ----------------------------
DROP TABLE IF EXISTS `user_authority`;
CREATE TABLE `user_authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `authorityId` bigint(20) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `authorityName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_authority
-- ----------------------------
INSERT INTO `user_authority` VALUES ('1', '1', '1', 'xiaozhujun', 'ROLE_USER');
INSERT INTO `user_authority` VALUES ('2', '1', '2', 'xiaozhujun', 'ROLE_ADMIN');
INSERT INTO `user_authority` VALUES ('3', '1', '3', 'xiaozhujun', 'ROLE_ANONYMOUS');
INSERT INTO `user_authority` VALUES ('4', '2', '3', 'zhangsan', 'ROLE_ANONYMOUS');
INSERT INTO `user_authority` VALUES ('5', '2', '1', 'zhangsan', 'ROLE_USER');
INSERT INTO `user_authority` VALUES ('6', '3', '1', 'sunhui', 'ROLE_USER');
INSERT INTO `user_authority` VALUES ('7', '4', '2', 'liujinxia', 'ROLE_ADMIN');
