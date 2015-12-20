/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : diy

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-12-08 21:46:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_uuid` varchar(32) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pageView` int(11) NOT NULL COMMENT '浏览量',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', null, '神谷哲史剑齿虎折法', '自从上次的神谷哲史的凤凰折法开始，就有一些同学要神谷哲史的剑齿虎折法，今天Jake Lee就给大家带来一款神谷哲史的剑齿虎折法。', '2015-11-03 23:47:56', '12');
INSERT INTO `article` VALUES ('2', null, '猫头鹰折法', '今天Jake Lee为大家带来一款可爱猫头鹰折法。', '2015-11-15 23:24:43', '1');
INSERT INTO `article` VALUES ('3', null, '神谷哲史凤凰折纸 大师级的魅力', '神谷哲史凤凰3.5折纸教程，凤凰飞来起舞，仪态优美。古代用以比喻吉祥的征兆和祥瑞的感应。《汉书·王莽传上》：“甘露从天下，醴泉自地出，凤凰来仪，神爵降集。”《尚书·益稷》：“《萧韶》九成，凤凰来仪”《三国演义》第八十回：“自魏王即位以来，麒麟降生，凤凰来仪。”', '2015-11-15 11:31:52', '2');
INSERT INTO `article` VALUES ('4', null, '吾王SABER', '吾王SABER的纸模的制作过程 希望朋友们喜欢 同时也欢迎对纸模感兴趣的朋友来我在腾讯课堂的纸模课程 http://ke.qq.com/cgi-bin/courseDetail?course_id=91952', '2015-11-16 11:12:21', '3');
INSERT INTO `article` VALUES ('5', null, '废物利用卫生纸筒儿童手工制作小黄人DIY教程', '儿童手工美术课上面很多的教程都是关于废物利用和变废为宝的手工小制作，小朋友们平时可以留意收集各种可以进行手工制作的各种小材料，像是卫生纸筒这种都是很好的手工小制作的材料，这里我们就利用卫生纸筒来改造成可爱的小黄人啦。', '2015-11-16 11:19:24', '4');
INSERT INTO `article` VALUES ('6', null, '教程6', '　　今年9月11日至10月7日，中消协组织开展对部分国内旅游线路体验式调查。来自全国24地的196名志愿者担任体验员，经过培训后以普通消费者身份报团参加了覆盖国内27个省、市、自治区的96条线路。所选线路均为符合消费者休闲需要和消费能力的代表性线路，每条线路基本包含一定数量的4A、5A级景点。体验员借助相关专业设备获取视频、录音、照片等大量图文影像一手资料，发现和记录旅游服务行业的相关问题。', '2015-11-02 22:33:09', '5');
INSERT INTO `article` VALUES ('7', null, '教程7', '　　今年9月11日至10月7日，中消协组织开展对部分国内旅游线路体验式调查。来自全国24地的196名志愿者担任体验员，经过培训后以普通消费者身份报团参加了覆盖国内27个省、市、自治区的96条线路。所选线路均为符合消费者休闲需要和消费能力的代表性线路，每条线路基本包含一定数量的4A、5A级景点。体验员借助相关专业设备获取视频、录音、照片等大量图文影像一手资料，发现和记录旅游服务行业的相关问题。', '2015-11-02 22:33:09', '1');
INSERT INTO `article` VALUES ('8', null, '教程8', '　　今年9月11日至10月7日，中消协组织开展对部分国内旅游线路体验式调查。来自全国24地的196名志愿者担任体验员，经过培训后以普通消费者身份报团参加了覆盖国内27个省、市、自治区的96条线路。所选线路均为符合消费者休闲需要和消费能力的代表性线路，每条线路基本包含一定数量的4A、5A级景点。体验员借助相关专业设备获取视频、录音、照片等大量图文影像一手资料，发现和记录旅游服务行业的相关问题。', '2015-11-02 22:33:09', '2');
INSERT INTO `article` VALUES ('9', null, '教程9', '　　今年9月11日至10月7日，中消协组织开展对部分国内旅游线路体验式调查。来自全国24地的196名志愿者担任体验员，经过培训后以普通消费者身份报团参加了覆盖国内27个省、市、自治区的96条线路。所选线路均为符合消费者休闲需要和消费能力的代表性线路，每条线路基本包含一定数量的4A、5A级景点。体验员借助相关专业设备获取视频、录音、照片等大量图文影像一手资料，发现和记录旅游服务行业的相关问题。', '2015-11-02 22:33:09', '2');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(150) NOT NULL,
  `comment_date` timestamp NULL DEFAULT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '写得太好了,这个教程对我很用!', '2015-11-03 23:47:56', '1');
