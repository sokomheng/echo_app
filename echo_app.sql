/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.27 : Database - echo_app
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`echo_app` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `echo_app`;

/*Table structure for table `ea_feedback_reply` */

DROP TABLE IF EXISTS `ea_feedback_reply`;

CREATE TABLE `ea_feedback_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `reply_text` text NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ea_created_time` varchar(32) DEFAULT NULL,
  `ea_updated_time` varchar(32) NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `ea_feedback_reply` */

insert  into `ea_feedback_reply`(`reply_id`,`user_id`,`feedback_id`,`reply_text`,`parent_id`,`ea_created_time`,`ea_updated_time`) values (1,1,99,'test description test description',0,'1414710000','1414710000'),(2,1,115,'test tesdfsafdasdfasdfasdfafadf',0,'2014-11-02 17:12:48.466+07','2014-11-02 17:12:48.466+07'),(3,1,130,'this is a test reply description',0,'2014-11-05 21:20:15.56+07','2014-11-05 21:20:15.56+07'),(4,1,1,'this is a test description for test user',0,'2014-11-05 21:20:50.245+07','2014-11-05 21:20:50.245+07'),(5,2,149,'Thank you very much',0,'2014-12-24 00:34:11','2014-12-24 00:34:11'),(6,1,149,'asf',0,'2015-01-13 00:57:22','2015-01-13 00:57:22'),(7,1,154,'fasdfasdfsdfsdfasdf',0,'2015-01-13 03:47:08','2015-01-13 03:47:08'),(8,1,176,'asdfasdf',0,'2015-01-13 03:49:31','2015-01-13 03:49:31'),(9,1,129,'asdfasdfasdfasdf',0,'2015-01-13 08:58:06','2015-01-13 08:58:06'),(10,2,164,'another test reply today\n',0,'2015-01-23 18:48:45','2015-01-23 18:48:45'),(11,8,165,'bip bio',0,'2015-01-23 18:50:21','2015-01-23 18:50:21'),(12,1,173,'test reply for hdbdnk\n',0,'2015-01-29 08:46:06','2015-01-29 08:46:06'),(13,1,173,'asfasdfasdf',0,'2015-01-29 08:46:30','2015-01-29 08:46:30'),(14,1,177,'greeting everyone',0,'2015-01-29 08:51:19','2015-01-29 08:51:19'),(15,1,177,'test everyone subreply',14,'2015-01-29 08:54:42','2015-01-29 08:54:42'),(16,1,177,'test subreply ',14,'2015-01-29 08:54:53','2015-01-29 08:54:53'),(17,1,177,'reply 123',0,'2015-01-29 08:55:10','2015-01-29 08:55:10'),(18,1,177,'subreply subreply',16,'2015-01-29 09:00:37','2015-01-29 09:00:37');

/*Table structure for table `ea_revised_feedback` */

DROP TABLE IF EXISTS `ea_revised_feedback`;

CREATE TABLE `ea_revised_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ea_description` text,
  `ea_created_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ea_revised_feedback` */

insert  into `ea_revised_feedback`(`id`,`feedback_id`,`user_id`,`ea_description`,`ea_created_time`) values (1,173,1,'asdfasdfsdf','2015-01-29 08:50:59');

/*Table structure for table `ea_user` */

DROP TABLE IF EXISTS `ea_user`;

