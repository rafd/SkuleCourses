﻿# This script creates the default database structure and establishes test data

# This is a fix for InnoDB in MySQL >= 4.1.x
# It "suspends judgement" for fkey relationships until are tables are set.
SET FOREIGN_KEY_CHECKS = 0;

#-----------------------------------------------------------------------------
#-- course
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course`;


CREATE TABLE `course`
(
	`id` VARCHAR(9)  NOT NULL,
	`dept_id` VARCHAR(4)  NOT NULL,
	`descr` VARCHAR(255)  NOT NULL,
	`is_eng` TINYINT default 1 NOT NULL,
	PRIMARY KEY (`id`),
	KEY `course_I_1`(`dept_id`),
	CONSTRAINT `course_FK_1`
		FOREIGN KEY (`dept_id`)
		REFERENCES `department` (`id`)
)Type=InnoDB;

INSERT INTO `course` VALUES ('AER201H1', 'AER', 'Engineering Design', 1);
INSERT INTO `course` VALUES ('MAT194H1', 'MAT', 'Calculus I', 1);
INSERT INTO `course` VALUES ('CIV102H1', 'CIV', 'Introduction to Structures and Materials', 1);
INSERT INTO `course` VALUES ('PHY180H1', 'PHY', 'Classical Mechanics', 1);
INSERT INTO `course` VALUES ('MAT195H1', 'MAT', 'Calculus II', 1);
INSERT INTO `course` VALUES ('ESC102H1', 'ESC', 'Praxis II', 1);
INSERT INTO `course` VALUES ('ESC101H1', 'ESC', 'Praxis I', 1);
INSERT INTO `course` VALUES ('ECE259H1', 'ECE', 'Electricity and Magnetism', 1);
INSERT INTO `course` VALUES ('PHY190H1', 'PHY', 'Special Relativity', 1);
INSERT INTO `course` VALUES ('STA286H1', 'STA', 'Probability and Statistics', 1);

#-----------------------------------------------------------------------------
#-- course_comment
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_comment`;


CREATE TABLE `course_comment`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_id` INTEGER  NOT NULL,
	`course_id` VARCHAR(9)  NOT NULL,
	`comment` TEXT  NOT NULL,
	`input_dt` DATETIME NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `course_comment_FI_1` (`user_id`),
	CONSTRAINT `course_comment_FK_1`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`),
	INDEX `course_comment_FI_2` (`course_id`),
	CONSTRAINT `course_comment_FK_2`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- course_detail
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_detail`;


CREATE TABLE `course_detail`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`detail_descr` TEXT  NOT NULL,
	`first_offered` DATE,
	`last_offered` DATE,
	`course_id` VARCHAR(9)  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `course_detail_I_1`(`course_id`),
	CONSTRAINT `course_detail_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

INSERT INTO `course_detail` VALUES (1, 'VGhpcyBjb3Vyc2UgYWRkcmVzc2VzIG9wZW4tZW5kZWQgYW5kIG11bHRpZGlzY2lwbGluYXJ5IGRlc2lnbiBwcm9ibGVtcywgd2l0aCB0aGUgb2JqZWN0aXZlIG9mIGludGVncmF0aW5nIGRlc2lnbiwgZW5naW5lZXJpbmcgYW5hbHlzaXMsIGFuZCBoYXJkd2FyZSBpbXBsZW1lbnRhdGlvbi4gVGhlIGVtcGhhc2lzIGluIHRoaXMgY291cnNlIGlzIG5vdCBvbiBzdHVkeWluZyBpbiBhIGNsYXNzcm9vbSBmcm9tIGEgbGlzdCBvZiB0b3BpY3MsIGJ1dCByYXRoZXIgaXQgaXMgYSBwcm9qZWN0IGNvdXJzZSwgYWx0aG91Z2ggdGhlIGZ1bmRhbWVudGFscyBvZiBkZXNpZ24gYXMgd2VsbCBhcyBzb21lIHByYWN0aWNhbCB0ZWNobmljYWwgbm90ZXMgd2lsbCBhbHNvIGJlIHRhdWdodCB0aHJvdWdoIHdlZWtseSBsZWN0dXJlcy4gQWZ0ZXIgYSBzZXJpZXMgb2YgbGVjdHVyZXMgc3R1ZGVudHMgd29yayBpbiB0ZWFtcyBvbiBhIHJlYWxpc3RpYyBwcm9qZWN0LiBUaGUgcHJvamVjdHMgYXJlIG9wZW4tZW5kZWQgZGVzaWduIHByb2JsZW1zIHJlbGF0aW5nIHRvIGZpZWxkcyBvZiBlbGVjdHJvbWVjaGFuaWNhbCwgY29tcHV0ZXIgaGFyZHdhcmUgYW5kIHNvZnR3YXJlLCBhbmQgaW5zdHJ1bWVudGF0aW9uIGFuZCBpbnRlcmZhY2luZy4=', 
'1982-01-01', NULL, 'AER201H1');

