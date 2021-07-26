/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - registration_module
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`registration_module` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `registration_module`;

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (3);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (2,'ROLE_USER');

/*Table structure for table `user_model` */

DROP TABLE IF EXISTS `user_model`;

CREATE TABLE `user_model` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UKla8xty622mpbfdhq2iixt9lhu` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_model` */

insert  into `user_model`(`id`,`email`,`first_name`,`last_name`,`password`) values (1,'raj@gmail.com','raj','kumar','$2a$10$z1xxXBA4BHM/AErqiPY/p.lF6aqCHBb2/DMuLN7RT676V3UNm0bUi');

/*Table structure for table `users_roles` */

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FK3eyydqxa8pb334clyes4acjxq` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users_roles` */

insert  into `users_roles`(`user_id`,`role_id`) values (1,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