CREATE TABLE `ea_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `ea_first_name` varchar(32) NOT NULL,
  `ea_last_name` varchar(32) NOT NULL,
  `ea_email` varchar(64) DEFAULT NULL,
  `ea_password` varchar(128) DEFAULT NULL,
  `ea_salt` varchar(32) DEFAULT NULL,
  `ea_user_type` varchar(1) NOT NULL COMMENT '1:developer, 0: general user',
  `ea_created_time` varchar(32) NOT NULL,
  `ea_updated_time` varchar(32) NOT NULL,
  `user_image` varchar(128) DEFAULT NULL,
  `sns_id` int(11) DEFAULT '0',
  `ea_token` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `ea_user` */

insert  into `ea_user`(`user_id`,`ea_first_name`,`ea_last_name`,`ea_email`,`ea_password`,`ea_salt`,`ea_user_type`,`ea_created_time`,`ea_updated_time`,`user_image`,`sns_id`,`ea_token`) values (1,'test','user','test11@gmail.com','884cb3446ef753ffedbcd7bfd3ff29c9','xgH06jJ9Z','1','2014-10-31 06:06:31.056+07','2014-10-31 06:06:31.056+07','http://echo.avtostar.kz/assets/upload/profile_img/lZXjYnE_1421675910.jpg',0,''),(2,'John','Dore','dsspls@list.ru','592a9796067ffb2eecccb117635684cd','yO4krt6kX','1','2014-12-24 00:33:40','2014-12-24 00:33:40','http://echo.avtostar.kz/assets/upload/profile_img/K2cy6Kh_1422950590.gif',0,''),(3,'Developer','Case study','issagulov.aristotel@gmail.com','8553f6ce663e0577c5aab0058e32c6bf','v9aOOD51R','1','2015-01-14 19:10:27','2015-01-14 19:10:27',NULL,0,''),(4,'Lee','Cristopher','msjkigood@163.com','',NULL,'','2015-01-20 08:26:43','2015-01-20 08:26:43','http://graph.facebook.com/719532828144667/picture?type=large',0,'1421720803OykutY7CgjDLlmsWkCC1UvqUpnEQckhJ'),(7,'lhspolaris','','','',NULL,'','2015-01-20 11:08:23','2015-01-20 11:08:23','http://pbs.twimg.com/profile_images/3749275716/8709e99c61b7546219e400c8072dbadb_normal.jpeg',0,'14217305035izHLs0LrCfIqQNLynwK07bJJiVJhvR3'),(8,'Jerry','Miers','dsspls@mail.ru','2eaad3ef562aa71900adf3f1a9c361c6','TshcD8rk8','0','2015-01-23 18:49:48','2015-01-23 18:49:48',NULL,0,''),(9,'Phan','Chanry','phanchanry89@gmail.com','',NULL,'','2015-01-28 03:13:45','2015-01-28 03:13:45','http://graph.facebook.com/334572576731879/picture?type=large',0,'1422393225hmuGBqA1oFu4tcX9UvNBhaVoyIFQWtmz');

/*Table structure for table `ea_user_feedback_like` */

DROP TABLE IF EXISTS `ea_user_feedback_like`;

CREATE TABLE `ea_user_feedback_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `feedback_like` int(11) DEFAULT '1' COMMENT '1: like, -1: unlike',
  `ea_created_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `ea_user_feedback_like` */

insert  into `ea_user_feedback_like`(`id`,`user_id`,`feedback_id`,`feedback_like`,`ea_created_time`) values (1,1,173,1,'2015-01-19 17:04:24'),(2,1,134,1,'2015-01-19 19:58:02'),(3,1,136,-1,'2015-01-19 19:58:07'),(4,2,134,1,'2015-01-19 20:18:28'),(5,2,136,1,'2015-01-19 21:58:30'),(6,2,138,1,'2015-01-19 21:58:32'),(7,1,177,1,'2015-01-29 08:44:39');

/*Table structure for table `ea_user_feedback_rate` */

DROP TABLE IF EXISTS `ea_user_feedback_rate`;

CREATE TABLE `ea_user_feedback_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ea_rate1` int(11) NOT NULL DEFAULT '0',
  `ea_rate2` int(11) NOT NULL DEFAULT '0',
  `revised_id` int(11) NOT NULL DEFAULT '0',
  `ea_created_time` varchar(32) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '0' COMMENT 'developer,0: general user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ea_user_feedback_rate` */