#-----------------------------------------------------------------------------
#-- course_instructor_assoc
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_instructor_assoc`;


CREATE TABLE `course_instructor_assoc`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`instructor_id` INTEGER  NOT NULL,
	`course_id` VARCHAR(9)  NOT NULL,
	`year` INTEGER  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `course_instructor_assoc_I_1`(`instructor_id`),
	KEY `course_instructor_assoc_I_2`(`course_id`),
	CONSTRAINT `course_instructor_assoc_FK_1`
		FOREIGN KEY (`instructor_id`)
		REFERENCES `instructor` (`id`),
	CONSTRAINT `course_instructor_assoc_FK_2`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
)Type=InnoDB;

INSERT INTO `course_instructor_assoc` VALUES (1, 3, 'MAT194H1', 20089);
INSERT INTO `course_instructor_assoc` VALUES (2, 2, 'CIV102H1', 20089);
INSERT INTO `course_instructor_assoc` VALUES (3, 5, 'AER201H1', 20091);
INSERT INTO `course_instructor_assoc` VALUES (4, 4, 'ESC102H1', 20091);
INSERT INTO `course_instructor_assoc` VALUES (5, 4, 'ESC101H1', 20089);
INSERT INTO `course_instructor_assoc` VALUES (6, 6, 'ESC101H1', 20079);
INSERT INTO `course_instructor_assoc` VALUES (7, 7, 'ECE259H1', 20089);
INSERT INTO `course_instructor_assoc` VALUES (8, 9, 'PHY190H1', 20079);
INSERT INTO `course_instructor_assoc` VALUES (9, 7, 'ECE259H1', 20079);
INSERT INTO `course_instructor_assoc` VALUES (10, 7, 'ECE259H1', 20069);
INSERT INTO `course_instructor_assoc` VALUES (11, 1, 'MAT195H1', 20091);

#-----------------------------------------------------------------------------
#-- course_discipline_assoc
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_discipline_assoc`;


CREATE TABLE `course_discipline_assoc`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`course_id` VARCHAR(9)  NOT NULL,
	`discipline_id` INTEGER  NOT NULL,
	`year_of_study` TINYINT  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `course_discipline_assoc_I_1`(`course_id`),
	KEY `course_discipline_assoc_I_2`(`discipline_id`),
	CONSTRAINT `course_discipline_assoc_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`),
	CONSTRAINT `course_discipline_assoc_FK_2`
		FOREIGN KEY (`discipline_id`)
		REFERENCES `enum_item` (`id`)
)Type=InnoDB;

INSERT INTO `course_discipline_assoc` VALUES (1, 'MAT194H1', 105, 1);
INSERT INTO `course_discipline_assoc` VALUES (2, 'CIV102H1', 105, 1);
INSERT INTO `course_discipline_assoc` VALUES (3, 'AER201H1', 105, 2);
INSERT INTO `course_discipline_assoc` VALUES (4, 'ESC102H1', 105, 1);
INSERT INTO `course_discipline_assoc` VALUES (5, 'ESC101H1', 105, 1);
INSERT INTO `course_discipline_assoc` VALUES (6, 'ECE259H1', 105, 2);
INSERT INTO `course_discipline_assoc` VALUES (7, 'MAT195H1', 105, 1);

