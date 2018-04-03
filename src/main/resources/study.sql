/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : localhost:3306
 Source Schema         : study

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 03/04/2018 18:00:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_developer
-- ----------------------------
DROP TABLE IF EXISTS `tb_developer`;
CREATE TABLE `tb_developer`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司',
  `blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '博客地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子信箱',
  `bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人简历',
  `public_repos` int(11) NULL DEFAULT NULL COMMENT '公开库个数',
  `followers` int(11) NULL DEFAULT NULL COMMENT '被关注数',
  `following` int(11) NULL DEFAULT NULL COMMENT '关注数',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_developer
-- ----------------------------
INSERT INTO `tb_developer` VALUES (47359, 'apache', 'The Apache Software Foundation', 'https://avatars0.githubusercontent.com/u/47359?v=4', NULL, 'http://www.apache.org/', NULL, NULL, 1518, 0, 0, '2009-01-17 20:14:40', '2018-03-13 04:09:41');
INSERT INTO `tb_developer` VALUES (66577, 'JakeWharton', 'Jake Wharton', 'https://avatars0.githubusercontent.com/u/66577?v=4', 'Google, Inc.', 'http://jakewharton.com', 'jakewharton@gmail.com', NULL, 95, 45176, 12, '2009-03-24 16:09:53', '2018-03-03 17:40:09');
INSERT INTO `tb_developer` VALUES (69631, 'facebook', 'Facebook', 'https://avatars3.githubusercontent.com/u/69631?v=4', NULL, 'https://code.facebook.com/projects/', NULL, 'We work hard to contribute our work back to the web, mobile, big data, & infrastructure communities. NB: members must have two-factor auth.', 178, 0, 0, '2009-04-02 03:35:22', '2017-08-18 21:25:09');
INSERT INTO `tb_developer` VALUES (82592, 'square', 'Square', 'https://avatars0.githubusercontent.com/u/82592?v=4', NULL, 'http://square.github.io', NULL, NULL, 209, 0, 0, '2009-05-08 23:28:44', '2018-03-23 20:44:23');
INSERT INTO `tb_developer` VALUES (118523, 'skylot', NULL, 'https://avatars3.githubusercontent.com/u/118523?v=4', NULL, '', 'skylot@gmail.com', NULL, 2, 238, 2, '2009-08-23 12:37:47', '2018-03-20 19:52:59');
INSERT INTO `tb_developer` VALUES (242242, 'greenrobot', 'Markus Junginger', 'https://avatars0.githubusercontent.com/u/242242?v=4', '@objectbox, greenrobot.org', 'http://objectbox.io', NULL, 'Creator of EventBus and greenDAO, now CTO and co-founder at @objectbox', 18, 4653, 0, '2010-04-12 14:18:19', '2018-03-29 20:23:43');
INSERT INTO `tb_developer` VALUES (317776, 'spring-projects', 'Spring', 'https://avatars0.githubusercontent.com/u/317776?v=4', NULL, 'http://spring.io/projects', NULL, NULL, 201, 0, 0, '2010-06-29 18:58:02', '2018-01-11 23:25:01');
INSERT INTO `tb_developer` VALUES (423539, 'bumptech', 'Bump Technologies', 'https://avatars0.githubusercontent.com/u/423539?v=4', NULL, 'http://bu.mp/company', NULL, NULL, 37, 0, 0, '2010-10-01 14:59:56', '2017-12-20 18:27:09');
INSERT INTO `tb_developer` VALUES (473791, 'netty', 'The Netty Project', 'https://avatars1.githubusercontent.com/u/473791?v=4', NULL, 'http://netty.io/', 'netty@googlegroups.com', 'Opening the future of network programming since 2001', 6, 0, 0, '2010-11-09 09:20:31', '2016-12-26 03:17:32');
INSERT INTO `tb_developer` VALUES (509841, 'libgdx', 'libgdx', 'https://avatars1.githubusercontent.com/u/509841?v=4', NULL, 'http://libgdx.badlogicgames.com', NULL, NULL, 26, 0, 0, '2010-12-05 02:16:28', '2015-04-27 20:01:08');
INSERT INTO `tb_developer` VALUES (582346, 'iluwatar', 'Ilkka Seppälä', 'https://avatars1.githubusercontent.com/u/582346?v=4', 'Gofore', 'https://twitter.com/iluwatar', NULL, NULL, 6, 1501, 0, '2011-01-25 09:32:44', '2018-03-31 06:42:08');
INSERT INTO `tb_developer` VALUES (698437, 'airbnb', 'Airbnb', 'https://avatars3.githubusercontent.com/u/698437?v=4', NULL, 'http://airbnb.io', NULL, NULL, 157, 0, 0, '2011-03-30 01:29:47', '2017-04-24 23:19:10');
INSERT INTO `tb_developer` VALUES (913567, 'Netflix', 'Netflix, Inc.', 'https://avatars3.githubusercontent.com/u/913567?v=4', NULL, 'http://netflix.github.io/', 'netflixoss@netflix.com', 'Netflix Open Source Platform', 137, 0, 0, '2011-07-13 20:20:01', '2018-02-01 23:30:02');
INSERT INTO `tb_developer` VALUES (1122572, 'zxing', 'ZXing Project', 'https://avatars1.githubusercontent.com/u/1122572?v=4', NULL, '', NULL, 'ZXing is an open-source, multi-format 1D/2D barcode image processing library implemented in Java, with ports to other languages.', 1, 0, 0, '2011-10-12 14:05:30', '2016-06-27 10:09:06');
INSERT INTO `tb_developer` VALUES (1223348, 'nostra13', 'Sergey Tarasevich', 'https://avatars1.githubusercontent.com/u/1223348?v=4', '@gojuno', '', 'nostra13@gmail.com', 'Clean coder', 5, 2869, 1, '2011-11-27 14:47:56', '2017-11-24 15:50:34');
INSERT INTO `tb_developer` VALUES (1342004, 'google', 'Google', 'https://avatars1.githubusercontent.com/u/1342004?v=4', NULL, 'https://opensource.google.com/', NULL, NULL, 1245, 0, 0, '2012-01-18 01:30:18', '2018-02-22 18:00:11');
INSERT INTO `tb_developer` VALUES (1820165, 'afollestad', 'Aidan Follestad', 'https://avatars0.githubusercontent.com/u/1820165?v=4', 'Square, Inc.', 'https://aidanfollestad.com', NULL, '22. SDX/Android Software Engineer @square. Full stack programmer. Car and motorcycle enthusiast. Gaming and rock music.', 22, 3050, 98, '2012-06-05 17:27:13', '2018-03-30 04:52:20');
INSERT INTO `tb_developer` VALUES (1961952, 'alibaba', 'Alibaba', 'https://avatars1.githubusercontent.com/u/1961952?v=4', NULL, 'http://www.alibaba.com', NULL, 'Alibaba Open Source', 187, 0, 0, '2012-07-12 08:40:35', '2017-08-15 09:48:28');
INSERT INTO `tb_developer` VALUES (6407041, 'ReactiveX', 'ReactiveX', 'https://avatars1.githubusercontent.com/u/6407041?v=4', NULL, 'http://reactivex.io', NULL, 'Reactive Extensions for Async Programming', 39, 0, 0, '2014-01-15 07:18:52', '2015-08-14 19:41:20');
INSERT INTO `tb_developer` VALUES (6759734, 'PhilJay', 'Philipp Jahoda', 'https://avatars1.githubusercontent.com/u/6759734?v=4', '@Butleroy', 'https://21.co/philjay/', NULL, 'Passionate Android & iOS developer. Startup guy. Tech lover.', 17, 1556, 28, '2014-02-22 23:15:59', '2018-02-24 11:49:17');
INSERT INTO `tb_developer` VALUES (6764390, 'elastic', 'elastic', 'https://avatars0.githubusercontent.com/u/6764390?v=4', NULL, 'https://www.elastic.co/', NULL, NULL, 205, 0, 0, '2014-02-23 17:48:57', '2018-03-14 00:14:15');
INSERT INTO `tb_developer` VALUES (7698209, 'CymChad', '陈宇明', 'https://avatars1.githubusercontent.com/u/7698209?v=4', 'Hs', 'http://www.jianshu.com/users/f958e66439f0/latest_articles', 'it_chenyuming@163.com', 'O ever youthful, O ever weeping.', 3, 934, 4, '2014-05-26 02:38:58', '2018-02-28 10:46:09');
INSERT INTO `tb_developer` VALUES (16903644, 'kdn251', 'Kevin Naughton Jr.', 'https://avatars1.githubusercontent.com/u/16903644?v=4', 'Influential Studios', 'https://medium.com/@Naughton/starting-work-b06e10f6007e', 'kdn251@nyu.edu', 'Full Stack Developer & Entrepreneur', 19, 750, 9, '2016-01-26 17:47:58', '2018-03-28 04:18:58');
INSERT INTO `tb_developer` VALUES (17978187, 'Blankj', '布兰柯基', 'https://avatars3.githubusercontent.com/u/17978187?v=4', '51NB', 'https://blankj.com', 'blankj@qq.com', 'select * from learn', 35, 1636, 8, '2016-03-21 08:26:59', '2018-03-22 12:54:59');

