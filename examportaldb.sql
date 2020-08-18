/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.0.67-community-nt : Database - examportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examportal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `examportal`;

/*Table structure for table `addtest` */

DROP TABLE IF EXISTS `addtest`;

CREATE TABLE `addtest` (
  `idno` int(100) NOT NULL auto_increment,
  `testtype` varchar(600) default NULL,
  `subtest` varchar(600) default NULL,
  `question` varchar(600) default NULL,
  `opa` varchar(600) default NULL,
  `opb` varchar(600) default NULL,
  `opc` varchar(600) default NULL,
  `opd` varchar(600) default NULL,
  `ans` varchar(600) default NULL,
  `description` varchar(600) default NULL,
  KEY `idno` (`testtype`),
  KEY `idno_2` (`idno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `addtest` */

insert  into `addtest`(`idno`,`testtype`,`subtest`,`question`,`opa`,`opb`,`opc`,`opd`,`ans`,`description`) values (1,'Technical','C','C is a','Structured language','Object-oriented language','Machuine language','Assembly language ','A','a very Imp question'),(2,'Technical','C','Which command is used for reading data from keyboard in C language?','Cout','Cin','Printf()','Scanf()','D','hello this is also imp'),(3,'Technical','C','In which year C language was developed?','1951','1962','1972','1947','C','this is relating to basic'),(4,'Technical','C','Which of the following are not i/o functions in c ?','fscanf','fseek','forward','All of the above','A','dfsdfsdfsdfsdsdf'),(5,'Technical','Java','Which method must be defined by a class implementing the java.lang.Runnable interface?','void run()','public void run()','public void start()','void run(int priority)','c','sdfsdf'),(6,'Technical','Java','Which two can be used to create a new Thread?','Extend java.lang.Thread and override the run() method.','Extend java.lang.Runnable and override the start() method.','Implement java.lang.Thread and implement the run() method.','Implement java.lang.Runnable and implement the run() method.','B','SFSDFSDF'),(7,'Technical','Java','	\r\nWhich two statements are true?','Deadlock will not occur if wait()/notify() is used','A thread will resume execution as soon as its sleep duration expires.','Synchronization can prevent two objects from being accessed by the same thread.','The wait() method is overloaded to accept a duration.','A','Both wait() and notify() must be called from a synchronized context.'),(8,'Technical','Java','	\r\nWhich three statements are true?','The default constructor initialises method variables.','The default constructor has the same access as its class.','The default constructor invokes the no-arg constructor of the superclass.','If a class lacks a no-arg constructor, the compiler always creates a default constructor.','A','SDFSDFSDF'),(9,'Technical','DotNet','What namespace does the Web page belong in the .NET Framework class hierarchy?',' System.web.UI.Page','System.Windows.Page','System.Web.page','System.Windows','A','DFSDFSDFSDF'),(10,'Technical','DotNet',' What is the name of the property of ASP.NET page that you can query to determine that a ASP.NET page is being requested not data being submitted to web server?','FirstGet','Initialized','IncludesData','IsPostBack','B','SDFSDFSDFSDF'),(11,'Technical','DotNet','What does Response.End will do?','It will stop the client process','It will stop the server process','None of the above',' will stop the server process','D','SDFDSFSDFSDF'),(12,'Technical','DotNet','When does Garbage collector run?','When application is running low of memory','It runs random','When application is running for more than 15 minutes','None of the above','A','FSDFSDFSDF'),(13,'Technical','CN','Which device can understand difference between data & programs?\r\n','Input device','Output device','Memory','Microprocessor','A','SDFSDFSDF'),(14,'Technical','CN','A computer which links several PCs together in a network is called a\r\n','Minicomputer','Server','Client','Main Frame','B','GGDSFDF'),(15,'Technical','CN','Which of the following storage devices can store maximum amount of data?','Floppy Disk','Hard Disk','Compact Disk','Magneto Optic Disk','C','GGDFSDFSDF'),(16,'Technical','CN','Memory is made up of','Set of wires','Set of circuits','Large number of cells','All of these','A','AAAABBBBCCCC'),(17,'Verbal','Tenses','what is varbal','aaa','bbb','ccc','ddd','A','sdfdf'),(18,'Aptitude','LCMandHCF','aaaa','A','B','C','D','D','ZZZ'),(19,'Aptitude','SimpleInterestandCompoundInterest','sss','A','B','C','D','C','YYY'),(20,'Aptitude','SimpleInterestandCompoundInterest','GGG','A','A','A','A','A','DF'),(21,'Aptitude','SimpleInterestandCompoundInterest','AA','A','A','C','C','D','DFS');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `idno` int(100) default NULL,
  `username` varchar(500) default NULL,
  `comment` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(1000) default NULL,
  `uname` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `contact` varchar(1000) default NULL,
  `type` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `idname` varchar(1000) default NULL,
  `testtype` varchar(1000) default NULL,
  `subtest` varchar(1000) default NULL,
  `score` int(100) default NULL,
  `tot` int(100) default NULL,
  `finsh` varchar(1000) default NULL,
  `date` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `score` */

/*Table structure for table `usertest` */

DROP TABLE IF EXISTS `usertest`;

CREATE TABLE `usertest` (
  `idno` int(100) NOT NULL auto_increment,
  `username` varchar(500) default NULL,
  `testtype` varchar(500) default NULL,
  `subtest` varchar(500) default NULL,
  `time` varchar(500) default NULL,
  `score` varchar(500) default NULL,
  `total` varchar(500) default NULL,
  KEY `idno` (`idno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usertest` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