#-----------------------------------------------------------------------------
#-- course_rating_data
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_rating_data`;


CREATE TABLE `course_rating_data`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_id` INTEGER  NOT NULL,
	`field_id` INTEGER  NOT NULL,
	`course_ins_id` INTEGER  NOT NULL,
	`rating` TINYINT  NOT NULL,
	`input_dt` DATETIME  NOT NULL,
	PRIMARY KEY (`id`,`course_ins_id`),
	INDEX `course_rating_data_FI_1` (`user_id`),
	CONSTRAINT `course_rating_data_FK_1`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`),
	INDEX `course_rating_data_FI_2` (`field_id`),
	CONSTRAINT `course_rating_data_FK_2`
		FOREIGN KEY (`field_id`)
		REFERENCES `rating_field` (`id`),
	INDEX `course_rating_data_FI_3` (`course_ins_id`),
	CONSTRAINT `course_rating_data_FK_3`
		FOREIGN KEY (`course_ins_id`)
		REFERENCES `course_instructor_assoc` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- auto_course_rating_data
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `auto_course_rating_data`;


CREATE TABLE `auto_course_rating_data`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`field_id` INTEGER  NOT NULL,
	`rating` SMALLINT  NOT NULL,
	`import_dt` DATETIME  NOT NULL,
	`course_ins_id` INTEGER  NOT NULL,
	`number` SMALLINT  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `auto_course_rating_data_I_1`(`field_id`),
	KEY `auto_course_rating_data_I_2`(`course_ins_id`),
	CONSTRAINT `auto_course_rating_data_FK_1`
		FOREIGN KEY (`field_id`)
		REFERENCES `rating_field` (`id`),
	CONSTRAINT `auto_course_rating_data_FK_2`
		FOREIGN KEY (`course_ins_id`)
		REFERENCES `course_instructor_assoc` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

-- data for aer201
INSERT INTO `auto_course_rating_data` VALUES (1, 3, 0, CURDATE(), 3, 0);
INSERT INTO `auto_course_rating_data` VALUES (2, 3, 1, CURDATE(), 3, 6);
INSERT INTO `auto_course_rating_data` VALUES (3, 3, 2, CURDATE(), 3, 9);
INSERT INTO `auto_course_rating_data` VALUES (4, 3, 3, CURDATE(), 3, 25);
INSERT INTO `auto_course_rating_data` VALUES (5, 3, 4, CURDATE(), 3, 41);
INSERT INTO `auto_course_rating_data` VALUES (6, 3, 5, CURDATE(), 3, 31);
INSERT INTO `auto_course_rating_data` VALUES (7, 3, 6, CURDATE(), 3, 9);
INSERT INTO `auto_course_rating_data` VALUES (8, 3, 7, CURDATE(), 3, 2);
INSERT INTO `auto_course_rating_data` VALUES (9, 4, 0, CURDATE(), 3, 1);
INSERT INTO `auto_course_rating_data` VALUES (10, 4, 1, CURDATE(), 3, 2);
INSERT INTO `auto_course_rating_data` VALUES (11, 4, 2, CURDATE(), 3, 4);
INSERT INTO `auto_course_rating_data` VALUES (12, 4, 3, CURDATE(), 3, 20);
INSERT INTO `auto_course_rating_data` VALUES (13, 4, 4, CURDATE(), 3, 42);
INSERT INTO `auto_course_rating_data` VALUES (14, 4, 5, CURDATE(), 3, 36);
INSERT INTO `auto_course_rating_data` VALUES (15, 4, 6, CURDATE(), 3, 16);
INSERT INTO `auto_course_rating_data` VALUES (16, 4, 7, CURDATE(), 3, 2);
INSERT INTO `auto_course_rating_data` VALUES (17, 1, 0, CURDATE(), 3, 261);
INSERT INTO `auto_course_rating_data` VALUES (18, 2, 0, CURDATE(), 3, 124);

-- data for ece259
INSERT INTO `auto_course_rating_data` VALUES (19, 3, 0, CURDATE(), 7, 0);
INSERT INTO `auto_course_rating_data` VALUES (20, 3, 1, CURDATE(), 7, 2);
INSERT INTO `auto_course_rating_data` VALUES (21, 3, 2, CURDATE(), 7, 3);
INSERT INTO `auto_course_rating_data` VALUES (22, 3, 3, CURDATE(), 7, 23);
INSERT INTO `auto_course_rating_data` VALUES (23, 3, 4, CURDATE(), 7, 41);
INSERT INTO `auto_course_rating_data` VALUES (24, 3, 5, CURDATE(), 7, 36);
INSERT INTO `auto_course_rating_data` VALUES (25, 3, 6, CURDATE(), 7, 19);
INSERT INTO `auto_course_rating_data` VALUES (26, 3, 7, CURDATE(), 7, 2);
INSERT INTO `auto_course_rating_data` VALUES (27, 1, 0, CURDATE(), 7, 218);
INSERT INTO `auto_course_rating_data` VALUES (28, 2, 0, CURDATE(), 7, 126);
INSERT INTO `auto_course_rating_data` VALUES (29, 3, 0, CURDATE(), 7, 0);
INSERT INTO `auto_course_rating_data` VALUES (30, 3, 1, CURDATE(), 7, 1);
INSERT INTO `auto_course_rating_data` VALUES (31, 3, 2, CURDATE(), 7, 5);
INSERT INTO `auto_course_rating_data` VALUES (32, 3, 3, CURDATE(), 7, 16);
INSERT INTO `auto_course_rating_data` VALUES (33, 3, 4, CURDATE(), 7, 24);
INSERT INTO `auto_course_rating_data` VALUES (34, 3, 5, CURDATE(), 7, 28);
INSERT INTO `auto_course_rating_data` VALUES (35, 3, 6, CURDATE(), 7, 12);
INSERT INTO `auto_course_rating_data` VALUES (36, 3, 7, CURDATE(), 7, 10);
INSERT INTO `auto_course_rating_data` VALUES (37, 1, 0, CURDATE(), 7, 214);
INSERT INTO `auto_course_rating_data` VALUES (38, 2, 0, CURDATE(), 7, 96);
INSERT INTO `auto_course_rating_data` VALUES (39, 4, 0, CURDATE(), 7, 0);
INSERT INTO `auto_course_rating_data` VALUES (40, 4, 1, CURDATE(), 7, 1);
INSERT INTO `auto_course_rating_data` VALUES (41, 4, 2, CURDATE(), 7, 0);
INSERT INTO `auto_course_rating_data` VALUES (42, 4, 3, CURDATE(), 7, 5);
INSERT INTO `auto_course_rating_data` VALUES (43, 4, 4, CURDATE(), 7, 15);
INSERT INTO `auto_course_rating_data` VALUES (44, 4, 5, CURDATE(), 7, 25);
INSERT INTO `auto_course_rating_data` VALUES (45, 4, 6, CURDATE(), 7, 34);
INSERT INTO `auto_course_rating_data` VALUES (46, 4, 7, CURDATE(), 7, 16);
INSERT INTO `auto_course_rating_data` VALUES (47, 4, 0, CURDATE(), 7, 0);
INSERT INTO `auto_course_rating_data` VALUES (48, 4, 1, CURDATE(), 7, 6);
INSERT INTO `auto_course_rating_data` VALUES (49, 4, 2, CURDATE(), 7, 8);
INSERT INTO `auto_course_rating_data` VALUES (50, 4, 3, CURDATE(), 7, 13);
INSERT INTO `auto_course_rating_data` VALUES (51, 4, 4, CURDATE(), 7, 32);
INSERT INTO `auto_course_rating_data` VALUES (52, 4, 5, CURDATE(), 7, 26);
INSERT INTO `auto_course_rating_data` VALUES (53, 4, 6, CURDATE(), 7, 9);
INSERT INTO `auto_course_rating_data` VALUES (54, 4, 7, CURDATE(), 7, 3);

#-----------------------------------------------------------------------------
#-- department
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `department`;


CREATE TABLE `department`
(
	`id` VARCHAR(4)  NOT NULL,
	`descr` VARCHAR(255)  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `department_I_1`(`descr`)
)Type=InnoDB;

INSERT INTO `department` VALUES ('AER', 'Aerospace Science and Engineering');
INSERT INTO `department` VALUES ('APS', 'Applied Science and Engineering');
INSERT INTO `department` VALUES ('BME', 'Biomedical Engineering');
INSERT INTO `department` VALUES ('CHE', 'Chemical Engineering and Applied Chemistry');
INSERT INTO `department` VALUES ('CHM', 'Department of Chemistry');
INSERT INTO `department` VALUES ('CIV', 'Department of Civil Engineering');
INSERT INTO `department` VALUES ('CSC', 'Department of Computer Science');
INSERT INTO `department` VALUES ('ECE', 'Department of Electrical and Comp Engineering');
INSERT INTO `department` VALUES ('EDV', 'Division of Environmental Engineering and Energy Systems');
INSERT INTO `department` VALUES ('ESC', 'Division of Engineering Science');
INSERT INTO `department` VALUES ('GLG', 'Department of Geology');
INSERT INTO `department` VALUES ('HPS', 'Institute for the History and Philosophy of Science & Technology');
INSERT INTO `department` VALUES ('MAT', 'Department of Mathematics');
INSERT INTO `department` VALUES ('MIE', 'Department of Mechanical and Industrial Engineering');
INSERT INTO `department` VALUES ('MIN', 'Mineral Engineering');
INSERT INTO `department` VALUES ('MSE', 'Department of Materials Science and Engineering');
INSERT INTO `department` VALUES ('PHL', 'Department of Philosophy');
INSERT INTO `department` VALUES ('PHY', 'Department of Physics');
INSERT INTO `department` VALUES ('STA', 'Department of Statistics');
INSERT INTO `department` VALUES ('APM', 'Applied Mathematics');

#-----------------------------------------------------------------------------
#-- enum_item
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `enum_item`;


CREATE TABLE `enum_item`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`parent_id` INTEGER  NOT NULL,
	`descr` VARCHAR(255)  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `enum_item_I_1`(`parent_id`),
	KEY `enum_item_I_2`(`descr`),
	CONSTRAINT `enum_item_FK_1`
		FOREIGN KEY (`parent_id`)
		REFERENCES `enum_item` (`id`)
)Type=InnoDB;

INSERT INTO `enum_item` VALUES (1, 1, '');
INSERT INTO `enum_item` VALUES (10, 1, 'USER_TYPES');
INSERT INTO `enum_item` VALUES (11, 10, 'Admin');
INSERT INTO `enum_item` VALUES (12, 10, 'Moderator');
INSERT INTO `enum_item` VALUES (13, 10, 'Guest');
INSERT INTO `enum_item` VALUES (20, 1, 'META_RATING_TYPES');
INSERT INTO `enum_item` VALUES (21, 20, 'Boolean');
INSERT INTO `enum_item` VALUES (22, 20, 'Scale');
INSERT INTO `enum_item` VALUES (23, 20, 'Number');
INSERT INTO `enum_item` VALUES (30, 1, 'RATING_TYPES');
INSERT INTO `enum_item` VALUES (31, 22, '3');
INSERT INTO `enum_item` VALUES (32, 22, '4');
INSERT INTO `enum_item` VALUES (33, 22, '5');
INSERT INTO `enum_item` VALUES (34, 22, '6');
INSERT INTO `enum_item` VALUES (35, 22, '7');
INSERT INTO `enum_item` VALUES (36, 22, '8');
INSERT INTO `enum_item` VALUES (60, 1, 'EXAM_TYPES');
INSERT INTO `enum_item` VALUES (61, 60, 'Quiz');
INSERT INTO `enum_item` VALUES (62, 60, 'Test');
INSERT INTO `enum_item` VALUES (63, 60, 'Exam');
INSERT INTO `enum_item` VALUES (100, 1, 'DISCIPLINES');
INSERT INTO `enum_item` VALUES (101, 100, 'Chemical Engineering');
INSERT INTO `enum_item` VALUES (102, 100, 'Electrical Engineering');
INSERT INTO `enum_item` VALUES (103, 100, 'Civil Engineering');
INSERT INTO `enum_item` VALUES (104, 100, 'Computer Engineering');
INSERT INTO `enum_item` VALUES (105, 100, 'Engineering Science');
INSERT INTO `enum_item` VALUES (106, 100, 'Engineering Science - Aerospace Option');
INSERT INTO `enum_item` VALUES (107, 100, 'Engineering Science - Biomedical Option');
INSERT INTO `enum_item` VALUES (108, 100, 'Engineering Science - Computer Option');
INSERT INTO `enum_item` VALUES (109, 100, 'Engineering Science - Electrical Option');
INSERT INTO `enum_item` VALUES (110, 100, 'Engineering Science - Energy Option');
INSERT INTO `enum_item` VALUES (111, 100, 'Engineering Science - Infra Option');
INSERT INTO `enum_item` VALUES (112, 100, 'Engineering Science - Manu Option');
INSERT INTO `enum_item` VALUES (113, 100, 'Engineering Science - Nano Option');
INSERT INTO `enum_item` VALUES (114, 100, 'Engineering Science - Physics Option');
INSERT INTO `enum_item` VALUES (116, 100, 'Industrial Engineering');
INSERT INTO `enum_item` VALUES (115, 100, 'Environemental Engineering');
INSERT INTO `enum_item` VALUES (117, 100, 'Materials Engineering');
INSERT INTO `enum_item` VALUES (118, 100, 'Mechanical Engineering');
INSERT INTO `enum_item` VALUES (119, 100, 'Mineral Engineering');
INSERT INTO `enum_item` VALUES (120, 100, 'Track One');
INSERT INTO `enum_item` VALUES (121, 100, 'Unknown');
INSERT INTO `enum_item` VALUES (200, 1, 'IMPORT_FILE_TYPES');
INSERT INTO `enum_item` VALUES (201, 200, 'CSV');
INSERT INTO `enum_item` VALUES (202, 200, 'XML');
INSERT INTO `enum_item` VALUES (210, 1, 'EXPORT_FILE_TYPES');
INSERT INTO `enum_item` VALUES (211, 210, 'CSV');
INSERT INTO `enum_item` VALUES (212, 210, 'PDF');
INSERT INTO `enum_item` VALUES (213, 210, 'XLS');
INSERT INTO `enum_item` VALUES (220, 1, 'MAPPING_ITEMS');
INSERT INTO `enum_item` VALUES (221, 220, 'Ignore');
INSERT INTO `enum_item` VALUES (222, 220, 'Course Code');
INSERT INTO `enum_item` VALUES (223, 220, 'Course Name');
INSERT INTO `enum_item` VALUES (224, 220, 'Instructor Name');
INSERT INTO `enum_item` VALUES (225, 220, 'Number Enrolled');
INSERT INTO `enum_item` VALUES (226, 220, 'Number Response');
INSERT INTO `enum_item` VALUES (227, 220, 'Question');
INSERT INTO `enum_item` VALUES (228, 220, 'Question Mean');
INSERT INTO `enum_item` VALUES (229, 220, 'Question Median');
INSERT INTO `enum_item` VALUES (230, 220, 'Department Name');

#-----------------------------------------------------------------------------
#-- import_mapping
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `import_mapping`;


CREATE TABLE `import_mapping`
(
	`column` SMALLINT  NOT NULL,
	`import_file_type` INTEGER  NOT NULL,
	`mapping` INTEGER  NOT NULL,
	`rating_field_id` INTEGER,
	`question_rating` TINYINT,
	PRIMARY KEY (`column`,`import_file_type`),
	INDEX `import_mapping_FI_1` (`import_file_type`),
	CONSTRAINT `import_mapping_FK_1`
		FOREIGN KEY (`import_file_type`)
		REFERENCES `enum_item` (`id`),
	INDEX `import_mapping_FI_2` (`mapping`),
	CONSTRAINT `import_mapping_FK_2`
		FOREIGN KEY (`mapping`)
		REFERENCES `enum_item` (`id`),
	INDEX `import_mapping_FI_3` (`rating_field_id`),
	CONSTRAINT `import_mapping_FK_3`
		FOREIGN KEY (`rating_field_id`)
		REFERENCES `rating_field` (`id`)
)Type=InnoDB;

INSERT INTO `import_mapping` VALUES (1, 201, 221, NULL, NULL);
INSERT INTO `import_mapping` VALUES (2, 201, 221, NULL, NULL);
INSERT INTO `import_mapping` VALUES (3, 201, 221, NULL, NULL);
INSERT INTO `import_mapping` VALUES (4, 201, 222, NULL, NULL);
INSERT INTO `import_mapping` VALUES (5, 201, 221, NULL, NULL);
INSERT INTO `import_mapping` VALUES (6, 201, 223, NULL, NULL);
INSERT INTO `import_mapping` VALUES (7, 201, 224, NULL, NULL);
INSERT INTO `import_mapping` VALUES (8, 201, 225, NULL, NULL);
INSERT INTO `import_mapping` VALUES (9, 201, 226, NULL, NULL);
INSERT INTO `import_mapping` VALUES (10, 201, 227, 3, NULL);

#-----------------------------------------------------------------------------
#-- exam
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `exam`;


CREATE TABLE `exam`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`course_id` VARCHAR(9)  NOT NULL,
	`type` INTEGER  NOT NULL,
	`year` INTEGER  NOT NULL,
	`descr` VARCHAR(255)  NOT NULL,
	`file_path` TEXT  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `exam_I_1`(`course_id`),
	KEY `exam_I_2`(`descr`),
	CONSTRAINT `exam_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE,
	INDEX `exam_FI_2` (`type`),
	CONSTRAINT `exam_FK_2`
		FOREIGN KEY (`type`)
		REFERENCES `enum_item` (`id`)
)Type=InnoDB;