-- ----------------------------
-- Table structure for tb_repository
-- ----------------------------
DROP TABLE IF EXISTS `tb_repository`;
CREATE TABLE `tb_repository`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库名字',
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库全名',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '仓库项目描述',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `pushed_at` datetime(0) NULL DEFAULT NULL COMMENT '推送时间',
  `size` int(11) NULL DEFAULT NULL COMMENT '大小',
  `star_count` int(11) NULL DEFAULT NULL COMMENT '点攒数',
  `watchers_count` int(11) NULL DEFAULT NULL COMMENT '关注数',
  `forks_count` int(11) NULL DEFAULT NULL COMMENT '拷贝',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `developerId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开发者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_repository
-- ----------------------------
INSERT INTO `tb_repository` VALUES (507775, 'elasticsearch', 'elastic/elasticsearch', 'Open Source, Distributed, RESTful Search Engine', '2010-02-08 13:20:56', '2018-04-03 09:31:18', '2018-04-03 09:30:45', 399929, 29898, 29898, 10393, 'Java', 'elastic');
INSERT INTO `tb_repository` VALUES (892275, 'retrofit', 'square/retrofit', 'Type-safe HTTP client for Android and Java by Square, Inc.', '2010-09-06 21:39:43', '2018-04-03 07:28:32', '2018-04-02 03:03:24', 4621, 27160, 27160, 5311, 'Java', 'square');
INSERT INTO `tb_repository` VALUES (1064563, 'netty', 'netty/netty', 'Netty project - an event-driven asynchronous network application framework', '2010-11-09 09:22:21', '2018-04-03 08:58:32', '2018-04-03 03:02:40', 50985, 13397, 13397, 6112, 'Java', 'netty');
INSERT INTO `tb_repository` VALUES (1148753, 'spring-framework', 'spring-projects/spring-framework', 'Spring Framework', '2010-12-08 04:04:45', '2018-04-03 09:42:36', '2018-04-03 00:43:36', 110358, 20100, 20100, 13312, 'Java', 'spring-projects');
INSERT INTO `tb_repository` VALUES (2562751, 'zxing', 'zxing/zxing', 'ZXing (\"Zebra Crossing\") barcode scanning library for Java, Android', '2011-10-12 14:07:27', '2018-04-03 09:12:42', '2018-03-23 16:05:27', 239180, 17982, 17982, 7342, 'Java', 'zxing');
INSERT INTO `tb_repository` VALUES (2700474, 'fastjson', 'alibaba/fastjson', ':bullettrain_side: A fast JSON parser/generator for Java', '2011-11-03 06:58:52', '2018-04-03 09:10:45', '2018-03-25 09:30:24', 11687, 13085, 13085, 4061, 'Java', 'alibaba');
INSERT INTO `tb_repository` VALUES (2862290, 'Android-Universal-Image-Loader', 'nostra13/Android-Universal-Image-Loader', 'Powerful and flexible library for loading, caching and displaying images on Android.', '2011-11-27 18:48:23', '2018-04-03 07:22:42', '2018-03-14 09:56:29', 25335, 16036, 16036, 6474, 'Java', 'nostra13');
INSERT INTO `tb_repository` VALUES (4710920, 'incubator-dubbo', 'apache/incubator-dubbo', 'Apache Dubbo (incubating) is a high-performance, java based, open source RPC framework.', '2012-06-19 07:56:02', '2018-04-03 09:38:00', '2018-04-03 07:15:56', 9300, 17669, 17669, 12686, 'Java', 'apache');
INSERT INTO `tb_repository` VALUES (5070389, 'EventBus', 'greenrobot/EventBus', 'Event bus for Android and Java that simplifies communication between Activities, Fragments, Threads, Services, etc. Less code, better quality.', '2012-07-16 16:55:40', '2018-04-03 09:42:30', '2018-01-24 09:40:10', 1509, 17818, 17818, 3994, 'Java', 'greenrobot');
INSERT INTO `tb_repository` VALUES (5152285, 'okhttp', 'square/okhttp', 'An HTTP+HTTP/2 client for Android and Java applications.', '2012-07-23 13:42:55', '2018-04-03 09:39:48', '2018-04-01 00:44:18', 17147, 25843, 25843, 6052, 'Java', 'square');
INSERT INTO `tb_repository` VALUES (5373551, 'libgdx', 'libgdx/libgdx', 'Desktop/Android/HTML5/iOS Java game development framework', '2012-08-10 19:34:38', '2018-04-03 07:48:26', '2018-04-02 17:08:11', 1001740, 13607, 13607, 5596, 'Java', 'libgdx');
INSERT INTO `tb_repository` VALUES (6296790, 'spring-boot', 'spring-projects/spring-boot', 'Spring Boot', '2012-10-19 15:02:57', '2018-04-03 09:39:33', '2018-04-03 09:23:54', 74512, 22878, 22878, 17524, 'Java', 'spring-projects');
INSERT INTO `tb_repository` VALUES (6766558, 'Hystrix', 'Netflix/Hystrix', 'Hystrix is a latency and fault tolerance library designed to isolate points of access to remote systems, services and 3rd party libraries, stop cascading failure and enable resilience in complex distributed systems where failure is inevitable.', '2012-11-19 20:14:46', '2018-04-03 09:24:46', '2018-03-14 14:51:36', 9585, 13104, 13104, 2625, 'Java', 'Netflix');
INSERT INTO `tb_repository` VALUES (7508411, 'RxJava', 'ReactiveX/RxJava', 'RxJava – Reactive Extensions for the JVM – a library for composing asynchronous and event-based programs using observable sequences for the Java VM.', '2013-01-08 20:11:48', '2018-04-03 09:11:10', '2018-04-03 09:09:38', 51877, 31968, 31968, 5589, 'Java', 'ReactiveX');
INSERT INTO `tb_repository` VALUES (8575137, 'butterknife', 'JakeWharton/butterknife', 'Bind Android views and callbacks to fields and methods.', '2013-03-05 08:18:59', '2018-04-03 09:02:14', '2018-03-29 19:03:29', 3593, 20586, 20586, 4093, 'Java', 'JakeWharton');
INSERT INTO `tb_repository` VALUES (8859474, 'jadx', 'skylot/jadx', 'Dex to Java decompiler', '2013-03-18 17:08:21', '2018-04-03 07:41:24', '2018-03-29 18:20:48', 10419, 14354, 14354, 1371, 'Java', 'skylot');
INSERT INTO `tb_repository` VALUES (10057936, 'picasso', 'square/picasso', 'A powerful image downloading and caching library for Android', '2013-05-14 15:07:47', '2018-04-03 08:16:23', '2018-04-02 20:01:21', 3883, 15238, 15238, 3803, 'Java', 'square');
INSERT INTO `tb_repository` VALUES (11267509, 'glide', 'bumptech/glide', 'An image loading and caching library for Android focused on smooth scrolling', '2013-07-08 22:52:33', '2018-04-03 08:43:20', '2018-04-01 08:48:10', 55660, 21016, 21016, 4132, 'Java', 'bumptech');
INSERT INTO `tb_repository` VALUES (18347476, 'iosched', 'google/iosched', 'The Google I/O 2017 Android App', '2014-04-01 22:40:40', '2018-04-03 08:42:11', '2017-08-22 17:31:53', 46858, 15457, 15457, 5316, 'Java', 'google');
INSERT INTO `tb_repository` VALUES (19148949, 'MPAndroidChart', 'PhilJay/MPAndroidChart', 'A powerful 🚀 Android chart view / graph view library, supporting line- bar- pie- radar- bubble- and candlestick charts as well as scaling, dragging and animations.', '2014-04-25 14:29:47', '2018-04-03 09:14:50', '2018-03-28 17:57:11', 20838, 21364, 21364, 5937, 'Java', 'PhilJay');
INSERT INTO `tb_repository` VALUES (20300177, 'guava', 'google/guava', 'Google core libraries for Java', '2014-05-29 16:23:17', '2018-04-03 08:46:29', '2018-03-29 21:07:31', 210052, 23126, 23126, 5315, 'Java', 'google');
INSERT INTO `tb_repository` VALUES (22790488, 'java-design-patterns', 'iluwatar/java-design-patterns', 'Design patterns implemented in Java', '2014-08-09 16:45:18', '2018-04-03 09:38:38', '2018-03-31 07:52:30', 17501, 31379, 31379, 10049, 'Java', 'iluwatar');
INSERT INTO `tb_repository` VALUES (23095954, 'RxAndroid', 'ReactiveX/RxAndroid', 'RxJava bindings for Android', '2014-08-19 03:46:38', '2018-04-03 06:45:05', '2018-04-01 04:54:27', 797, 15505, 15505, 2526, 'Java', 'ReactiveX');
INSERT INTO `tb_repository` VALUES (26102180, 'material-dialogs', 'afollestad/material-dialogs', 'A beautiful, fluid, and customizable dialogs API.', '2014-11-03 03:21:42', '2018-04-03 09:20:51', '2018-03-27 08:31:46', 154046, 12892, 12892, 2365, 'Java', 'afollestad');
INSERT INTO `tb_repository` VALUES (31533997, 'fresco', 'facebook/fresco', 'An Android library for managing images and the memory they use.', '2015-03-02 09:58:04', '2018-04-03 07:33:03', '2018-03-30 14:14:23', 66343, 14322, 14322, 3536, 'Java', 'facebook');
INSERT INTO `tb_repository` VALUES (34824499, 'leakcanary', 'square/leakcanary', 'A memory leak detection library for Android and Java.', '2015-04-29 23:54:16', '2018-04-03 09:41:28', '2018-04-01 02:31:08', 24731, 18964, 18964, 3048, 'Java', 'square');
INSERT INTO `tb_repository` VALUES (55886798, 'BaseRecyclerViewAdapterHelper', 'CymChad/BaseRecyclerViewAdapterHelper', 'BRVAH:Powerful and flexible RecyclerAdapter', '2016-04-10 07:40:11', '2018-04-03 09:24:43', '2018-04-02 11:27:27', 61875, 12820, 12820, 2803, 'Java', 'CymChad');
INSERT INTO `tb_repository` VALUES (64558143, 'AndroidUtilCode', 'Blankj/AndroidUtilCode', ':fire: Android developers should collect the following utils(updating).', '2016-07-30 18:18:32', '2018-04-03 08:39:15', '2018-04-02 15:03:29', 9026, 17107, 17107, 5539, 'Java', 'Blankj');
INSERT INTO `tb_repository` VALUES (70198875, 'lottie-android', 'airbnb/lottie-android', 'Render After Effects animations natively on Android and iOS, Web, and React Native', '2016-10-06 22:42:42', '2018-04-03 09:34:33', '2018-04-02 22:42:09', 127679, 19803, 19803, 2997, 'Java', 'airbnb');
INSERT INTO `tb_repository` VALUES (81975372, 'interviews', 'kdn251/interviews', 'Everything you need to know to get the job.', '2017-02-14 18:19:25', '2018-04-03 09:30:19', '2018-04-03 03:41:24', 19450, 21292, 21292, 3486, 'Java', 'kdn251');

SET FOREIGN_KEY_CHECKS = 1;
