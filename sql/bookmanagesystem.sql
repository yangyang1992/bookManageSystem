/*
Navicat MySQL Data Transfer

Source Server         : rct
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : bookmanagesystem

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2015-01-02 19:42:55
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
INSERT INTO `authority_power` VALUES ('10', '3', '5', '/rs/anonymousUser/**', 'ROLE_ANONYMOUS');

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
  `count` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rentNumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1', '自然辨证法', '0001', null, null, '7', '1', '6', null, '3');
INSERT INTO `book` VALUES ('2', '2', '计算机网络', '0002', null, null, '2', '1', '32', null, '9');
INSERT INTO `book` VALUES ('3', '3', '软件工程', '0003', null, null, '2', '1', '45', null, '3');
INSERT INTO `book` VALUES ('4', '4', '历史', '0004', null, null, '6', '1', '12', null, '1');
INSERT INTO `book` VALUES ('5', '5', '西方哲学史', '0005', null, null, '7', '1', '23', null, '3');
INSERT INTO `book` VALUES ('6', '6', '巴黎圣母院', '0006', null, null, '4', '1', '78', null, '6');
INSERT INTO `book` VALUES ('7', '7', '生活宝典', '0007', null, null, '5', '1', '43', null, '7');
INSERT INTO `book` VALUES ('8', '8', '心理学', '0008', null, null, '8', '1', '14', null, '2');
INSERT INTO `book` VALUES ('9', '9', '刑法', '0009', null, null, '1', '1', '25', null, '4');
INSERT INTO `book` VALUES ('10', '10', 'IT生活', '0010', null, null, '5', '1', '23', null, '5');
INSERT INTO `book` VALUES ('11', '11', '法律行为', '0011', null, '', '1', '1', '23', '', '2');
INSERT INTO `book` VALUES ('12', '12', '法律的基础', '0012', null, null, '1', '1', '23', 'bookImage/law.jpg', '3');
INSERT INTO `book` VALUES ('13', '13', '法律的生长', '0013', null, null, '1', '1', '55', null, '12');
INSERT INTO `book` VALUES ('14', '14', '法律功能论', '0014', null, null, '1', '1', '25', null, '4');
INSERT INTO `book` VALUES ('15', '15', '美国法律史', '0015', null, null, '1', '1', '58', null, '7');
INSERT INTO `book` VALUES ('16', '16', '法律与文学', '0016', null, null, '1', '1', '65', null, '3');
INSERT INTO `book` VALUES ('17', '17', '论法律', '0017', null, null, '1', '1', '96', null, '2');
INSERT INTO `book` VALUES ('18', '18', '法律篇', '0018', null, null, '1', '1', '54', null, '3');
INSERT INTO `book` VALUES ('19', '19', '法律的界限', '0019', null, null, '1', '1', '85', null, '2');
INSERT INTO `book` VALUES ('20', '20', '法律方法', '0020', null, null, '1', '1', '55', null, '1');
INSERT INTO `book` VALUES ('21', '21', '社会的法律', '0021', null, null, '1', '1', '88', null, '2');
INSERT INTO `book` VALUES ('22', '22', '法律与分歧', '0022', null, null, '1', '1', '55', null, '2');
INSERT INTO `book` VALUES ('23', '23', '法律的异邦', '0023', null, null, '1', '1', '88', null, '6');
INSERT INTO `book` VALUES ('24', '24', '法律基础', '0024', null, null, '1', '1', '65', null, '45');
INSERT INTO `book` VALUES ('25', '25', '走过法律', '0025', null, null, '1', '1', '75', null, '65');
INSERT INTO `book` VALUES ('26', '26', '中国法律', '0026', null, null, '1', '1', '65', null, '22');
INSERT INTO `book` VALUES ('27', '27', '法律与社会', '0027', null, null, '1', '1', '99', null, '45');
INSERT INTO `book` VALUES ('28', '28', '法律事务', '0028', null, null, '1', '1', '54', null, '22');
INSERT INTO `book` VALUES ('29', '29', '法律史解释', '0029', null, null, '1', '1', '66', null, '25');
INSERT INTO `book` VALUES ('30', '30', '法律导引', '0030', null, null, '1', '1', '99', null, '22');
INSERT INTO `book` VALUES ('31', '31', '法律小词典', '0031', null, null, '1', '1', '666', null, '225');
INSERT INTO `book` VALUES ('32', '32', '计算机导论', '0032', null, null, '2', '1', '55', 'bookImage/computer.jpg', '2');
INSERT INTO `book` VALUES ('33', '33', '计算机网络', '0033', null, null, '2', '1', '888', null, '22');
INSERT INTO `book` VALUES ('34', '34', '计算机网络', '0034', null, null, '2', '1', '654', null, '222');
INSERT INTO `book` VALUES ('35', '35', '计算机网络', '0035', null, null, '2', '1', '665', null, '22');
INSERT INTO `book` VALUES ('36', '36', '计算机绘图', '0036', null, null, '2', '1', '848', null, '221');
INSERT INTO `book` VALUES ('37', '37', '计算机导论', '0037', null, null, '2', '1', '884', null, '225');
INSERT INTO `book` VALUES ('38', '38', '计算机网络', '0038', null, null, '2', '1', '541', null, '232');
INSERT INTO `book` VALUES ('39', '39', '计算机导论', '0039', null, null, '2', '1', '999', null, '445');
INSERT INTO `book` VALUES ('40', '40', '计算机英语', '0040', null, null, '2', '1', '546', null, '222');
INSERT INTO `book` VALUES ('41', '41', '计算机网络', '0041', null, null, '2', '1', '884', null, '225');
INSERT INTO `book` VALUES ('42', '42', '计算机仿真', '0042', null, null, '2', '1', '545', null, '222');
INSERT INTO `book` VALUES ('43', '43', '计算机联锁', '0043', null, null, '2', '1', '464', null, '222');
INSERT INTO `book` VALUES ('44', '44', '计算机绘图', '0044', null, null, '2', '1', '886', null, '222');
INSERT INTO `book` VALUES ('45', '45', '计算机数学', '0045', null, null, '2', '1', '99', null, '52');
INSERT INTO `book` VALUES ('46', '46', '计算机导论', '0046', null, null, '2', '1', '665', null, '232');
INSERT INTO `book` VALUES ('47', '47', '计算机文化', '0047', null, null, '2', '1', '656', null, '222');
INSERT INTO `book` VALUES ('48', '48', '计算机仿真', '0048', null, null, '2', '1', '666', null, '555');
INSERT INTO `book` VALUES ('49', '49', '计算机网络', '0049', null, null, '2', '1', '999', null, '141');
INSERT INTO `book` VALUES ('50', '50', '计算机原理', '0050', null, null, '2', '1', '656', null, '222');
INSERT INTO `book` VALUES ('51', '51', '计算机工程', '0051', null, null, '2', '1', '999', null, '546');
INSERT INTO `book` VALUES ('52', '52', '计算机网络', '0052', null, null, '2', '1', '686', null, '454');
INSERT INTO `book` VALUES ('53', '53', '医学史', '0053', null, null, '3', '1', '565', 'bookImage/medical.jpg', '222');
INSERT INTO `book` VALUES ('54', '54', '医学遗传学', '0054', null, null, '3', '1', '646', null, '555');
INSERT INTO `book` VALUES ('55', '55', '医学营养学', '0055', null, null, '3', '1', '888', null, '555');
INSERT INTO `book` VALUES ('56', '56', '医学史', '0056', null, null, '3', '1', '656', null, '55');
INSERT INTO `book` VALUES ('57', '57', '中医学', '0057', null, null, '3', '1', '555', null, '325');
INSERT INTO `book` VALUES ('58', '58', '医学伦理学', '0058', null, null, '3', '1', '656', null, '22');
INSERT INTO `book` VALUES ('59', '59', '医学法学', '0059', null, null, '3', '1', '666', null, '22');
INSERT INTO `book` VALUES ('60', '60', '医学伦理学', '0060', null, null, '3', '1', '646', null, '232');
INSERT INTO `book` VALUES ('61', '61', '康复医学', '0061', null, null, '3', '1', '361', null, '22');
INSERT INTO `book` VALUES ('62', '62', '中医学', '0062', null, null, '3', '1', '656', null, '22');
INSERT INTO `book` VALUES ('63', '63', '医学哲学杂谈', '0063', null, null, '3', '1', '656', null, '555');
INSERT INTO `book` VALUES ('64', '64', '医学伦理学', '0064', null, null, '3', '1', '666', null, '22');
INSERT INTO `book` VALUES ('65', '65', '法医学', '0065', null, null, '3', '1', '636', null, '22');
INSERT INTO `book` VALUES ('66', '66', '预防医学', '0066', null, null, '3', '1', '333', null, '22');
INSERT INTO `book` VALUES ('67', '67', '医学生理学', '0067', null, null, '3', '1', '66', null, '22');
INSERT INTO `book` VALUES ('68', '68', '医学生理学', '0068', null, null, '3', '1', '65', null, '2');
INSERT INTO `book` VALUES ('69', '69', '西医学概论', '0069', null, null, '3', '1', '6', null, '1');
INSERT INTO `book` VALUES ('70', '70', '纳米医学', '0070', null, null, '3', '1', '36', null, '2');
INSERT INTO `book` VALUES ('71', '71', '核医学', '0071', null, null, '3', '1', '23', null, '2');
INSERT INTO `book` VALUES ('72', '72', '医学伦理学', '0072', null, null, '3', '1', '23', null, '2');
INSERT INTO `book` VALUES ('73', '73', '法医学', '0073', null, null, '3', '1', '23', null, '2');
INSERT INTO `book` VALUES ('74', '74', '文学', '0074', null, null, '4', '1', '22', 'bookImage/literature.jpg', '2');
INSERT INTO `book` VALUES ('75', '75', '文学', '0075', null, null, '4', '1', '32', null, '2');
INSERT INTO `book` VALUES ('76', '76', '谈文学', '0076', null, null, '4', '1', '655', null, '22');
INSERT INTO `book` VALUES ('77', '77', '文学家', '0077', null, null, '4', '1', '33', null, '22');
INSERT INTO `book` VALUES ('78', '78', '希腊文学罗马文学', '0078', null, null, '4', '1', '35', null, '2');
INSERT INTO `book` VALUES ('79', '79', '中国文学通论', '0079', null, null, '4', '1', '55', null, '2');
INSERT INTO `book` VALUES ('80', '80', '中国新文学大系', '0080', null, null, '4', '1', '54', null, '2');
INSERT INTO `book` VALUES ('81', '81', '两汉文献与两汉文学', '0081', null, null, '4', '1', '55', null, '1');
INSERT INTO `book` VALUES ('82', '82', '谈文学', '0082', null, null, '4', '1', '54', null, '36');
INSERT INTO `book` VALUES ('83', '83', '种源文学', '0083', null, null, '4', '1', '232', null, '3');
INSERT INTO `book` VALUES ('84', '84', '水文学', '0084', null, null, '4', '1', '22', null, '3');
INSERT INTO `book` VALUES ('85', '85', '水文学', '0085', null, null, '4', '1', '1', null, '0');
INSERT INTO `book` VALUES ('86', '86', '水文学', '0086', null, null, '4', '1', '56', null, '2');
INSERT INTO `book` VALUES ('87', '87', '文学：批判与审美', '0087', null, null, '4', '1', '22', null, '3');
INSERT INTO `book` VALUES ('88', '88', '法国文学理论与实践', '0088', null, null, '4', '1', '23', null, '2');
INSERT INTO `book` VALUES ('89', '89', '中国古代文学作品选', '0089', null, null, '4', '1', '22', null, '1');
INSERT INTO `book` VALUES ('90', '90', '水文学', '0090', null, null, '4', '1', '65', null, '0');
INSERT INTO `book` VALUES ('91', '91', '文学史与文学史学', '0091', null, null, '4', '1', '65', null, '2');
INSERT INTO `book` VALUES ('92', '92', '文学', '0092', null, null, '4', '1', '65', null, '2');
INSERT INTO `book` VALUES ('93', '93', '水文学', '0093', null, null, '4', '1', '3', null, '1');
INSERT INTO `book` VALUES ('94', '94', '文学', '0094', null, null, '4', '1', '2', null, '1');
INSERT INTO `book` VALUES ('95', '95', '简单生活', '0095', null, null, '5', '1', '555', 'bookImage/life.jpg', '63');
INSERT INTO `book` VALUES ('96', '96', 'IT生活', '0096', null, null, '5', '1', '656', null, '22');
INSERT INTO `book` VALUES ('97', '97', '都市生活', '0097', null, null, '5', '1', '54', null, '2');
INSERT INTO `book` VALUES ('98', '98', '生活原型录', '0098', null, null, '5', '1', '652', null, '23');
INSERT INTO `book` VALUES ('99', '99', '生活的意义', '0099', null, null, '5', '1', '656', null, '22');
INSERT INTO `book` VALUES ('100', '100', '乐生活', '0100', null, null, '5', '1', '221', null, '21');
INSERT INTO `book` VALUES ('101', '101', '心理与生活', '101', null, null, '5', '1', '323', null, '152');
INSERT INTO `book` VALUES ('102', '102', '论可能生活', '0102', null, null, '5', '1', '220', null, '32');
INSERT INTO `book` VALUES ('103', '103', '科学与生活', '0103', null, null, '5', '1', '322', null, '21');
INSERT INTO `book` VALUES ('104', '104', '低碳生活', '0104', null, null, '5', '1', '320', null, '21');
INSERT INTO `book` VALUES ('105', '105', '慢生活', '0105', null, null, '5', '1', '31', null, '16');
INSERT INTO `book` VALUES ('106', '106', '简生活', '0106', null, null, '5', '1', '325', null, '22');
INSERT INTO `book` VALUES ('107', '107', '心生活', '0107', null, null, '5', '1', '213', null, '62');
INSERT INTO `book` VALUES ('108', '108', '俭生活', '0108', null, null, '5', '1', '321', null, '55');
INSERT INTO `book` VALUES ('109', '109', '悦读生活', '0109', null, null, '5', '1', '221', null, '5');
INSERT INTO `book` VALUES ('110', '110', '道德与生活', '0110', null, null, '5', '1', '225', null, '22');
INSERT INTO `book` VALUES ('111', '111', '化学与生活', '0111', null, null, '5', '1', '212', null, '44');
INSERT INTO `book` VALUES ('112', '112', '古罗马生活', '0112', null, null, '5', '1', '221', null, '22');
INSERT INTO `book` VALUES ('113', '113', '伪生活', '0113', null, null, '5', '1', '211', null, '55');
INSERT INTO `book` VALUES ('114', '114', '慢生活', '0114', null, null, '5', '1', '345', null, '21');
INSERT INTO `book` VALUES ('115', '115', '生活哲学', '0115', null, null, '5', '1', '122', null, '11');
INSERT INTO `book` VALUES ('116', '116', '历史', '0116', null, null, '6', '1', '211', 'bookImage/history.jpg', '22');
INSERT INTO `book` VALUES ('117', '117', '管理的历史', '0117', null, null, '6', '1', '55', null, '6');
INSERT INTO `book` VALUES ('118', '118', '武器的历史', '0118', null, null, '6', '1', '315', null, '11');
INSERT INTO `book` VALUES ('119', '119', '论历史', '0119', null, null, '6', '1', '541', null, '121');
INSERT INTO `book` VALUES ('120', '120', '中国大历史', '0120', null, null, '6', '1', '225', null, '11');
INSERT INTO `book` VALUES ('121', '121', '艺术的历史', '0121', null, null, '6', '1', '225', null, '22');
INSERT INTO `book` VALUES ('122', '122', '历史是什么', '0122', null, null, '6', '1', '11', null, '1');
INSERT INTO `book` VALUES ('123', '123', '论历史', '0123', null, null, '6', '1', '112', null, '22');
INSERT INTO `book` VALUES ('124', '124', '阅读的历史', '0124', null, null, '6', '1', '223', null, '22');
INSERT INTO `book` VALUES ('125', '125', '历史江湖', '0125', null, null, '6', '1', '11', null, '2');
INSERT INTO `book` VALUES ('126', '126', '被忽略的历史', '0126', null, null, '6', '1', '22', null, '3');
INSERT INTO `book` VALUES ('127', '127', '赌博的历史', '0127', null, null, '6', '1', '222', null, '21');
INSERT INTO `book` VALUES ('128', '128', '历史变迁与历史学', '0128', null, null, '6', '1', '235', null, '24');
INSERT INTO `book` VALUES ('129', '129', '建筑的历史', '0129', null, null, '6', '1', '22', null, '2');
INSERT INTO `book` VALUES ('130', '130', '让历史还原历史', '0130', null, null, '6', '1', '54', null, '2');
INSERT INTO `book` VALUES ('131', '131', '国学的历史', '0131', null, null, '6', '1', '22', null, '3');
INSERT INTO `book` VALUES ('132', '132', '没的历史', '0132', null, null, '6', '1', '322', null, '2');
INSERT INTO `book` VALUES ('133', '133', '爱情的历史', '0133', null, null, '6', '1', '54', null, '2');
INSERT INTO `book` VALUES ('134', '134', '历史悬案', '0134', null, null, '6', '1', '31', null, '3');
INSERT INTO `book` VALUES ('135', '135', '历史语言学', '0135', null, null, '6', '1', '22', null, '1');
INSERT INTO `book` VALUES ('136', '136', '20世纪中国学术大典：历史学', '0136', null, null, '6', '1', '22', null, '3');
INSERT INTO `book` VALUES ('137', '137', '社会科学方法', '0137', null, null, '7', '1', '55', null, '1');
INSERT INTO `book` VALUES ('138', '138', '社会科学哲学', '0138', null, null, '7', '1', '225', null, '22');
INSERT INTO `book` VALUES ('139', '139', '社会科学研究方法', '0139', null, null, '7', '1', '552', null, '22');
INSERT INTO `book` VALUES ('140', '140', '社会科学哲学', '0140', null, null, '7', '1', '320', null, '23');
INSERT INTO `book` VALUES ('141', '141', '社会科学', '0141', null, null, '7', '1', '225', null, '1');
INSERT INTO `book` VALUES ('142', '142', '社会科学中的数学', '0142', null, null, '7', '1', '22', null, '5');
INSERT INTO `book` VALUES ('143', '143', '人文社会科学基础', '0143', null, null, '7', '1', '22', null, '5');
INSERT INTO `book` VALUES ('144', '144', '人文社会科学哲学', '0144', null, null, '7', '1', '55', null, '1');
INSERT INTO `book` VALUES ('145', '145', '社会科学研究方法', '0145', null, null, '7', '1', '521', null, '2');
INSERT INTO `book` VALUES ('146', '146', '社会科学概览', '0146', null, null, '7', '1', '44', null, '1');
INSERT INTO `book` VALUES ('147', '147', '行政法与社会科学', '0147', null, null, '7', '1', '45', null, '5');
INSERT INTO `book` VALUES ('148', '148', '社会科学统计方法', '0148', null, null, '7', '1', '255', null, '2');
INSERT INTO `book` VALUES ('149', '149', '社会科学方法论', '0149', null, null, '7', '1', '225', null, '5');
INSERT INTO `book` VALUES ('150', '150', '社会科学方法论', '0150', null, null, '7', '1', '552', null, '2');
INSERT INTO `book` VALUES ('151', '151', '社会科学方法论', '0151', null, null, '7', '1', '551', null, '55');
INSERT INTO `book` VALUES ('152', '152', '社会科学文献检索', '0152', null, null, '7', '1', '552', null, '2');
INSERT INTO `book` VALUES ('153', '153', '社会科学导论', '0153', null, null, '7', '1', '565', null, '2');
INSERT INTO `book` VALUES ('154', '154', '世界社会科学报告2010', '0154', null, null, '7', '1', '551', null, '2');
INSERT INTO `book` VALUES ('155', '155', '社会科学方法论', '0155', null, null, '7', '1', '55', null, '2');
INSERT INTO `book` VALUES ('156', '156', '上海社会科学院图书馆馆藏精粹', '0156', null, null, '7', '1', '55', null, '2');
INSERT INTO `book` VALUES ('157', '157', '社会科学概览', '0157', null, null, '7', '1', '55', 'bookImage/sociality.jpg', '1');

-- ----------------------------
-- Table structure for `bookcluster`
-- ----------------------------
DROP TABLE IF EXISTS `bookcluster`;
CREATE TABLE `bookcluster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clusterName` varchar(255) DEFAULT NULL,
  `bookNumbers` varchar(255) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookcluster
-- ----------------------------
INSERT INTO `bookcluster` VALUES ('2', '聚类0', '0001;', '1');
INSERT INTO `bookcluster` VALUES ('3', '聚类1', '0002;0003;0007;', '1');
INSERT INTO `bookcluster` VALUES ('4', '聚类2', '0006;', '1');
INSERT INTO `bookcluster` VALUES ('5', '聚类3', '0004;0008;', '1');
INSERT INTO `bookcluster` VALUES ('6', '聚类4', '0005;0009;0010;', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES ('1', '法律', '法律', '1');
INSERT INTO `booktype` VALUES ('2', '计算机', '计算机', '1');
INSERT INTO `booktype` VALUES ('3', '医学', '医学', '1');
INSERT INTO `booktype` VALUES ('4', '文学', '文学', '1');
INSERT INTO `booktype` VALUES ('5', '生活', '生活', '1');
INSERT INTO `booktype` VALUES ('6', '历史', '历史', '1');
INSERT INTO `booktype` VALUES ('7', '社科', '社科', '1');
INSERT INTO `booktype` VALUES ('8', '心理', '心理', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prefix
-- ----------------------------
INSERT INTO `prefix` VALUES ('1', '13', '223', '3', '4', '5', '2014-12-03', '1');
INSERT INTO `prefix` VALUES ('2', '44', '232', 'fdf', 'sefwe', 'wsq', '2015-01-06', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of readerrecord
-- ----------------------------
INSERT INTO `readerrecord` VALUES ('1', '3', '1;3;4;5;', '2', '2015-01-01', '1');
INSERT INTO `readerrecord` VALUES ('2', '1', '3;4;5;', '1', '2015-01-01', '1');
INSERT INTO `readerrecord` VALUES ('3', '3', '3;5;2;6;', '1', '2015-01-02', '1');

-- ----------------------------
-- Table structure for `readerrule`
-- ----------------------------
DROP TABLE IF EXISTS `readerrule`;
CREATE TABLE `readerrule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `readerId` bigint(20) DEFAULT NULL,
  `itemX` varchar(255) DEFAULT NULL,
  `itemY` varchar(255) DEFAULT NULL,
  `appId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readerrule
-- ----------------------------
INSERT INTO `readerrule` VALUES ('10', '3', '5;', '3;', '1');
INSERT INTO `readerrule` VALUES ('11', '3', '3;', '5;', '1');
INSERT INTO `readerrule` VALUES ('12', '1', '4;5;', '3;', '1');
INSERT INTO `readerrule` VALUES ('13', '1', '3;4;', '5;', '1');
INSERT INTO `readerrule` VALUES ('14', '1', '4;', '5;', '1');
INSERT INTO `readerrule` VALUES ('15', '1', '4;', '3;', '1');
INSERT INTO `readerrule` VALUES ('16', '1', '5;', '3;', '1');
INSERT INTO `readerrule` VALUES ('17', '1', '4;', '3;5;', '1');
INSERT INTO `readerrule` VALUES ('18', '1', '3;', '5;', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiaozhujun', 'e10adc3949ba59abbe56e057f20f883e', '男', 'ROLE_USER;ROLE_ADMIN;ROLE_ANONYMOUS', '1', '启用', null);
INSERT INTO `user` VALUES ('2', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '男', 'ROLE_USER;ROLE_ANONYMOUS', '1', '启用', null);
INSERT INTO `user` VALUES ('3', 'sunhui', 'e68fa2bc61b75b8a06766e25905052c7', '男', 'ROLE_USER', '1', '启用', null);
INSERT INTO `user` VALUES ('4', 'liujinxia', 'c99c1cbefe13019978d90cb442cb8f78', '女', 'ROLE_ADMIN', '1', '启用', null);
INSERT INTO `user` VALUES ('5', '1111111', '7fa8282ad93047a4d6fe6111c93b308a', '女', 'ROLE_USER', '1', '启用', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
INSERT INTO `user_authority` VALUES ('8', '5', '1', '1111111', 'ROLE_USER');