insert  into `ea_user_feedback_rate`(`id`,`feedback_id`,`user_id`,`ea_rate1`,`ea_rate2`,`revised_id`,`ea_created_time`,`user_type`) values (1,173,1,5,3,0,'2015-01-29 08:45:44',1);

/*Table structure for table `ea_user_sns` */

DROP TABLE IF EXISTS `ea_user_sns`;

CREATE TABLE `ea_user_sns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ea_sns_type` int(11) NOT NULL COMMENT '1 : FB, 2 : TW',
  `sns_id` varchar(128) NOT NULL,
  `ea_nickname` varchar(64) NOT NULL,
  `ea_email` varchar(128) NOT NULL,
  `ea_photo` varchar(256) NOT NULL,
  `ea_token` varchar(256) NOT NULL,
  `ea_token2` varchar(512) DEFAULT NULL,
  `ea_valid_yn` char(1) NOT NULL DEFAULT 'N',
  `ea_created_time` varchar(19) NOT NULL,
  `ea_updated_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ea_user_sns` */

insert  into `ea_user_sns`(`id`,`user_id`,`ea_sns_type`,`sns_id`,`ea_nickname`,`ea_email`,`ea_photo`,`ea_token`,`ea_token2`,`ea_valid_yn`,`ea_created_time`,`ea_updated_time`) values (1,4,1,'719532828144667','Lee Cristopher','msjkigood@163.com','http://graph.facebook.com/719532828144667/picture?type=large','',NULL,'N','2015-01-20 08:26:43','2015-01-20 08:26:43'),(2,5,2,'329104247','lhspolaris','','http://pbs.twimg.com/profile_images/3749275716/8709e99c61b7546219e400c8072dbadb_normal.jpeg','329104247-P6R5MzlQkcf0ei4U8M8fhoS0kFIe91hQDolbs42a','b8PtvfYnTplXDJKVENyj6jYAGVTv8PTcnmLHl2P3an5zv','N','2015-01-20 11:02:53','2015-01-20 11:02:53'),(3,6,2,'329104247','lhspolaris','','http://pbs.twimg.com/profile_images/3749275716/8709e99c61b7546219e400c8072dbadb_normal.jpeg','329104247-P6R5MzlQkcf0ei4U8M8fhoS0kFIe91hQDolbs42a','b8PtvfYnTplXDJKVENyj6jYAGVTv8PTcnmLHl2P3an5zv','N','2015-01-20 11:05:14','2015-01-20 11:05:14'),(4,7,2,'329104247','lhspolaris','','http://pbs.twimg.com/profile_images/3749275716/8709e99c61b7546219e400c8072dbadb_normal.jpeg','329104247-P6R5MzlQkcf0ei4U8M8fhoS0kFIe91hQDolbs42a','b8PtvfYnTplXDJKVENyj6jYAGVTv8PTcnmLHl2P3an5zv','N','2015-01-20 11:08:23','2015-01-20 11:08:23'),(5,9,1,'334572576731879','Phan Chanry','phanchanry89@gmail.com','http://graph.facebook.com/334572576731879/picture?type=large','',NULL,'N','2015-01-28 03:13:45','2015-01-28 03:13:45');

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `android_id` varchar(32) DEFAULT NULL,
  `device_id` varchar(32) DEFAULT NULL,
  `wireless_mac_address` varchar(32) DEFAULT NULL,
  `timestamp` bigint(20) NOT NULL,
  `android_version` varchar(16) NOT NULL,
  `application_name` text NOT NULL,
  `application_version` varchar(32) NOT NULL,
  `feedback_text` text,
  `feedback_type` int(11) DEFAULT NULL,
  `feedback_duration` int(11) DEFAULT NULL,
  `screenshot` text,
  `annotations_overlay` text,
  `ea_like_count` int(11) NOT NULL DEFAULT '0',
  `ea_unlike_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

/*Data for the table `feedbacks` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;