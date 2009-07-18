
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
	INDEX `course_FI_1` (`dept_id`),
	CONSTRAINT `course_FK_1`
		FOREIGN KEY (`dept_id`)
		REFERENCES `department` (`id`)
)Type=MyISAM;

INSERT INTO `course` VALUES ('AER201H1', 'AER', 'Engineering Design', 1);
INSERT INTO `course` VALUES ('MAT194H1', 'MAT', 'Calculus I', 1);
INSERT INTO `course` VALUES ('CIV102H1', 'CIV', 'Introduction to Structures and Materials', 1);
INSERT INTO `course` VALUES ('PHY180H1', 'PHY', 'Classical Mechanics', 1);
INSERT INTO `course` VALUES ('MAT195H1', 'MAT', 'Calculus II', 1);

#-----------------------------------------------------------------------------
#-- course_coment
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_coment`;


CREATE TABLE `course_coment`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_id` INTEGER  NOT NULL,
	`course_id` VARCHAR(9)  NOT NULL,
	`comment` TEXT  NOT NULL,
	`input_dt` DATETIME  NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `course_coment_FI_1` (`user_id`),
	CONSTRAINT `course_coment_FK_1`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`),
	INDEX `course_coment_FI_2` (`course_id`),
	CONSTRAINT `course_coment_FK_2`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=MyISAM;

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
	INDEX `course_detail_FI_1` (`course_id`),
	CONSTRAINT `course_detail_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=MyISAM;

#-----------------------------------------------------------------------------
#-- course_instructor_assoc
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_instructor_assoc`;


CREATE TABLE `course_instructor_assoc`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`instructor_id` INTEGER  NOT NULL,
	`course_id` VARCHAR(9)  NOT NULL,
	`eff_date` DATE  NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `course_instructor_assoc_FI_1` (`instructor_id`),
	CONSTRAINT `course_instructor_assoc_FK_1`
		FOREIGN KEY (`instructor_id`)
		REFERENCES `instructor` (`id`),
	INDEX `course_instructor_assoc_FI_2` (`course_id`),
	CONSTRAINT `course_instructor_assoc_FK_2`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
)Type=MyISAM;

INSERT INTO `course_instructor_assoc` VALUES (1, 3, 'MAT194H1', '0000-00-00');
INSERT INTO `course_instructor_assoc` VALUES (2, 2, 'CIV102H1', '0000-00-00');

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
	INDEX `course_discipline_assoc_FI_1` (`course_id`),
	CONSTRAINT `course_discipline_assoc_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`),
	INDEX `course_discipline_assoc_FI_2` (`discipline_id`),
	CONSTRAINT `course_discipline_assoc_FK_2`
		FOREIGN KEY (`discipline_id`)
		REFERENCES `enum_item` (`id`)
)Type=MyISAM;

INSERT INTO `course_discipline_assoc` VALUES (1, 'MAT194H1', 105, 1);
INSERT INTO `course_discipline_assoc` VALUES (2, 'CIV102H1', 105, 1);

#-----------------------------------------------------------------------------
#-- course_rating_data
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_rating_data`;


CREATE TABLE `course_rating_data`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_id` INTEGER  NOT NULL,
	`field_id` INTEGER  NOT NULL,
	`course_id` VARCHAR(9)  NOT NULL,
	`rating` TINYINT  NOT NULL,
	`input_dt` DATETIME  NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `course_rating_data_FI_1` (`user_id`),
	CONSTRAINT `course_rating_data_FK_1`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`),
	INDEX `course_rating_data_FI_2` (`field_id`),
	CONSTRAINT `course_rating_data_FK_2`
		FOREIGN KEY (`field_id`)
		REFERENCES `rating_field` (`id`),
	INDEX `course_rating_data_FI_3` (`course_id`),
	CONSTRAINT `course_rating_data_FK_3`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=MyISAM;

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
)Type=MyISAM;

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
	KEY `enum_item_I_1`(`descr`),
	INDEX `enum_item_FI_1` (`parent_id`),
	CONSTRAINT `enum_item_FK_1`
		FOREIGN KEY (`parent_id`)
		REFERENCES `enum_item` (`id`)
)Type=MyISAM;

INSERT INTO `enum_item` VALUES (1, 1, '');
INSERT INTO `enum_item` VALUES (10, 1, 'USER_TYPES');
INSERT INTO `enum_item` VALUES (11, 10, 'Admin');
INSERT INTO `enum_item` VALUES (12, 10, 'Moderator');
INSERT INTO `enum_item` VALUES (13, 10, 'Guest');
INSERT INTO `enum_item` VALUES (20, 1, 'RATING_TYPES');
INSERT INTO `enum_item` VALUES (21, 20, 'Boolean');
INSERT INTO `enum_item` VALUES (22, 20, 'ScaleFive');
INSERT INTO "enum_item" VALUES (60, 1, "EXAM_TYPES");
INSERT INTO "enum_item" VALUES (61, 60, "Quiz");
INSERT INTO "enum_item" VALUES (62, 60, "Test");
INSERT INTO "enum_item" VALUES (63, 60, "Exam");
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

#-----------------------------------------------------------------------------
#-- exam
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `exam`;


CREATE TABLE `exam`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`course_id` VARCHAR(9)  NOT NULL,
	`date` DATE  NOT NULL,
	`descr` VARCHAR(255)  NOT NULL,
	`file_path` TEXT  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `exam_I_1`(`descr`),
	INDEX `exam_FI_1` (`course_id`),
	CONSTRAINT `exam_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=MyISAM;

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
	`input_dt` DATETIME  NOT NULL,
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
)Type=MyISAM;

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
	INDEX `instructor_FI_1` (`dept_id`),
	CONSTRAINT `instructor_FK_1`
		FOREIGN KEY (`dept_id`)
		REFERENCES `department` (`id`)
)Type=MyISAM;

INSERT INTO `instructor` VALUES (1, 'Davis', 'Jim', 'AER');
INSERT INTO `instructor` VALUES (2, 'Collins', 'Michael', 'CIV');
INSERT INTO `instructor` VALUES (3, 'Stangeby', 'Peter', 'MAT');

#-----------------------------------------------------------------------------
#-- instructor_detail
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `instructor_detail`;


CREATE TABLE `instructor_detail`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`descr` TEXT  NOT NULL,
	`instructor_id` VARCHAR(7)  NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `instructor_detail_FI_1` (`instructor_id`),
	CONSTRAINT `instructor_detail_FK_1`
		FOREIGN KEY (`instructor_id`)
		REFERENCES `instructor` (`id`)
		ON DELETE CASCADE
)Type=MyISAM;

#-----------------------------------------------------------------------------
#-- rating_field
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `rating_field`;


CREATE TABLE `rating_field`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`descr` VARCHAR(255)  NOT NULL,
	`type_id` INTEGER  NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `rating_field_FI_1` (`type_id`),
	CONSTRAINT `rating_field_FK_1`
		FOREIGN KEY (`type_id`)
		REFERENCES `enum_item` (`id`)
)Type=MyISAM;

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
)Type=MyISAM;

INSERT INTO `user` VALUES (1, 'wildabyss', 'test', 11, 'wildabyss@gmail.com', '2009-06-19 00:00:00');

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;
