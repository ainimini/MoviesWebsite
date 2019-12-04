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

 Date: 29/10/2019 15:40:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movies_d
-- ----------------------------
DROP TABLE IF EXISTS `movies_d`;
CREATE TABLE `movies_d`  (
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
-- Records of movies_d
-- ----------------------------
INSERT INTO `movies_d` VALUES (169, '大脚怪', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '1', '../images/311.jpg', '../images/3111.jpg');
INSERT INTO `movies_d` VALUES (170, '妈妈咪鸭', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '2', '../images/312.jpg', '../images/3121.jpg');
INSERT INTO `movies_d` VALUES (171, '疯狂动物城', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '3', '../images/313.jpg', '../images/3131.jpg');
INSERT INTO `movies_d` VALUES (172, '新灰姑娘', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '4', '../images/314.jpg', '../images/3141.jpg');
INSERT INTO `movies_d` VALUES (173, '大笨熊', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '5', '../images/315.jpg', '../images/3151.jpg');
INSERT INTO `movies_d` VALUES (174, '声之形', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '6', '../images/316.jpg', '../images/3161.jpg');
INSERT INTO `movies_d` VALUES (175, '深海历险记', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '7', '../images/317.jpg', '../images/3171.jpg');
INSERT INTO `movies_d` VALUES (176, '森林奇缘', '韩莹棣 郑海音', '一个即将被用于拯救人类的新型机器人7723，因缘际会遇上了热爱足球的调皮少女苏小麦。而看似顽劣的小麦生长在一个不算完整的家庭里，父亲为追梦离家。', '8', '../images/318.jpg', '../images/3181.jpg');

SET FOREIGN_KEY_CHECKS = 1;