INSERT INTO `comment` VALUES ('2', '2', 'Good! ', '2015-11-03 23:47:52', '2');
INSERT INTO `comment` VALUES ('3', '1', '点赞', '2015-10-03 23:47:56', '3');
INSERT INTO `comment` VALUES ('4', '2', '希望详细洗点', '2014-11-03 23:47:56', '4');
INSERT INTO `comment` VALUES ('5', '1', '垃圾', '2011-11-03 23:47:56', '1');
INSERT INTO `comment` VALUES ('6', '2', '好文章', '2012-11-03 23:47:56', '1');
INSERT INTO `comment` VALUES ('7', '2', '全都是泡沫', '2015-11-03 23:47:56', '3');
INSERT INTO `comment` VALUES ('8', '1', 'sdf', '2015-11-03 23:47:56', '1');
INSERT INTO `comment` VALUES ('9', '1', 'asdf', '2015-11-14 22:20:51', '1');
INSERT INTO `comment` VALUES ('10', '1', 'asdf', '2015-11-14 22:22:09', '1');
INSERT INTO `comment` VALUES ('11', '1', 'sadasd', '2015-11-14 22:27:56', '1');
INSERT INTO `comment` VALUES ('12', '1', ' dsad', '2015-11-14 22:30:01', '1');
INSERT INTO `comment` VALUES ('13', '1', ' F', '2015-11-14 22:31:40', '1');
INSERT INTO `comment` VALUES ('14', '1', ' sdf', '2015-11-15 16:17:45', '1');
INSERT INTO `comment` VALUES ('15', '1', ' sdf', '2015-11-15 16:52:41', '2');
INSERT INTO `comment` VALUES ('16', '1', ' df', '2015-11-15 16:54:12', '2');
INSERT INTO `comment` VALUES ('17', '1', ' sdf', '2015-11-15 16:57:18', '3');
INSERT INTO `comment` VALUES ('18', '1', ' Fuck ', '2015-11-16 11:06:49', '2');
INSERT INTO `comment` VALUES ('19', '1', ' adf', '2015-11-19 17:27:47', '2');
INSERT INTO `comment` VALUES ('20', '1', '梵蒂冈', '2015-11-19 17:32:35', '2');
INSERT INTO `comment` VALUES ('21', '1', ' 金鱼姐姐在上课', '2015-11-19 17:32:47', '2');

