# MySQL-Front 3.2  (Build 10.6)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40111 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;

/*!40101 SET NAMES latin1 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
SET AUTOCOMMIT=0;
BEGIN;

# Host: localhost    Database: cms369
# ------------------------------------------------------
# Server version 5.0.18-nt

DROP DATABASE IF EXISTS `cms369`;
CREATE DATABASE `cms369` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cms369`;

/*!40101 SET NAMES utf8 */;

#
# Table structure for table admin
#

CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL default '',
  `pwd` varchar(16) NOT NULL default '',
  `level` varchar(50) default NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table admin
#

INSERT INTO `admin` VALUES (1,'admin','admin','1,2,3,4,5,6,8,9','admin@java.com');
INSERT INTO `admin` VALUES (2,'xh','xh','1,2','xh@j2ee.com');


#
# Table structure for table articles
#

CREATE TABLE `articles` (
  `id` int(11) NOT NULL auto_increment,
  `bigclassid` int(11) NOT NULL default '0',
  `content` text NOT NULL,
  `smallclassid` int(11) NOT NULL default '0',
  `title` varchar(30) NOT NULL default '',
  `deploytime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `picpath` text,
  PRIMARY KEY  (`id`),
  KEY `bigclassid` (`bigclassid`),
  KEY `smallclassid` (`smallclassid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table articles
#

INSERT INTO `articles` VALUES (1,1,'Sun\r\n',1,'Microsoft','2007-01-09 13:31:55',NULL);
INSERT INTO `articles` VALUES (2,1,'sun',1,'a','2007-03-04 10:21:39',NULL);
INSERT INTO `articles` VALUES (3,1,'sun',1,'sun','2007-03-04 10:21:47',NULL);
INSERT INTO `articles` VALUES (4,1,'sun',1,'sun','2007-03-04 10:21:54',NULL);
INSERT INTO `articles` VALUES (5,1,'sun',1,'sun','2007-03-04 10:22:02',NULL);
INSERT INTO `articles` VALUES (6,1,'sun',1,'sun','2007-03-04 10:22:10',NULL);
INSERT INTO `articles` VALUES (7,1,'sun',1,'sun','2007-03-04 10:22:17',NULL);
INSERT INTO `articles` VALUES (8,1,'sun',1,'sun','2007-03-04 10:22:31',NULL);
INSERT INTO `articles` VALUES (9,1,'sun',1,'sun','2007-03-04 10:22:38',NULL);
INSERT INTO `articles` VALUES (10,1,'sun',1,'sun','2007-03-04 10:23:02',NULL);
INSERT INTO `articles` VALUES (11,1,'sun',1,'sun','2007-03-04 10:23:13',NULL);
INSERT INTO `articles` VALUES (12,1,'sun',1,'sun','2007-03-04 10:23:21',NULL);
INSERT INTO `articles` VALUES (13,1,'Dd',1,'s','2007-03-04 10:23:35',NULL);
INSERT INTO `articles` VALUES (14,1,'dd',1,'ss','2007-03-04 10:23:42',NULL);
INSERT INTO `articles` VALUES (15,1,'aa',1,'aa','2007-03-04 10:23:55',NULL);
INSERT INTO `articles` VALUES (16,1,'qq',2,'ss','2007-03-04 11:15:27',NULL);
INSERT INTO `articles` VALUES (17,1,'dd',1,'dd','2001-04-10 18:16:45',NULL);
INSERT INTO `articles` VALUES (18,1,'Dd',2,'dd','2001-04-10 18:16:56',NULL);
INSERT INTO `articles` VALUES (19,1,'ddd',1,'dd','2001-04-10 18:17:05',NULL);
INSERT INTO `articles` VALUES (20,1,'dd',2,'dd','2001-04-10 18:17:22',NULL);
INSERT INTO `articles` VALUES (21,1,'dd',1,'dd','2001-04-10 18:17:31',NULL);


#
# Table structure for table bigclasses
#

CREATE TABLE `bigclasses` (
  `id` int(11) NOT NULL auto_increment,
  `bigclassname` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table bigclasses
#

INSERT INTO `bigclasses` VALUES (1,'Sun');
INSERT INTO `bigclasses` VALUES (2,'aa');


#
# Table structure for table popedoms
#

CREATE TABLE `popedoms` (
  `id` int(11) NOT NULL auto_increment,
  `popedom` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table popedoms
#

INSERT INTO `popedoms` VALUES (1,'1');
INSERT INTO `popedoms` VALUES (2,'2');
INSERT INTO `popedoms` VALUES (3,'3');
INSERT INTO `popedoms` VALUES (4,'4');
INSERT INTO `popedoms` VALUES (5,'5');
INSERT INTO `popedoms` VALUES (6,'6');
INSERT INTO `popedoms` VALUES (7,'7');
INSERT INTO `popedoms` VALUES (8,'8');
INSERT INTO `popedoms` VALUES (9,'9');


#
# Table structure for table productbigclasses
#

CREATE TABLE `productbigclasses` (
  `id` int(11) NOT NULL auto_increment,
  `bigclassname` varchar(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table productbigclasses
#

INSERT INTO `productbigclasses` VALUES (1,'bigname');


#
# Table structure for table products
#

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `productname` varchar(11) NOT NULL,
  `bigclassid` int(11) NOT NULL default '0',
  `smallclassid` int(11) NOT NULL default '0',
  `productpic` varchar(100) NOT NULL,
  `producefactory` varchar(11) NOT NULL,
  `productmodel` varchar(11) NOT NULL,
  `marketprice` int(1) NOT NULL default '0',
  `preferentialprice` int(1) NOT NULL default '0',
  `vouch` varchar(11) default NULL,
  `newproduct` varchar(11) default NULL,
  `introduct` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table products
#

INSERT INTO `products` VALUES (1,'TCL',1,1,'4888.gif\r\n','Hisence','A1',1000,800,'true','true','Hisence Very Good\r\n');


#
# Table structure for table productsmallclasses
#

CREATE TABLE `productsmallclasses` (
  `id` int(11) NOT NULL auto_increment,
  `smallclassname` varchar(11) NOT NULL,
  `bigclass_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table productsmallclasses
#

INSERT INTO `productsmallclasses` VALUES (1,'no small',1);


#
# Table structure for table smallclasses
#

CREATE TABLE `smallclasses` (
  `id` int(11) NOT NULL auto_increment,
  `smallclassname` varchar(20) NOT NULL default '',
  `bigclass_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `bigclass_id` (`bigclass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table smallclasses
#

INSERT INTO `smallclasses` VALUES (1,'JSP',1);
INSERT INTO `smallclasses` VALUES (2,'xx',1);
INSERT INTO `smallclasses` VALUES (3,'cc',2);


#
# View structure for view articlesviews
#

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `articlesviews` AS select sql_no_cache `articles`.`id` AS `id`,`articles`.`title` AS `title`,`bigclasses`.`bigclassname` AS `bigclassname`,`smallclasses`.`smallclassname` AS `smallclassname`,`articles`.`deploytime` AS `deploytime` from ((`articles` left join `bigclasses` on((`articles`.`bigclassid` = `bigclasses`.`id`))) left join `smallclasses` on((`articles`.`smallclassid` = `smallclasses`.`id`)));



#
# View structure for view productsviews
#

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productsviews` AS select sql_no_cache `products`.`id` AS `id`,`products`.`productname` AS `productname`,`productbigclasses`.`bigclassname` AS `bigclassname`,`productsmallclasses`.`smallclassname` AS `smallclassname`,`products`.`productmodel` AS `productmodel`,`products`.`marketprice` AS `marketprice`,`products`.`preferentialprice` AS `preferentialprice`,`products`.`vouch` AS `vouch`,`products`.`newproduct` AS `newproduct`,`products`.`introduct` AS `introduct` from ((`products` left join `productbigclasses` on((`products`.`bigclassid` = `productbigclasses`.`id`))) left join `productsmallclasses` on((`products`.`smallclassid` = `productsmallclasses`.`id`)));



#
#  Foreign keys for table articles
#

ALTER TABLE `articles`
  ADD FOREIGN KEY (`bigclassid`) REFERENCES `bigclasses` (`id`),
  ADD FOREIGN KEY (`smallclassid`) REFERENCES `smallclasses` (`id`);

#
#  Foreign keys for table smallclasses
#

ALTER TABLE `smallclasses`
  ADD FOREIGN KEY (`bigclass_id`) REFERENCES `bigclasses` (`id`);

/*!40101 SET NAMES latin1 */;

COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
