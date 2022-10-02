/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.20 : Database - miniproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`miniproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `miniproject`;

/*Table structure for table `application` */

DROP TABLE IF EXISTS `application`;

CREATE TABLE `application` (
  `Job_id` int NOT NULL,
  `Applied_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `application` */

insert  into `application`(`Job_id`,`Applied_user`) values 
(10001,'devendra7'),
(10004,'devendra7');

/*Table structure for table `company_info` */

DROP TABLE IF EXISTS `company_info`;

CREATE TABLE `company_info` (
  `Company_ID` int NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Owner` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact_no.` bigint NOT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  KEY `Company_ID` (`Company_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `company_info` */

insert  into `company_info`(`Company_ID`,`Company_Name`,`Owner`,`Address`,`Contact_no.`,`Email`,`City`,`State`,`Username`,`password`) values 
(106,'Tech Naakish','Naakish Patel','317 BhawarKua',9009873489,NULL,'Indore','M.P','technakish2000','nakishpatel2000');

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `Job_Id` int NOT NULL AUTO_INCREMENT,
  `descrption` varchar(60) NOT NULL,
  `work_field` varchar(10) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `package` varchar(20) NOT NULL,
  `Job_Type` varchar(20) NOT NULL,
  `Posted_by` varchar(30) NOT NULL,
  PRIMARY KEY (`Job_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `job` */

insert  into `job`(`Job_Id`,`descrption`,`work_field`,`Location`,`package`,`Job_Type`,`Posted_by`) values 
(10001,'Manager In Technical Department','MCA','Indore','6.5','Full Time','technakish2000'),
(10004,'Software Engineer','MCA','Haryana','12','Full Time','technakish2000');

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `U_Id` int NOT NULL AUTO_INCREMENT,
  `User_name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Father_name` varchar(50) DEFAULT NULL,
  `Mob_no` bigint NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `qualifi` varchar(2) NOT NULL,
  `course` varchar(10) NOT NULL,
  `University` varchar(60) NOT NULL,
  `year_graduation` int NOT NULL,
  `percentage` int NOT NULL,
  `experience` int DEFAULT NULL,
  `gender` varchar(7) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  KEY `U_Id` (`U_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_info` */

insert  into `user_info`(`U_Id`,`User_name`,`DOB`,`Father_name`,`Mob_no`,`Email`,`qualifi`,`course`,`University`,`year_graduation`,`percentage`,`experience`,`gender`,`Username`,`pass`) values 
(1005,'Devendra Yadav','1999-06-07','Babulal Yadav',8839237805,'dev1999.2011vi@gmail.com','PG','MCA','DAVV',2024,60,2,'Male','devendra7','devendra7');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
