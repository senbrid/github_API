/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : study

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 26/03/2018 22:42:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_developer
-- ----------------------------
DROP TABLE IF EXISTS `tb_developer`;
CREATE TABLE `tb_developer`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `blog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '博客地址',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子信箱',
  `bio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简历',
  `public_repos` int(11) NULL DEFAULT NULL COMMENT '公开库个数',
  `followers` int(11) NULL DEFAULT NULL COMMENT '被关注数',
  `following` int(11) NULL DEFAULT NULL COMMENT '关注数',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_repository
-- ----------------------------
DROP TABLE IF EXISTS `tb_repository`;
CREATE TABLE `tb_repository`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名字',
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库全名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库项目描述',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `pushed_at` datetime NULL DEFAULT NULL COMMENT '推送时间',
  `size` int(11) NULL DEFAULT NULL COMMENT '大小',
  `star_count` int(11) NULL DEFAULT NULL COMMENT '点攒数',
  `watchers_count` int(11) NULL DEFAULT NULL COMMENT '关注数',
  `forks_count` int(11) NULL DEFAULT NULL COMMENT '拷贝',
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `developerId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开发者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_repository
-- ----------------------------
INSERT INTO `tb_repository` VALUES (507775, 'elasticsearch', 'elastic/elasticsearch', 'Open Source, Distributed, RESTful Search Engine', '2010-02-08 13:20:56', '2018-03-26 14:31:51', '2018-03-26 14:21:36', 399422, 29732, 29732, 10335, 'Java', 'elastic');
INSERT INTO `tb_repository` VALUES (892275, 'retrofit', 'square/retrofit', 'Type-safe HTTP client for Android and Java by Square, Inc.', '2010-09-06 21:39:43', '2018-03-26 14:21:35', '2018-03-23 20:20:42', 4617, 27005, 27005, 5287, 'Java', 'square');
INSERT INTO `tb_repository` VALUES (5152285, 'okhttp', 'square/okhttp', 'An HTTP+HTTP/2 client for Android and Java applications.', '2012-07-23 13:42:55', '2018-03-26 13:59:47', '2018-03-20 02:36:25', 17147, 25707, 25707, 6016, 'Java', 'square');
INSERT INTO `tb_repository` VALUES (6296790, 'spring-boot', 'spring-projects/spring-boot', 'Spring Boot', '2012-10-19 15:02:57', '2018-03-26 14:24:08', '2018-03-26 11:50:32', 74423, 22615, 22615, 17325, 'Java', 'spring-projects');
INSERT INTO `tb_repository` VALUES (7508411, 'RxJava', 'ReactiveX/RxJava', 'RxJava – Reactive Extensions for the JVM – a library for composing asynchronous and event-based programs using observable sequences for the Java VM.', '2013-01-08 20:11:48', '2018-03-26 10:37:40', '2018-03-26 13:45:53', 51241, 31775, 31775, 5563, 'Java', 'ReactiveX');
INSERT INTO `tb_repository` VALUES (20300177, 'guava', 'google/guava', 'Google core libraries for Java', '2014-05-29 16:23:17', '2018-03-26 14:26:44', '2018-03-24 04:59:14', 210015, 22996, 22996, 5285, 'Java', 'google');
INSERT INTO `tb_repository` VALUES (22790488, 'java-design-patterns', 'iluwatar/java-design-patterns', 'Design patterns implemented in Java', '2014-08-09 16:45:18', '2018-03-26 14:14:55', '2018-03-25 15:31:38', 17445, 31108, 31108, 9981, 'Java', 'iluwatar');

SET FOREIGN_KEY_CHECKS = 1;
