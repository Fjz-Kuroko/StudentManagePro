/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.18 : Database - studentmanage
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentmanage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `studentmanage`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `login` */

insert  into `login`(`username`,`email`,`password`) values ('admin','Fjz_Kuroko@163.com','123456');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `insitute` varchar(20) DEFAULT NULL,
  `majo` varchar(50) DEFAULT NULL,
  `grade` int(4) DEFAULT NULL,
  `clazz` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`sex`,`age`,`insitute`,`majo`,`grade`,`clazz`) values (1002,'李四','男',19,'软件学院','软件工程',2018,1),(1003,'李梅','女',18,'软件学院','软件工程',2018,3),(1004,'王五','男',18,'软件学院','软件工程',2020,9),(1005,'测试1','女',20,'国际商学院','不知道',2018,1),(1006,'测试2','男',25,'职教','幼教',2019,4),(1007,'测试3','女',24,'开院','没有',2017,2),(1008,'测试4','男',56,'计算机学院','计科',2019,5),(1010,'测试6','女',34,'化学学院','化学师范',2018,4),(1011,'测试7','男',13,'物电学院','物联网',2016,5),(1012,'测测测','男',88,'是是是','啥',2019,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