-- ----------------------------
-- Table structure for `favour`
-- ----------------------------
DROP TABLE IF EXISTS `favour`;
CREATE TABLE `favour` (
  `favour_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fav_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`favour_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of favour
-- ----------------------------

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(100) NOT NULL,
  `pic_type` enum('article','cover','portrait') DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', './images/lesson_001/tiger_cover.jpg', 'cover');
INSERT INTO `picture` VALUES ('2', './images/lesson_002/owl_cover.jpg', 'cover');
INSERT INTO `picture` VALUES ('3', './images/lesson_003/phoenix_cover.jpg', 'cover');
INSERT INTO `picture` VALUES ('4', './images/lesson_004/saber_cover.jpg', 'cover');
INSERT INTO `picture` VALUES ('5', './images/lesson_005/Minion_cover.jpg', 'cover');
INSERT INTO `picture` VALUES ('6', './images/005.jpg', 'cover');
INSERT INTO `picture` VALUES ('7', './images/005.jpg', 'cover');
INSERT INTO `picture` VALUES ('8', './images/005.jpg', 'cover');
INSERT INTO `picture` VALUES ('9', './images/005.jpg', 'cover');
INSERT INTO `picture` VALUES ('10', './images/user-pic001.jpg', 'portrait');
INSERT INTO `picture` VALUES ('11', './images/user-pic002.jpg', 'portrait');
INSERT INTO `picture` VALUES ('12', './images/user-pic003.jpg', 'portrait');
INSERT INTO `picture` VALUES ('13', './images/lesson_001/tiger_001.jpg', 'article');
INSERT INTO `picture` VALUES ('14', './images/lesson_001/tiger_002.jpg', 'article');
INSERT INTO `picture` VALUES ('15', './images/lesson_001/tiger_003.jpg', 'article');
INSERT INTO `picture` VALUES ('16', './images/lesson_001/tiger_004.jpg', 'article');
INSERT INTO `picture` VALUES ('17', './images/lesson_001/tiger_005.jpg', 'article');
INSERT INTO `picture` VALUES ('18', './images/lesson_001/tiger_006.jpg', 'article');
INSERT INTO `picture` VALUES ('19', './images/lesson_001/tiger_007.jpg', 'article');
INSERT INTO `picture` VALUES ('20', './images/lesson_001/tiger_008.jpg', 'article');
INSERT INTO `picture` VALUES ('21', './images/lesson_001/tiger_009.jpg', 'article');
INSERT INTO `picture` VALUES ('22', './images/lesson_001/tiger_010.jpg', 'article');
INSERT INTO `picture` VALUES ('23', './images/lesson_002/owl_001.jpg', 'article');
INSERT INTO `picture` VALUES ('24', './images/lesson_002/owl_002.jpg', 'article');
INSERT INTO `picture` VALUES ('25', './images/lesson_002/owl_003.jpg', 'article');
INSERT INTO `picture` VALUES ('26', './images/lesson_002/owl_004.jpg', 'article');
INSERT INTO `picture` VALUES ('27', './images/lesson_003/phoenix_001.jpg', 'article');
INSERT INTO `picture` VALUES ('28', './images/lesson_003/phoenix_002.jpg', 'article');
INSERT INTO `picture` VALUES ('29', './images/lesson_003/phoenix_003.jpg', 'article');
INSERT INTO `picture` VALUES ('30', './images/lesson_003/phoenix_004.jpg', 'article');
INSERT INTO `picture` VALUES ('31', './images/lesson_003/phoenix_005.jpg', 'article');
INSERT INTO `picture` VALUES ('32', './images/lesson_003/phoenix_006.jpg', 'article');
INSERT INTO `picture` VALUES ('33', './images/lesson_003/phoenix_007.jpg', 'article');
INSERT INTO `picture` VALUES ('34', './images/lesson_003/phoenix_008.jpg', 'article');
INSERT INTO `picture` VALUES ('35', './images/lesson_003/phoenix_009.jpg', 'article');
INSERT INTO `picture` VALUES ('36', './images/lesson_003/phoenix_010.jpg', 'article');
INSERT INTO `picture` VALUES ('37', './images/lesson_003/phoenix_011.jpg', 'article');
INSERT INTO `picture` VALUES ('38', './images/lesson_003/phoenix_012.jpg', 'article');
INSERT INTO `picture` VALUES ('39', './images/lesson_003/phoenix_013.jpg', 'article');
INSERT INTO `picture` VALUES ('40', './images/lesson_003/phoenix_014.jpg', 'article');
INSERT INTO `picture` VALUES ('41', './images/lesson_004/saber_001.jpg', 'article');
INSERT INTO `picture` VALUES ('42', './images/lesson_004/saber_002.jpg', 'article');
INSERT INTO `picture` VALUES ('43', './images/lesson_004/saber_003.jpg', 'article');
INSERT INTO `picture` VALUES ('44', './images/lesson_004/saber_004.jpg', 'article');
INSERT INTO `picture` VALUES ('45', './images/lesson_004/saber_005.jpg', 'article');
INSERT INTO `picture` VALUES ('46', './images/lesson_004/saber_006.jpg', 'article');
INSERT INTO `picture` VALUES ('47', './images/lesson_004/saber_007.jpg', 'article');
INSERT INTO `picture` VALUES ('48', './images/lesson_005/Minion_001.jpg', 'article');
INSERT INTO `picture` VALUES ('49', './images/lesson_005/Minion_002.jpg', 'article');
INSERT INTO `picture` VALUES ('50', './images/lesson_005/Minion_003.jpg', 'article');
INSERT INTO `picture` VALUES ('51', './images/lesson_005/Minion_004.jpg', 'article');
INSERT INTO `picture` VALUES ('52', './images/lesson_005/Minion_005.jpg', 'article');
INSERT INTO `picture` VALUES ('53', './images/lesson_005/Minion_006.jpg', 'article');
INSERT INTO `picture` VALUES ('54', './images/lesson_005/Minion_007.jpg', 'article');
INSERT INTO `picture` VALUES ('55', './images/lesson_005/Minion_008.jpg', 'article');
INSERT INTO `picture` VALUES ('56', './images/lesson_005/Minion_009.jpg', 'article');
INSERT INTO `picture` VALUES ('57', './images/lesson_005/Minion_010.jpg', 'article');
INSERT INTO `picture` VALUES ('58', './images/lesson_005/Minion_011.jpg', 'article');
INSERT INTO `picture` VALUES ('59', './images/lesson_005/Minion_012.jpg', 'article');
INSERT INTO `picture` VALUES ('60', './images/lesson_005/Minion_013.jpg', 'article');
INSERT INTO `picture` VALUES ('61', './images/lesson_005/Minion_014.jpg', 'article');
INSERT INTO `picture` VALUES ('62', './images/lesson_005/Minion_001.jpg', null);
INSERT INTO `picture` VALUES ('63', './images/lesson_005/Minion_001.jpg', null);

-- ----------------------------
-- Table structure for `pic_relate`
-- ----------------------------
DROP TABLE IF EXISTS `pic_relate`;
CREATE TABLE `pic_relate` (
  `pic_id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pic_relate_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_relate_id`),
  KEY `article_id` (`article_id`),
  KEY `pic_id` (`pic_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `pic_relate_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  CONSTRAINT `pic_relate_ibfk_2` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`pic_id`),
  CONSTRAINT `pic_relate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片关系表';

-- ----------------------------
-- Records of pic_relate
-- ----------------------------
INSERT INTO `pic_relate` VALUES ('1', '1', '1', null);
INSERT INTO `pic_relate` VALUES ('2', '2', '2', null);
INSERT INTO `pic_relate` VALUES ('3', '3', '3', null);
INSERT INTO `pic_relate` VALUES ('4', '4', '4', null);
INSERT INTO `pic_relate` VALUES ('5', '5', '5', null);
INSERT INTO `pic_relate` VALUES ('6', '6', '6', null);
INSERT INTO `pic_relate` VALUES ('7', '7', '7', null);
INSERT INTO `pic_relate` VALUES ('10', null, '10', '1');
INSERT INTO `pic_relate` VALUES ('11', null, '11', '2');
INSERT INTO `pic_relate` VALUES ('12', null, '12', '3');
INSERT INTO `pic_relate` VALUES ('13', '1', '13', null);
INSERT INTO `pic_relate` VALUES ('14', '1', '14', null);
INSERT INTO `pic_relate` VALUES ('15', '1', '15', null);
INSERT INTO `pic_relate` VALUES ('16', '1', '16', null);
INSERT INTO `pic_relate` VALUES ('17', '1', '17', null);
INSERT INTO `pic_relate` VALUES ('18', '1', '18', null);
INSERT INTO `pic_relate` VALUES ('19', '1', '19', null);
INSERT INTO `pic_relate` VALUES ('20', '1', '20', null);
INSERT INTO `pic_relate` VALUES ('21', '1', '21', null);
INSERT INTO `pic_relate` VALUES ('22', '1', '22', null);
INSERT INTO `pic_relate` VALUES ('23', '2', '23', null);
INSERT INTO `pic_relate` VALUES ('24', '2', '24', null);
INSERT INTO `pic_relate` VALUES ('25', '2', '25', null);
INSERT INTO `pic_relate` VALUES ('26', '2', '26', null);
INSERT INTO `pic_relate` VALUES ('27', '3', '27', null);
INSERT INTO `pic_relate` VALUES ('28', '3', '28', null);
INSERT INTO `pic_relate` VALUES ('29', '3', '29', null);
INSERT INTO `pic_relate` VALUES ('30', '3', '30', null);
INSERT INTO `pic_relate` VALUES ('31', '3', '31', null);
INSERT INTO `pic_relate` VALUES ('32', '3', '32', null);
INSERT INTO `pic_relate` VALUES ('33', '3', '33', null);
INSERT INTO `pic_relate` VALUES ('34', '3', '34', null);
INSERT INTO `pic_relate` VALUES ('35', '3', '35', null);
INSERT INTO `pic_relate` VALUES ('36', '3', '36', null);
INSERT INTO `pic_relate` VALUES ('37', '3', '37', null);
INSERT INTO `pic_relate` VALUES ('38', '3', '38', null);
INSERT INTO `pic_relate` VALUES ('39', '3', '39', null);
INSERT INTO `pic_relate` VALUES ('40', '3', '40', null);
INSERT INTO `pic_relate` VALUES ('41', '4', '41', null);
INSERT INTO `pic_relate` VALUES ('42', '4', '42', null);
INSERT INTO `pic_relate` VALUES ('43', '4', '43', null);
INSERT INTO `pic_relate` VALUES ('44', '4', '44', null);
INSERT INTO `pic_relate` VALUES ('45', '4', '45', null);
INSERT INTO `pic_relate` VALUES ('46', '4', '46', null);
INSERT INTO `pic_relate` VALUES ('47', '4', '47', null);
INSERT INTO `pic_relate` VALUES ('48', '5', '48', null);
INSERT INTO `pic_relate` VALUES ('49', '5', '49', null);
INSERT INTO `pic_relate` VALUES ('50', '5', '50', null);
INSERT INTO `pic_relate` VALUES ('51', '5', '51', null);
INSERT INTO `pic_relate` VALUES ('52', '5', '52', null);
INSERT INTO `pic_relate` VALUES ('53', '5', '53', null);
INSERT INTO `pic_relate` VALUES ('54', '5', '54', null);
INSERT INTO `pic_relate` VALUES ('55', '5', '55', null);
INSERT INTO `pic_relate` VALUES ('56', '5', '56', null);
INSERT INTO `pic_relate` VALUES ('57', '5', '57', null);
INSERT INTO `pic_relate` VALUES ('58', '5', '58', null);
INSERT INTO `pic_relate` VALUES ('59', '5', '59', null);
INSERT INTO `pic_relate` VALUES ('60', '5', '60', null);
INSERT INTO `pic_relate` VALUES ('61', '5', '61', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jay', 'e99a18c428cb38d5f260853678922e03');
INSERT INTO `user` VALUES ('2', 'jinyu', 'e99a18c428cb38d5f260853678922e03');
INSERT INTO `user` VALUES ('3', 'cankun', 'e99a18c428cb38d5f260853678922e03');
