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

 Date: 29/03/2018 17:42:02
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
INSERT INTO `tb_developer` VALUES (1, 'mojombo', NULL, 'https://avatars0.githubusercontent.com/u/1?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (175, 'tommorris', NULL, 'https://avatars0.githubusercontent.com/u/175?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (565, 'tomtaylor', NULL, 'https://avatars2.githubusercontent.com/u/565?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (748, 'tom', NULL, 'https://avatars1.githubusercontent.com/u/748?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (1287, 'tomafro', NULL, 'https://avatars3.githubusercontent.com/u/1287?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (1678, 'alltom', NULL, 'https://avatars0.githubusercontent.com/u/1678?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (3010, 'subblue', NULL, 'https://avatars3.githubusercontent.com/u/3010?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (6635, 'tomdee', NULL, 'https://avatars2.githubusercontent.com/u/6635?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (8482, 'tominsam', NULL, 'https://avatars2.githubusercontent.com/u/8482?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (11125, 'almost', NULL, 'https://avatars0.githubusercontent.com/u/11125?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (21292, 'twilson63', NULL, 'https://avatars3.githubusercontent.com/u/21292?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (32314, 'tmcw', NULL, 'https://avatars2.githubusercontent.com/u/32314?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (39635, 'RandomEtc', NULL, 'https://avatars0.githubusercontent.com/u/39635?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (59207, 'tomster', NULL, 'https://avatars3.githubusercontent.com/u/59207?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (70184, 'tomschlick', NULL, 'https://avatars2.githubusercontent.com/u/70184?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (83974, 'Knio', NULL, 'https://avatars2.githubusercontent.com/u/83974?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (85085, 'tomwhite', NULL, 'https://avatars3.githubusercontent.com/u/85085?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (90888, 'tomdale', NULL, 'https://avatars2.githubusercontent.com/u/90888?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (132166, 'tommcfarlin', NULL, 'https://avatars0.githubusercontent.com/u/132166?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (132554, 'tmeasday', NULL, 'https://avatars1.githubusercontent.com/u/132554?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (155977, 'ToJans', NULL, 'https://avatars1.githubusercontent.com/u/155977?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (160835, 'tombh', NULL, 'https://avatars2.githubusercontent.com/u/160835?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (163497, 'tomrittervg', NULL, 'https://avatars3.githubusercontent.com/u/163497?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (214628, 'tnajdek', NULL, 'https://avatars3.githubusercontent.com/u/214628?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (238331, 'brow', NULL, 'https://avatars1.githubusercontent.com/u/238331?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (945979, 'dribnet', NULL, 'https://avatars3.githubusercontent.com/u/945979?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (1027207, 'orf', NULL, 'https://avatars1.githubusercontent.com/u/1027207?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (1557670, 'tromey', NULL, 'https://avatars3.githubusercontent.com/u/1557670?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (5884902, 'thomasJang', NULL, 'https://avatars0.githubusercontent.com/u/5884902?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_developer` VALUES (11340361, 'thomascchen', NULL, 'https://avatars0.githubusercontent.com/u/11340361?v=4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
INSERT INTO `tb_repository` VALUES (36502, 'git', 'git/git', 'Git Source Code Mirror - This is a publish-only repository and all pull requests are ignored. Please follow Documentation/SubmittingPatches procedure for any of your improvements.', '2008-07-23 14:21:26', '2018-03-28 07:26:10', '2018-03-28 06:14:03', 110953, 21573, 21573, 12558, 'C', 'git');
INSERT INTO `tb_repository` VALUES (156018, 'redis', 'antirez/redis', 'Redis is an in-memory database that persists on disk. The data model is key-value, but many different kind of values are supported: Strings, Lists, Sets, Sorted Sets, Hashes, HyperLogLogs, Bitmaps.', '2009-03-21 22:32:25', '2018-03-28 07:54:58', '2018-03-26 16:04:16', 71664, 28197, 28197, 10842, 'C', 'antirez');
INSERT INTO `tb_repository` VALUES (167174, 'jquery', 'jquery/jquery', 'jQuery JavaScript Library', '2009-04-03 15:20:14', '2018-03-29 02:24:09', '2018-03-27 19:50:43', 27761, 48493, 48493, 15155, 'JavaScript', 'jquery');
INSERT INTO `tb_repository` VALUES (184981, 'memcached', 'memcached/memcached', 'memcached development tree', '2009-04-24 23:34:25', '2018-03-28 03:41:06', '2018-03-28 02:18:46', 7443, 7511, 7511, 2313, 'C', 'memcached');
INSERT INTO `tb_repository` VALUES (237159, 'express', 'expressjs/express', 'Fast, unopinionated, minimalist web framework for node.', '2009-06-26 18:56:01', '2018-03-29 02:46:53', '2018-03-21 11:18:24', 8671, 37398, 37398, 6668, 'JavaScript', 'expressjs');
INSERT INTO `tb_repository` VALUES (301742, 'tornado', 'tornadoweb/tornado', 'Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed.', '2009-09-09 04:55:16', '2018-03-28 06:23:42', '2018-03-27 11:08:00', 7727, 15417, 15417, 4497, 'Python', 'tornadoweb');
INSERT INTO `tb_repository` VALUES (460078, 'angular.js', 'angular/angular.js', 'AngularJS - HTML enhanced for web apps!', '2010-01-06 00:34:37', '2018-03-28 21:03:19', '2018-03-28 20:24:35', 98365, 58184, 58184, 28867, 'JavaScript', 'angular');
INSERT INTO `tb_repository` VALUES (486550, 'html5-boilerplate', 'h5bp/html5-boilerplate', 'A professional front-end template for building fast, robust, and adaptable web apps or sites.', '2010-01-24 18:03:24', '2018-03-29 01:39:40', '2018-03-20 02:49:48', 13669, 40056, 40056, 9589, 'JavaScript', 'h5bp');
INSERT INTO `tb_repository` VALUES (529502, 'scrapy', 'scrapy/scrapy', 'Scrapy, a fast high-level web crawling & scraping framework for Python.', '2010-02-22 02:01:14', '2018-03-28 05:27:08', '2018-03-27 20:23:18', 16072, 26415, 26415, 6629, 'Python', 'scrapy');
INSERT INTO `tb_repository` VALUES (557980, 'socket.io', 'socketio/socket.io', 'Realtime application framework (Node.JS server)', '2010-03-11 18:24:48', '2018-03-29 01:42:50', '2018-03-19 21:33:02', 12256, 40265, 40265, 7584, 'JavaScript', 'socketio');
INSERT INTO `tb_repository` VALUES (569041, 'curl', 'curl/curl', 'A command line tool and library for transferring data with URL syntax, supporting HTTP, HTTPS, FTP, FTPS, GOPHER, TFTP, SCP, SFTP, SMB, TELNET, DICT, LDAP, LDAPS, FILE, IMAP, SMTP, POP3, RTSP and RTMP. libcurl offers a myriad of powerful features', '2010-03-18 22:32:22', '2018-03-28 07:25:49', '2018-03-27 22:13:39', 51972, 7848, 7848, 2240, 'C', 'curl');
INSERT INTO `tb_repository` VALUES (576201, 'three.js', 'mrdoob/three.js', 'JavaScript 3D library.', '2010-03-23 18:58:01', '2018-03-29 02:42:02', '2018-03-29 01:54:48', 594638, 40471, 40471, 15066, 'JavaScript', 'mrdoob');
INSERT INTO `tb_repository` VALUES (596892, 'flask', 'pallets/flask', 'The Python micro framework for building web applications.', '2010-04-06 11:11:59', '2018-03-28 06:11:29', '2018-03-26 19:07:09', 5996, 34219, 34219, 10516, 'Python', 'pallets');
INSERT INTO `tb_repository` VALUES (843222, 'scikit-learn', 'scikit-learn/scikit-learn', 'scikit-learn: machine learning in Python', '2010-08-17 09:43:38', '2018-03-28 06:16:06', '2018-03-28 02:47:33', 89713, 26926, 26926, 13533, 'Python', 'scikit-learn');
INSERT INTO `tb_repository` VALUES (873328, 'sentry', 'getsentry/sentry', 'Sentry is a cross-platform crash reporting and aggregation platform.', '2010-08-30 22:06:41', '2018-03-28 03:09:48', '2018-03-28 03:08:35', 81680, 16099, 16099, 1919, 'Python', 'getsentry');
INSERT INTO `tb_repository` VALUES (919161, 'Arduino', 'arduino/Arduino', 'open-source electronics prototyping platform', '2010-09-17 19:10:36', '2018-03-27 17:48:26', '2018-03-27 05:55:46', 1359030, 7909, 7909, 6179, 'C', 'arduino');
INSERT INTO `tb_repository` VALUES (943149, 'd3', 'd3/d3', 'Bring data to life with SVG, Canvas and HTML. :bar_chart::chart_with_upwards_trend::tada:', '2010-09-27 17:22:42', '2018-03-29 02:20:17', '2018-03-28 17:05:13', 36055, 74238, 74238, 18997, 'JavaScript', 'd3');
INSERT INTO `tb_repository` VALUES (1039520, 'youtube-dl', 'rg3/youtube-dl', 'Command-line program to download videos from YouTube.com and other video sites', '2010-10-31 14:35:07', '2018-03-28 03:35:50', '2018-03-27 21:05:49', 52091, 35333, 35333, 6484, 'Python', 'rg3');
INSERT INTO `tb_repository` VALUES (1334369, 'resume.github.com', 'resume/resume.github.com', 'Resumes generated using the GitHub informations', '2011-02-06 13:39:55', '2018-03-29 02:21:58', '2018-03-20 09:18:35', 411, 35440, 35440, 932, 'JavaScript', 'resume');
INSERT INTO `tb_repository` VALUES (1357796, 'emscripten', 'kripken/emscripten', 'Emscripten: An LLVM-to-JavaScript Compiler', '2011-02-12 05:23:30', '2018-03-28 07:33:10', '2018-03-28 02:49:42', 158558, 14325, 14325, 1704, 'C', 'kripken');
INSERT INTO `tb_repository` VALUES (1362490, 'requests', 'requests/requests', 'Python HTTP Requests for Humans™ ✨🍰✨', '2011-02-13 18:38:17', '2018-03-28 06:05:05', '2018-03-27 21:38:45', 9666, 31367, 31367, 5795, 'Python', 'requests');
INSERT INTO `tb_repository` VALUES (1424470, 'moment', 'moment/moment', 'Parse, validate, manipulate, and display dates in javascript.', '2011-03-01 02:46:06', '2018-03-29 02:42:44', '2018-03-28 20:51:43', 16129, 36161, 36161, 5396, 'JavaScript', 'moment');
INSERT INTO `tb_repository` VALUES (1614410, 'FFmpeg', 'FFmpeg/FFmpeg', 'mirror of git://source.ffmpeg.org/ffmpeg.git', '2011-04-14 14:12:38', '2018-03-28 06:53:52', '2018-03-28 05:00:29', 208477, 10235, 10235, 4351, 'C', 'FFmpeg');
INSERT INTO `tb_repository` VALUES (1861458, 'reveal.js', 'hakimel/reveal.js', 'The HTML Presentation Framework', '2011-06-07 18:54:22', '2018-03-29 02:40:47', '2018-03-27 12:21:47', 8081, 39583, 39583, 11731, 'JavaScript', 'hakimel');
INSERT INTO `tb_repository` VALUES (1903522, 'php-src', 'php/php-src', 'The PHP Interpreter', '2011-06-16 01:52:25', '2018-03-28 07:43:18', '2018-03-28 07:10:52', 313390, 16850, 16850, 4734, 'C', 'php');
INSERT INTO `tb_repository` VALUES (2325298, 'linux', 'torvalds/linux', 'Linux kernel source tree', '2011-09-04 22:48:12', '2018-03-28 07:36:56', '2018-03-28 01:40:36', 2109616, 56920, 56920, 20932, 'C', 'torvalds');
INSERT INTO `tb_repository` VALUES (2810455, 'the_silver_searcher', 'ggreer/the_silver_searcher', 'A code-searching tool similar to ack, but faster.', '2011-11-19 19:50:47', '2018-03-28 07:55:55', '2018-03-22 17:30:19', 2347, 14798, 14798, 951, 'C', 'ggreer');
INSERT INTO `tb_repository` VALUES (3065454, 'impress.js', 'impress/impress.js', 'It\'s a presentation framework based on the power of CSS3 transforms and transitions in modern browsers and inspired by the idea behind prezi.com.', '2011-12-28 22:23:19', '2018-03-28 18:12:35', '2018-03-19 14:21:43', 4156, 33286, 33286, 6768, 'JavaScript', 'impress');
INSERT INTO `tb_repository` VALUES (3214406, 'meteor', 'meteor/meteor', 'Meteor, the JavaScript App Platform', '2012-01-19 01:58:17', '2018-03-29 02:33:34', '2018-03-28 22:35:42', 74416, 39493, 39493, 4979, 'JavaScript', 'meteor');
INSERT INTO `tb_repository` VALUES (3228505, 'atom', 'atom/atom', ':atom: The hackable text editor', '2012-01-20 18:18:21', '2018-03-29 02:43:11', '2018-03-28 22:48:10', 297953, 44166, 44166, 8902, 'JavaScript', 'atom');
INSERT INTO `tb_repository` VALUES (3516624, 'twemproxy', 'twitter/twemproxy', 'A fast, light-weight proxy for memcached and redis', '2012-02-22 16:53:58', '2018-03-28 03:57:35', '2018-03-22 15:16:24', 2151, 7711, 7711, 1486, 'C', 'twitter');
INSERT INTO `tb_repository` VALUES (3544424, 'httpie', 'jakubroztocil/httpie', 'Modern command line HTTP client – user-friendly curl alternative with intuitive UI, JSON support, syntax highlighting, wget-like downloads, extensions, etc.  https://httpie.org', '2012-02-25 12:39:13', '2018-03-28 04:31:37', '2018-03-21 00:58:12', 3682, 34640, 34640, 2361, 'Python', 'jakubroztocil');
INSERT INTO `tb_repository` VALUES (3638964, 'ansible', 'ansible/ansible', 'Ansible is a radically simple IT automation platform that makes your applications and systems easier to deploy. Avoid writing scripts or custom code to deploy and update your applications— automate in a language that approaches plain English, using SSH, with no agents to install on remote systems.', '2012-03-06 14:58:02', '2018-03-28 06:32:30', '2018-03-28 06:25:41', 121884, 29227, 29227, 10633, 'Python', 'ansible');
INSERT INTO `tb_repository` VALUES (3678731, 'webpack', 'webpack/webpack', 'A bundler for javascript and friends. Packs many modules into a few bundled assets. Code Splitting allows to load parts for the application on demand. Through \"loaders,\" modules can be CommonJs, AMD, ES6 modules, CSS, Images, JSON, Coffeescript, LESS, ... and your custom stuff.', '2012-03-10 10:08:14', '2018-03-29 02:47:29', '2018-03-29 00:28:54', 12812, 39219, 39219, 4899, 'JavaScript', 'webpack');
INSERT INTO `tb_repository` VALUES (3774328, 'wrk', 'wg/wrk', 'Modern HTTP benchmarking tool', '2012-03-20 11:12:28', '2018-03-28 04:52:12', '2018-03-27 01:57:50', 20080, 15295, 15295, 1234, 'C', 'wg');
INSERT INTO `tb_repository` VALUES (3955647, 'lodash', 'lodash/lodash', 'A modern JavaScript utility library delivering modularity, performance, & extras.', '2012-04-07 04:11:46', '2018-03-29 02:46:45', '2018-03-27 18:23:35', 43902, 30641, 30641, 3211, 'JavaScript', 'lodash');
INSERT INTO `tb_repository` VALUES (4037197, 'YouCompleteMe', 'Valloric/YouCompleteMe', 'A code-completion engine for Vim', '2012-04-16 03:12:14', '2018-03-28 05:39:41', '2018-03-28 00:34:05', 33704, 16068, 16068, 1821, 'Python', 'Valloric');
INSERT INTO `tb_repository` VALUES (4086616, 'shadowsocks', 'shadowsocks/shadowsocks', NULL, '2012-04-20 13:10:49', '2018-03-28 06:32:27', '2018-02-26 09:26:32', 934, 24141, 24141, 15451, 'Python', 'shadowsocks');
INSERT INTO `tb_repository` VALUES (4164482, 'django', 'django/django', 'The Web framework for perfectionists with deadlines.', '2012-04-28 02:47:18', '2018-03-28 05:30:25', '2018-03-28 05:07:00', 175403, 32778, 32778, 13864, 'Python', 'django');
INSERT INTO `tb_repository` VALUES (4578002, 'python-patterns', 'faif/python-patterns', 'A collection of design patterns/idioms in Python', '2012-06-06 21:02:35', '2018-03-28 06:34:29', '2018-03-18 11:26:15', 3433, 14738, 14738, 3399, 'Python', 'faif');
INSERT INTO `tb_repository` VALUES (5101141, 'jq', 'stedolan/jq', 'Command-line JSON processor', '2012-07-18 19:57:25', '2018-03-28 07:23:52', '2018-03-19 14:19:53', 5458, 11032, 11032, 636, 'C', 'stedolan');
INSERT INTO `tb_repository` VALUES (5133949, 'swoole-src', 'swoole/swoole-src', 'Event-driven asynchronous & concurrent & coroutine networking engine with high performance for PHP.', '2012-07-21 13:49:59', '2018-03-28 07:22:27', '2018-03-28 05:57:19', 17627, 8295, 8295, 2042, 'C', 'swoole');
INSERT INTO `tb_repository` VALUES (5483330, 'you-get', 'soimort/you-get', ':arrow_double_down: Dumb downloader that scrapes the web', '2012-08-20 15:53:36', '2018-03-28 06:15:28', '2018-03-26 10:18:49', 2775, 17987, 17987, 3704, 'Python', 'soimort');
INSERT INTO `tb_repository` VALUES (6201092, 'mpv', 'mpv-player/mpv', '🎥 Video player based on MPlayer/mplayer2', '2012-10-13 08:08:44', '2018-03-28 05:39:54', '2018-03-28 01:28:19', 88433, 7580, 7580, 1023, 'C', 'mpv-player');
INSERT INTO `tb_repository` VALUES (6498492, 'javascript', 'airbnb/javascript', 'JavaScript Style Guide', '2012-11-01 23:13:50', '2018-03-29 02:28:50', '2018-03-28 21:15:46', 2626, 68416, 68416, 13060, 'JavaScript', 'airbnb');
INSERT INTO `tb_repository` VALUES (8843683, 'Chart.js', 'chartjs/Chart.js', 'Simple HTML5 Charts using the <canvas> tag', '2013-03-17 23:56:36', '2018-03-29 02:23:38', '2018-03-23 15:51:16', 10003, 35929, 35929, 8602, 'JavaScript', 'chartjs');
INSERT INTO `tb_repository` VALUES (9309093, 'Semantic-UI', 'Semantic-Org/Semantic-UI', 'Semantic is a UI component framework based around useful principles from natural language.', '2013-04-08 23:32:04', '2018-03-29 01:44:10', '2018-03-29 02:46:29', 110545, 40362, 40362, 4366, 'JavaScript', 'Semantic-Org');
INSERT INTO `tb_repository` VALUES (10270250, 'react', 'facebook/react', 'A declarative, efficient, and flexible JavaScript library for building user interfaces.', '2013-05-24 16:15:54', '2018-03-29 02:23:52', '2018-03-29 01:41:43', 135298, 91962, 91962, 17357, 'JavaScript', 'facebook');
INSERT INTO `tb_repository` VALUES (10446890, 'ijkplayer', 'Bilibili/ijkplayer', 'Android/iOS video player based on FFmpeg n3.4, with MediaCodec, VideoToolbox support.', '2013-06-03 04:12:04', '2018-03-28 07:41:16', '2018-02-12 07:29:32', 7987, 18248, 18248, 5160, 'C', 'Bilibili');
INSERT INTO `tb_repository` VALUES (10744183, 'netdata', 'firehol/netdata', 'Get control of your servers. Simple. Effective. Awesome! https://my-netdata.io/', '2013-06-17 18:39:10', '2018-03-28 07:04:06', '2018-03-27 20:49:32', 23284, 28353, 28353, 2369, 'C', 'firehol');
INSERT INTO `tb_repository` VALUES (10894716, 'toxcore', 'irungentoo/toxcore', 'The future of online communications.', '2013-06-24 00:12:13', '2018-03-27 09:06:10', '2018-03-21 14:27:22', 40458, 8354, 8354, 1102, 'C', 'irungentoo');
INSERT INTO `tb_repository` VALUES (11715753, 'masscan', 'robertdavidgraham/masscan', 'TCP port scanner, spews SYN packets asynchronously, scanning entire Internet in under 5 minutes.', '2013-07-28 05:35:33', '2018-03-28 07:43:28', '2018-03-22 09:18:25', 2312, 7826, 7826, 1336, 'C', 'robertdavidgraham');
INSERT INTO `tb_repository` VALUES (11730342, 'vue', 'vuejs/vue', '🖖 A progressive, incrementally-adoptable JavaScript framework for building UI on the web.', '2013-07-29 03:24:51', '2018-03-29 02:47:56', '2018-03-28 02:07:37', 23461, 88644, 88644, 12998, 'JavaScript', 'vuejs');
INSERT INTO `tb_repository` VALUES (13233158, 'obs-studio', 'obsproject/obs-studio', 'OBS - Free and open source software for live streaming and screen recording', '2013-10-01 02:40:31', '2018-03-28 00:55:23', '2018-03-24 04:23:15', 24849, 8919, 8919, 2065, 'C', 'obsproject');
INSERT INTO `tb_repository` VALUES (13677187, 'torch7', 'torch/torch7', 'http://torch.ch', '2013-10-18 12:13:58', '2018-03-28 01:36:32', '2018-02-20 21:38:24', 2582, 7778, 7778, 2256, 'C', 'torch');
INSERT INTO `tb_repository` VALUES (14807173, 'How-to-Make-a-Computer-Operating-System', 'SamyPesse/How-to-Make-a-Computer-Operating-System', 'How to Make a Computer Operating System in C++', '2013-11-29 17:36:32', '2018-03-28 04:32:36', '2017-12-19 08:47:44', 5986, 16944, 16944, 3015, 'C', 'SamyPesse');
INSERT INTO `tb_repository` VALUES (14812739, 'libuv', 'libuv/libuv', 'Cross-platform asynchronous I/O', '2013-11-30 00:29:56', '2018-03-28 07:55:06', '2018-03-28 01:02:02', 12832, 8788, 8788, 1446, 'C', 'libuv');
INSERT INTO `tb_repository` VALUES (15019962, 'tldr', 'tldr-pages/tldr', ':books: Simplified and community-driven man pages', '2013-12-08 07:34:43', '2018-03-28 03:24:20', '2018-03-27 11:35:08', 3155, 16710, 16710, 1224, 'Python', 'tldr-pages');
INSERT INTO `tb_repository` VALUES (15183485, 'The-Art-Of-Programming-By-July', 'julycoding/The-Art-Of-Programming-By-July', '本项目曾冲到全球第一，干货集锦见本页面最底部，另完整精致的纸质版《编程之法：面试和算法心得》已在京东/当当上销售', '2013-12-14 10:00:06', '2018-03-28 07:34:32', '2018-03-23 19:53:41', 27463, 13462, 13462, 5640, 'C', 'julycoding');
INSERT INTO `tb_repository` VALUES (21289110, 'awesome-python', 'vinta/awesome-python', 'A curated list of awesome Python frameworks, libraries, software and resources', '2014-06-27 21:00:06', '2018-03-28 06:28:38', '2018-03-26 16:42:56', 3545, 47622, 47622, 9194, 'Python', 'vinta');
INSERT INTO `tb_repository` VALUES (21872392, 'awesome-machine-learning', 'josephmisiti/awesome-machine-learning', 'A curated list of awesome Machine Learning frameworks, libraries and software.', '2014-07-15 19:11:19', '2018-03-28 06:16:02', '2018-03-26 02:20:16', 1470, 31603, 31603, 7730, 'Python', 'josephmisiti');
INSERT INTO `tb_repository` VALUES (23083156, 'material-ui', 'mui-org/material-ui', 'React components that implement Google\'s Material Design.', '2014-08-18 19:11:54', '2018-03-29 00:36:28', '2018-03-29 00:49:21', 37809, 34418, 34418, 6307, 'JavaScript', 'mui-org');
INSERT INTO `tb_repository` VALUES (23088740, 'axios', 'axios/axios', 'Promise based HTTP client for the browser and node.js', '2014-08-18 22:30:27', '2018-03-29 02:44:08', '2018-03-28 09:44:23', 2659, 38754, 38754, 2714, 'JavaScript', 'axios');
INSERT INTO `tb_repository` VALUES (23974149, 'materialize', 'Dogfalo/materialize', 'Materialize, a CSS Framework based on Material Design', '2014-09-12 19:35:38', '2018-03-29 02:44:32', '2018-03-29 00:42:21', 157513, 32012, 32012, 4444, 'JavaScript', 'Dogfalo');
INSERT INTO `tb_repository` VALUES (26516210, 'certbot', 'certbot/certbot', 'Certbot is EFF\'s tool to obtain certs from Let\'s Encrypt and (optionally) auto-enable HTTPS on your server.  It can also act as a client for any other CA that uses the ACME protocol.', '2014-11-12 02:52:20', '2018-03-28 06:31:35', '2018-03-28 00:33:52', 18170, 21659, 21659, 2031, 'Python', 'certbot');
INSERT INTO `tb_repository` VALUES (27193779, 'node', 'nodejs/node', 'Node.js JavaScript runtime :sparkles::turtle::rocket::sparkles:', '2014-11-26 19:57:11', '2018-03-29 02:39:42', '2018-03-29 02:41:49', 360207, 46945, 46945, 9838, 'JavaScript', 'nodejs');
INSERT INTO `tb_repository` VALUES (28457823, 'freeCodeCamp', 'freeCodeCamp/freeCodeCamp', 'The https://freeCodeCamp.org open source codebase and curriculum. Learn to code and help nonprofits.', '2014-12-24 17:49:19', '2018-03-29 02:46:23', '2018-03-28 15:50:53', 33381, 291834, 291834, 13634, 'JavaScript', 'freeCodeCamp');
INSERT INTO `tb_repository` VALUES (28751632, 'linux-insides', '0xAX/linux-insides', 'A little bit about a linux kernel', '2015-01-03 18:44:57', '2018-03-28 04:34:22', '2018-03-23 19:27:51', 10225, 17174, 17174, 1785, 'Python', '0xAX');
INSERT INTO `tb_repository` VALUES (29028775, 'react-native', 'facebook/react-native', 'A framework for building native apps with React.', '2015-01-09 18:10:16', '2018-03-29 02:36:02', '2018-03-28 22:34:41', 214445, 61852, 61852, 14086, 'JavaScript', 'facebook');
INSERT INTO `tb_repository` VALUES (29290473, 'XX-Net', 'XX-net/XX-Net', 'a web proxy tool', '2015-01-15 09:35:51', '2018-03-28 06:31:55', '2018-03-27 15:53:36', 38198, 21784, 21784, 6500, 'Python', 'XX-net');
INSERT INTO `tb_repository` VALUES (32866454, 'nuklear', 'vurtun/nuklear', 'A single-header ANSI C gui library', '2015-03-25 13:32:06', '2018-03-28 07:37:51', '2018-03-25 07:12:46', 10820, 9820, 9820, 666, 'C', 'vurtun');
INSERT INTO `tb_repository` VALUES (33015583, 'keras', 'keras-team/keras', 'Deep Learning for humans', '2015-03-28 00:35:42', '2018-03-28 06:18:25', '2018-03-27 22:55:53', 10868, 27488, 27488, 10060, 'Python', 'keras-team');
INSERT INTO `tb_repository` VALUES (33614304, 'thefuck', 'nvbn/thefuck', 'Magnificent app which corrects your previous console command.', '2015-04-08 15:08:04', '2018-03-28 06:13:19', '2018-03-22 17:53:07', 2621, 34441, 34441, 1710, 'Python', 'nvbn');
INSERT INTO `tb_repository` VALUES (36205608, 'JSPatch', 'bang590/JSPatch', 'JSPatch bridge Objective-C and Javascript using the Objective-C runtime. You can call any Objective-C class and method in JavaScript by just including a small engine. JSPatch is generally used to hotfix iOS App.', '2015-05-25 02:37:22', '2018-03-28 07:05:15', '2018-03-28 05:02:15', 7865, 10321, 10321, 2157, 'C', 'bang590');
INSERT INTO `tb_repository` VALUES (36535156, 'redux', 'reactjs/redux', 'Predictable state container for JavaScript apps', '2015-05-29 23:53:15', '2018-03-29 02:21:33', '2018-03-28 19:28:13', 5974, 39414, 39414, 9416, 'JavaScript', 'reactjs');
INSERT INTO `tb_repository` VALUES (36836475, 'tmux', 'tmux/tmux', 'tmux source code', '2015-06-03 23:32:55', '2018-03-28 03:03:34', '2018-03-26 09:14:08', 8609, 9681, 9681, 690, 'C', 'tmux');
INSERT INTO `tb_repository` VALUES (39464018, 'incubator-superset', 'apache/incubator-superset', 'Apache Superset (incubating) is a modern, enterprise-ready business intelligence web application', '2015-07-21 18:55:34', '2018-03-28 05:30:47', '2018-03-28 03:20:31', 70061, 18538, 18538, 3060, 'Python', 'apache');
INSERT INTO `tb_repository` VALUES (40416236, 'big-list-of-naughty-strings', 'minimaxir/big-list-of-naughty-strings', 'The Big List of Naughty Strings is a list of strings which have a high probability of causing issues when used as user-input data.', '2015-08-08 20:57:20', '2018-03-28 06:28:41', '2018-03-19 21:19:56', 224, 23525, 23525, 950, 'Python', 'minimaxir');
INSERT INTO `tb_repository` VALUES (40638363, 'GitUp', 'git-up/GitUp', 'The Git interface you\'ve been missing all your life has finally arrived.', '2015-08-13 04:11:10', '2018-03-28 03:16:38', '2018-03-09 19:07:33', 47989, 7391, 7391, 442, 'C', 'git-up');
INSERT INTO `tb_repository` VALUES (40997482, 'vim', 'vim/vim', 'The official Vim repository', '2015-08-18 21:03:56', '2018-03-28 07:15:20', '2018-03-27 21:27:27', 79338, 12116, 12116, 1524, 'C', 'vim');
INSERT INTO `tb_repository` VALUES (41058054, 'CppCoreGuidelines', 'isocpp/CppCoreGuidelines', 'The C++ Core Guidelines are a set of tried-and-true guidelines, rules, and best practices about coding in C++', '2015-08-19 20:22:52', '2018-03-28 03:46:55', '2018-03-27 11:16:33', 22054, 17772, 17772, 2225, 'Python', 'isocpp');
INSERT INTO `tb_repository` VALUES (46629305, 'hacker-scripts', 'NARKOZ/hacker-scripts', 'Based on a true story', '2015-11-21 19:05:09', '2018-03-29 02:27:54', '2018-02-27 15:12:30', 84, 31048, 31048, 5545, 'JavaScript', 'NARKOZ');
INSERT INTO `tb_repository` VALUES (49970642, 'yarn', 'yarnpkg/yarn', '📦🐈 Fast, reliable, and secure dependency management.', '2016-01-19 17:39:16', '2018-03-29 02:09:36', '2018-03-29 02:37:20', 115363, 30894, 30894, 1701, 'JavaScript', 'yarnpkg');
INSERT INTO `tb_repository` VALUES (51117837, 'models', 'tensorflow/models', 'Models and examples built with TensorFlow', '2016-02-05 01:15:20', '2018-03-28 06:34:31', '2018-03-27 23:44:49', 432717, 31634, 31634, 17599, 'Python', 'tensorflow');
INSERT INTO `tb_repository` VALUES (54346799, 'public-apis', 'toddmotto/public-apis', 'A collective list of public JSON APIs for use in web development.', '2016-03-20 23:49:42', '2018-03-28 06:26:12', '2018-03-26 20:19:04', 2073, 34831, 34831, 3281, 'Python', 'toddmotto');
INSERT INTO `tb_repository` VALUES (63537249, 'create-react-app', 'facebook/create-react-app', 'Create React apps with no build configuration.', '2016-07-17 14:55:11', '2018-03-29 02:46:06', '2018-03-28 20:05:09', 5554, 45933, 45933, 9157, 'JavaScript', 'facebook');
INSERT INTO `tb_repository` VALUES (70905478, 'Deep-Learning-Papers-Reading-Roadmap', 'songrotek/Deep-Learning-Papers-Reading-Roadmap', 'Deep Learning papers reading roadmap for anyone who are eager to learn this amazing tech!', '2016-10-14 11:49:48', '2018-03-28 05:05:56', '2018-03-17 02:56:53', 3626, 16508, 16508, 3507, 'Python', 'songrotek');
INSERT INTO `tb_repository` VALUES (74627617, 'openpilot', 'commaai/openpilot', 'open source driving agent', '2016-11-24 01:33:30', '2018-03-28 02:54:28', '2018-03-27 17:37:32', 223493, 7371, 7371, 1774, 'C', 'commaai');
INSERT INTO `tb_repository` VALUES (81598961, 'cpython', 'python/cpython', 'The Python programming language', '2017-02-10 19:23:51', '2018-03-28 05:59:31', '2018-03-28 05:58:28', 232166, 16839, 16839, 4815, 'Python', 'python');
INSERT INTO `tb_repository` VALUES (83222441, 'system-design-primer', 'donnemartin/system-design-primer', 'Learn how to design large-scale systems. Prep for the system design interview.  Includes Anki flashcards.', '2017-02-26 16:15:28', '2018-03-28 06:29:22', '2018-03-26 02:55:13', 4137, 24666, 24666, 3174, 'Python', 'donnemartin');

SET FOREIGN_KEY_CHECKS = 1;
