/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : movies

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 29/10/2019 15:40:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movies_k
-- ----------------------------
DROP TABLE IF EXISTS `movies_k`;
CREATE TABLE `movies_k`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `actor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movies_k
-- ----------------------------
INSERT INTO `movies_k` VALUES (1, '阿拉丁神灯', '汤姆·赫兰德 赞达亚 杰', '故事设定在28世纪，人类发现了如何进行时空旅行。韦勒瑞恩。', '1', '../images/111.jpg', '../images/1111.jpg');
INSERT INTO `movies_k` VALUES (146, '蜘蛛侠之英雄远征', '汤姆·赫兰德', '在复仇者联盟众英雄的努力下，于灭霸无限手套事件中化作为灰烬。', 'https://v.qq.com/x/cover/96sxjj429lictza/s0032ab6wjm.html', '../images/112.jpg', '../images/1121.jpg');
INSERT INTO `movies_k` VALUES (148, '环太平洋', '约翰·博耶加 斯科特·伊', '在对抗外星人的入侵并成功封住虫洞的十年后，人类从废墟中站起。', '3', '../images/113.jpg', '../images/1131.jpg');
INSERT INTO `movies_k` VALUES (168, '超人之死', '亚当·鲍德温 露易丝·莱恩', '故事旁白从莱克斯·卢瑟开始，描述超人所作的英雄事迹及形象。莱克斯描述超人作为一个地球上的神，但坚持说“该来的时候，甚至是神也必须要死”。', '4', '../images/114.jpg', '../images/1141.jpg');
INSERT INTO `movies_k` VALUES (170, '未来机器城', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', 'https://v.qq.com/x/cover/fgi913qjsxva0rw/y0031mja2xk.html', '../images/115.jpg', '../images/1151.jpg');
INSERT INTO `movies_k` VALUES (171, '正义联盟', '本·阿弗莱克', '蝙蝠侠（本·阿弗莱克饰）在对人类残存的信心以及超人（亨利·卡维尔饰）无私奉献的影响下，接受了新盟友——神奇女侠（盖尔·加朵饰）的帮助。', '6', '../images/116.jpg', '../images/1161.jpg');
INSERT INTO `movies_k` VALUES (172, '星际特工', '戴恩·德哈恩 卡拉·迪瓦', '故事设定在28世纪，人类发现了如何进行时空旅行。韦勒瑞恩', '7', '../images/117.jpg', '../images/1171.jpg');
INSERT INTO `movies_k` VALUES (173, '蚁人2', '保罗·路德 伊万杰琳·莉', '由于在“内战”中站到了美国队长一方，蚁人斯科特·朗遭到了FBI的禁', '8', '../images/118.jpg', '../images/1181.jpg');

SET FOREIGN_KEY_CHECKS = 1;
