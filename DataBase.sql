/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - practice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`practice` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `practice`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(20) DEFAULT NULL,
  `veh_no` varchar(10) DEFAULT NULL,
  `booking_date` varchar(10) DEFAULT NULL,
  `booking_time` varchar(10) DEFAULT NULL,
  `excp_duration` varchar(10) DEFAULT NULL,
  `return_date` varchar(10) DEFAULT NULL,
  `return_time` varchar(10) DEFAULT NULL,
  `payble_amt` float DEFAULT NULL,
  `dsc_amt` float DEFAULT NULL,
  `booking_date_time` varchar(50) DEFAULT NULL,
  `return_date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`booking_id`,`cust_id`,`veh_no`,`booking_date`,`booking_time`,`excp_duration`,`return_date`,`return_time`,`payble_amt`,`dsc_amt`,`booking_date_time`,`return_date_time`) values (1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'8989787867','up52','12-12-11','12:23','4','2023-12-05','12:00',20000,1522,'Sat Feb 25 15:18:28 IST 2023',NULL),(3,'8989787867','up53','2022-12-12','12:00','5',NULL,NULL,NULL,NULL,'Sat Feb 25 14:30:47 IST 2023',NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `mobile` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Adhar` int(12) DEFAULT NULL,
  `dlno` varchar(20) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `addr` varchar(30) DEFAULT NULL,
  `alt_mob` int(10) DEFAULT NULL,
  `Ref_Name` varchar(20) DEFAULT NULL,
  `Ref_Number` int(10) DEFAULT NULL,
  `rel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`mobile`,`name`,`Adhar`,`dlno`,`mail`,`addr`,`alt_mob`,`Ref_Name`,`Ref_Number`,`rel`) values (2147483647,'mantuyadav',2147483647,'cgh1232','abc@123','noida',2147483647,'mohan',2147483647,'brother');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `User` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`User`,`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`User`,`Password`) values ('analyze','1234');

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vehicle_Number` varchar(15) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `catg` varchar(10) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `own_mob` decimal(10,0) DEFAULT NULL,
  `own_addr` varchar(100) DEFAULT NULL,
  `rent_amt` decimal(65,0) DEFAULT NULL,
  `dsc` decimal(65,0) DEFAULT NULL,
  `veh_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

insert  into `vehicle`(`vehicle_Number`,`name`,`catg`,`color`,`owner`,`own_mob`,`own_addr`,`rent_amt`,`dsc`,`veh_status`) values ('up52','car','syz','red','mant','638442','rampuit','4255','141','0'),('101','a','a','a','a','1234567890','a','100','100','1'),('101','a','a','a','a','1234567890','a','100','100','1'),('up53','truck','','pink','mantu','6388978442','vill-Rampur dullah','3400','120','0'),('up53','truck','','pink','mantu','6388978442','vill-Rampur dullah','3400','120','0'),('up55','bolero','4 wheeler','red','mantu','6388978442','vill-rmaurei','1233','100','1'),('up57ad1212','car','car','blue','mantu','1020304050','lucknow',NULL,NULL,NULL),('up57','bolero','4 wheeler','red','mantu','6388978442','vill-rmaurei','1233','100','1'),('up57','bolero','4 wheeler','red','mantu','6388978442','vill-rmaurei','1233','100','1'),('up32','cycle','4 wheeler','black','shyam ','9877455645','vill-patna ','5000','200','1'),('up32','cycle','4 wheeler','black','shyam ','9877455645','vill-patna ','5000','200','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
