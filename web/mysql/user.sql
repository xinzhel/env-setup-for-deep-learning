CREATE DATABASE `learnflask`;



DROP TABLE IF EXISTS `user`;

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户uid',
  `firstname` varchar(100) NOT NULL DEFAULT '' COMMENT '名',
  `lastname` varchar(100) NOT NULL DEFAULT '' COMMENT '姓',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `pwdhash` varchar(100) NOT NULL DEFAULT '' COMMENT '登录密码',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
);