INSERT INTO `exam` VALUES (1, 'ECE259H1', 61, 20089, 'Quiz 1', '/C/');

#-----------------------------------------------------------------------------
#-- exam_comment
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `exam_comment`;


CREATE TABLE `exam_comment`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`exam_id` INTEGER  NOT NULL,
	`user_id` INTEGER  NOT NULL,
	`comment` TEXT  NOT NULL,
	`input_dt` DATETIME NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `exam_comment_FI_1` (`exam_id`),
	CONSTRAINT `exam_comment_FK_1`
		FOREIGN KEY (`exam_id`)
		REFERENCES `exam` (`id`)
		ON DELETE CASCADE,
	INDEX `exam_comment_FI_2` (`user_id`),
	CONSTRAINT `exam_comment_FK_2`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- instructor
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `instructor`;


CREATE TABLE `instructor`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`last_name` VARCHAR(30)  NOT NULL,
	`first_name` VARCHAR(30)  NOT NULL,
	`dept_id` VARCHAR(4)  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `instructor_I_1`(`last_name`),
	KEY `instructor_I_2`(`first_name`),
	KEY `instructor_I_3`(`dept_id`),
	CONSTRAINT `instructor_FK_1`
		FOREIGN KEY (`dept_id`)
		REFERENCES `department` (`id`)
)Type=InnoDB;

