/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.73-community : Database - noticeboard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`noticeboard` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `noticeboard`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`pass`,`name`) values (1,'admin','admin','ADMIN');

/*Table structure for table `notice_board` */

DROP TABLE IF EXISTS `notice_board`;

CREATE TABLE `notice_board` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) NOT NULL,
  `notice` varchar(5000) NOT NULL,
  `raised_by` int(10) NOT NULL,
  `notice_date` datetime NOT NULL,
  `notice_format` enum('FILE','TEXT') NOT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `mail_sent` tinyint(1) DEFAULT NULL,
  `msg_sent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `notice_board` */

insert  into `notice_board`(`id`,`subject`,`notice`,`raised_by`,`notice_date`,`notice_format`,`file_path`,`mail_sent`,`msg_sent`) values (1,'Test Email','This is a Test notice ...',1,'2014-11-21 03:27:40','TEXT',NULL,NULL,NULL);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `redg_no` varchar(15) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `acedamic_year` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`id`,`redg_no`,`pass`,`name`,`contact_no`,`email`,`acedamic_year`) values (1,'0811017176','pass','Sheetam','9090195053','sheetam.jena.1990@gmail.com',2012);
insert  into `student`(`id`,`redg_no`,`pass`,`name`,`contact_no`,`email`,`acedamic_year`) values (2,'0811017181','pass','Kampa','7795343893','biswajit750@gmail.com',2012);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
