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

 Date: 29/10/2019 15:40:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movies_x
-- ----------------------------
DROP TABLE IF EXISTS `movies_x`;
CREATE TABLE `movies_x`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `actor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movies_x
-- ----------------------------
INSERT INTO `movies_x` VALUES (169, '跳舞把大象', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '1', '../images/411.jpg', '../images/4111.jpg');
INSERT INTO `movies_x` VALUES (170, '银河补习班', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '2', '../images/412.jpg', '../images/4121.jpg');
INSERT INTO `movies_x` VALUES (171, '鼠胆英雄', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '3', '../images/413.jpg', '../images/4131.jpg');
INSERT INTO `movies_x` VALUES (172, '西虹市首富', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '4', ' ../images/414.jpg', '../images/4141.jpg');
INSERT INTO `movies_x` VALUES (173, '老师好', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '5', '../images/415.jpg', '../images/4151.jpg');
INSERT INTO `movies_x` VALUES (174, '羞羞的铁拳', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '6', '../images/416.jpg', '../images/4161.jpg');
INSERT INTO `movies_x` VALUES (175, '飞驰人生', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '7', '../images/417.jpg', '../images/4171.jpg');
INSERT INTO `movies_x` VALUES (176, '快把我哥带走', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '8', '../images/418.jpg', '../images/4181.jpg');

SET FOREIGN_KEY_CHECKS = 1;