INSERT INTO `instructor` VALUES (1, 'Davis', 'Jim', 'AER');
INSERT INTO `instructor` VALUES (2, 'Collins', 'Michael', 'CIV');
INSERT INTO `instructor` VALUES (3, 'Stangeby', 'Peter', 'MAT');
INSERT INTO `instructor` VALUES (4, 'Foster', 'Jason', 'ESC');
INSERT INTO `instructor` VALUES (5, 'Emami', 'Reza', 'AER');
INSERT INTO `instructor` VALUES (6, 'Gauvreau', 'Paul', 'CIV');
INSERT INTO `instructor` VALUES (7, 'Dmitrevsky', 'Sergei', 'ECE');
INSERT INTO `instructor` VALUES (8, 'Van Driels', 'Henry', 'PHY');
INSERT INTO `instructor` VALUES (9, 'Trischuk', 'William', 'PHY');

#-----------------------------------------------------------------------------
#-- instructor_detail
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `instructor_detail`;


CREATE TABLE `instructor_detail`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`descr` TEXT  NOT NULL,
	`instructor_id` INTEGER  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `instructor_detail_I_1`(`instructor_id`),
	CONSTRAINT `instructor_detail_FK_1`
		FOREIGN KEY (`instructor_id`)
		REFERENCES `instructor` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- rating_field
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `rating_field`;


