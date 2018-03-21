/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : study

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-03-21 17:43:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_developer
-- ----------------------------
DROP TABLE IF EXISTS `tb_developer`;
CREATE TABLE `tb_developer` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `login` varchar(255) DEFAULT NULL COMMENT '用户名',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `html_url` varchar(255) DEFAULT NULL COMMENT '用户在github上的首页',
  `followers_url` varchar(255) DEFAULT NULL COMMENT '关注你的人',
  `following_url` varchar(255) DEFAULT NULL COMMENT '你关注的人',
  `stared_url` varchar(255) DEFAULT NULL COMMENT '点赞列表',
  `repos_url` varchar(255) DEFAULT NULL COMMENT '仓库列表',
  `company` varchar(255) DEFAULT NULL COMMENT '公司',
  `blog` varchar(255) DEFAULT NULL COMMENT '博客地址',
  `email` varchar(255) DEFAULT NULL COMMENT '电子信箱',
  `bio` varchar(255) DEFAULT NULL COMMENT '个人简历',
  `public_repos` int(11) DEFAULT NULL COMMENT '公开库个数',
  `followers` int(11) DEFAULT NULL COMMENT '被关注数',
  `following` int(11) DEFAULT NULL COMMENT '关注数',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_developer
-- ----------------------------
INSERT INTO `tb_developer` VALUES ('30211186', 'JokeChu', 'WestChu', 'https://avatars1.githubusercontent.com/u/30211186?v=4', 'https://github.com/JokeChu', 'https://api.github.com/users/JokeChu/followers', 'https://api.github.com/users/JokeChu/following{/other_user}', 'https://api.github.com/users/JokeChu/starred{/owner}{/repo}', 'https://api.github.com/users/JokeChu/repos', null, '', null, 'ChangSha of HuNan', '9', '0', '2', '2017-07-16 10:56:24', '2018-03-19 00:55:43');

-- ----------------------------
-- Table structure for tb_repository
-- ----------------------------
DROP TABLE IF EXISTS `tb_repository`;
CREATE TABLE `tb_repository` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '仓库名字',
  `full_name` varchar(255) DEFAULT NULL COMMENT '仓库全名',
  `html_url` varchar(255) DEFAULT NULL COMMENT '该仓库在github上的url',
  `description` varchar(255) DEFAULT NULL COMMENT '仓库项目描述',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `pushed_at` datetime DEFAULT NULL COMMENT '推送时间',
  `git_url` varchar(255) DEFAULT NULL COMMENT 'git该项目地址',
  `ssh_url` varchar(255) DEFAULT NULL COMMENT 'ssh获取该项目地址',
  `clone_url` varchar(255) DEFAULT NULL COMMENT '克隆该项目地址',
  `svn_url` varchar(255) DEFAULT NULL COMMENT 'svn该项目地址',
  `size` int(11) DEFAULT NULL COMMENT '大小',
  `star_count` int(11) DEFAULT NULL COMMENT '点攒数',
  `watchers_count` int(11) DEFAULT NULL COMMENT '关注数',
  `forks_count` int(11) DEFAULT NULL COMMENT '拷贝',
  `language` varchar(255) DEFAULT NULL,
  `developerId` varchar(255) DEFAULT NULL COMMENT '开发者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_repository
-- ----------------------------
