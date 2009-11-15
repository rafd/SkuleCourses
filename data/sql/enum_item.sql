-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema courses
--

CREATE DATABASE IF NOT EXISTS courses;
USE courses;

--
-- Definition of table `enum_item`
--

DROP TABLE IF EXISTS `enum_item`;
CREATE TABLE `enum_item` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `descr` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `enum_item_I_1` (`parent_id`),
  KEY `enum_item_I_2` (`descr`),
  CONSTRAINT `enum_item_FK_1` FOREIGN KEY (`parent_id`) REFERENCES `enum_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enum_item`
--

/*!40000 ALTER TABLE `enum_item` DISABLE KEYS */;
INSERT INTO `enum_item` (`id`,`parent_id`,`descr`) VALUES 
 (1,1,''),
 (10,1,'USER_TYPES'),
 (11,10,'Admin'),
 (12,10,'Moderator'),
 (13,10,'Guest'),
 (20,1,'META_RATING_TYPES'),
 (21,20,'Boolean'),
 (22,20,'Scale'),
 (23,20,'Number'),
 (30,1,'RATING_TYPES'),
 (31,22,'3'),
 (32,22,'4'),
 (33,22,'5'),
 (34,22,'6'),
 (35,22,'7'),
 (36,22,'8'),
 (60,1,'EXAM_TYPES'),
 (61,60,'Quiz'),
 (62,60,'Test'),
 (63,60,'Exam'),
 (64,60,'Problem Set'),
 (100,1,'DISCIPLINES'),
 (101,100,'Chemical Engineering'),
 (102,100,'Electrical Engineering'),
 (103,100,'Civil Engineering'),
 (104,100,'Computer Engineering'),
 (105,100,'Engineering Science'),
 (106,100,'Engineering Science - Aerospace Option'),
 (107,100,'Engineering Science - Biomedical Option'),
 (108,100,'Engineering Science - Computer Option'),
 (109,100,'Engineering Science - Electrical Option'),
 (110,100,'Engineering Science - Energy Option'),
 (111,100,'Engineering Science - Infra Option'),
 (112,100,'Engineering Science - Manu Option'),
 (113,100,'Engineering Science - Nano Option'),
 (114,100,'Engineering Science - Physics Option'),
 (115,100,'Environemental Engineering'),
 (116,100,'Industrial Engineering'),
 (117,100,'Materials Engineering'),
 (118,100,'Mechanical Engineering'),
 (119,100,'Mineral Engineering'),
 (120,100,'Track One'),
 (121,100,'Unknown'),
 (122,100,'Computer Engineering - Photonics & Semiconductor'),
 (123,100,'Computer Engineering - EM & Energy Systems'),
 (124,100,'Computer Engineering - Analog & Digital Electronics'),
 (125,100,'Computer Engineering - Control, Comm & Signal Processing'),
 (126,100,'Computer Engineering - Computer Hardware & Networks'),
 (127,100,'Computer Engineering - Software'),
 (128,100,'Electrical Engineering - Photonics & Semiconductor'),
 (129,100,'Electrical Engineering - EM & Energy Systems'),
 (130,100,'Electrical Engineering - Analog & Digital Electronics'),
 (131,100,'Electrical Engineering - Control, Comm & Signal Processing'),
 (132,100,'Electrical Engineering - Computer Hardware & Networks'),
 (133,100,'Electrical Engineering - Software'),
 (134,100,'Engineering Science - Electrical and Computer Option'),
 (200,1,'IMPORT_FILE_TYPES'),
 (201,200,'CSV'),
 (202,200,'XML'),
 (210,1,'EXPORT_FILE_TYPES'),
 (211,210,'CSV'),
 (212,210,'PDF'),
 (213,210,'XLS'),
 (220,1,'MAPPING_ITEMS'),
 (221,220,'Ignore'),
 (222,220,'Course Code'),
 (223,220,'Course Name'),
 (224,220,'Instructor Name'),
 (225,220,'Number Enrolled'),
 (226,220,'Number Response'),
 (227,220,'Question'),
 (228,220,'Question Mean'),
 (229,220,'Question Median'),
 (230,220,'Department Name');
/*!40000 ALTER TABLE `enum_item` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
