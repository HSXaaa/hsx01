CREATE DATABASE db_association;

USE `db_association`;

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `info`(`id`,`username`,`password`) values (1,'华南师范大学校读书社','scnudss'),(2,'华南师范大学校社联','scnusl');

DROP TABLE IF EXISTS `basic`;

CREATE TABLE `basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` varchar(50) DEFAULT NULL,
  `setuptime` varchar(50) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `constitutior` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL, 
  `rewandpunish` varchar(100) DEFAULT NULL,
  `infoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_basic` (`infoId`),
  CONSTRAINT `FK_basic` FOREIGN KEY (`infoId`) REFERENCES `info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `principal`;

CREATE TABLE `principal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(50)  NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `classes` varchar(50) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `natives` varchar(50) DEFAULT NULL,
  `politics` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `performance` varchar(50) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `rewandpunish` varchar(100) DEFAULT NULL,
  `infoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_principal` (`infoId`),
  CONSTRAINT `FK_principal` FOREIGN KEY (`infoId`) REFERENCES `info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

insert  into `principal`(`id`,`name`,`sex`,`number`,`college`,`grade`,`major`,`classes`,`nation`,`natives`,`politics`,`phone`,`performance`,`work`,`rewandpunish`,`infoId`) values (1,'陈钰琪','女','20162382000','物电学院','16级','电科','8班','汉族','广东广州','群众','10086','优秀','华南师范大学校读书社社长','2018-2019国家奖学金',1);

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50)   NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `politics` varchar(50) DEFAULT NULL,
  `workplace` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `infoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_teacher` (`infoId`),
  CONSTRAINT `FK_teacher` FOREIGN KEY (`infoId`) REFERENCES `info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

insert  into `teacher` (`id`,`name`,`sex`,`number`,`politics`,`workplace`,`job`,`phone`,`infoId`) values (1,'邓紫棋','女','1008611','群众','华南师范大学','singer','1008612',1);

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `brief` varchar(100) DEFAULT NULL,
  `fiveyear` varchar(100) DEFAULT NULL,
  `lastyear` varchar(100) DEFAULT NULL,
  `nextyear` varchar(100) DEFAULT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `periodical` varchar(100) DEFAULT NULL,
  `infoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_activity` (`infoId`),
  CONSTRAINT `FK_activity` FOREIGN KEY (`infoId`) REFERENCES `info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL,
  `infoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_member` (`infoId`),
  CONSTRAINT `FK_member` FOREIGN KEY (`infoId`) REFERENCES `info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `expenditure`;

CREATE TABLE `expenditure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income` varchar(50) DEFAULT NULL,
  `expend` varchar(50) DEFAULT NULL,
  `lastbudget` varchar(50) DEFAULT NULL,
  `nextbudget` varchar(50) DEFAULT NULL,
  `infoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_expenditure` (`infoId`),
  CONSTRAINT `FK_expenditure` FOREIGN KEY (`infoId`) REFERENCES `info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `unionInfo`;

CREATE TABLE `unionInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `unionInfo`(`id`,`username`,`password`) values (1,'hsxdy123','hsxdy123');