CREATE TABLE `rating_field`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`descr` VARCHAR(255)  NOT NULL,
	`type_id` INTEGER  NOT NULL,
	`is_reserved` TINYINT  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `rating_field_I_1`(`descr`),
	INDEX `rating_field_FI_1` (`type_id`),
	CONSTRAINT `rating_field_FK_1`
		FOREIGN KEY (`type_id`)
		REFERENCES `enum_item` (`id`)
)Type=InnoDB;

INSERT INTO `rating_field` VALUES (1, 'How many enrolled?', 23, 1);
INSERT INTO `rating_field` VALUES (2, 'How many responded?', 23, 1);
INSERT INTO `rating_field` VALUES (3, 'How useful is this course to your professional development?', 36, 0);
INSERT INTO `rating_field` VALUES (4, 'How enthusiastic is the instructor during the lectures?', 36, 0);
INSERT INTO `rating_field` VALUES (5, 'Percent retake', 23, 1);


#-----------------------------------------------------------------------------
#-- user
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `user`;


CREATE TABLE `user`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_name` VARCHAR(50)  NOT NULL,
	`password` VARCHAR(50)  NOT NULL,
	`type_id` INTEGER  NOT NULL,
	`email` VARCHAR(50)  NOT NULL,
	`registered_on` DATETIME  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `user_I_1`(`user_name`),
	INDEX `user_FI_1` (`type_id`),
	CONSTRAINT `user_FK_1`
		FOREIGN KEY (`type_id`)
		REFERENCES `enum_item` (`id`)
)Type=InnoDB;

INSERT INTO `user` VALUES ('admin', 'admin', 11, 'engscipraxis@gmail.com', '2009-06-19 00:00:00');

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;