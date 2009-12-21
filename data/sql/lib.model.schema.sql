
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

#-----------------------------------------------------------------------------
#-- course_comment
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_comment`;


CREATE TABLE `course_comment`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`ip` VARCHAR(15)  NOT NULL,
	`course_id` VARCHAR(9)  NOT NULL,
	`comment` TEXT  NOT NULL,
	`input_dt` DATETIME  NOT NULL,
	`approved` TINYINT default 0 NOT NULL,
	`applies_to` INTEGER  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `course_comment_I_1`(`ip`),
	KEY `course_comment_I_2`(`course_id`),
	CONSTRAINT `course_comment_FK_1`
		FOREIGN KEY (`course_id`)
		REFERENCES `course` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- course_comment_dig
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `course_comment_dig`;


CREATE TABLE `course_comment_dig`
(
	`ip` VARCHAR(15)  NOT NULL,
	`comment_id` INTEGER  NOT NULL,
	`is_good` TINYINT  NOT NULL,
	PRIMARY KEY (`ip`,`comment_id`),
	INDEX `course_comment_dig_FI_1` (`comment_id`),
	CONSTRAINT `course_comment_dig_FK_1`
		FOREIGN KEY (`comment_id`)
		REFERENCES `course_comment` (`id`)
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

#-----------------------------------------------------------------------------
#-- exam_comment
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `exam_comment`;


CREATE TABLE `exam_comment`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`exam_id` INTEGER  NOT NULL,
	`ip` VARCHAR(15)  NOT NULL,
	`comment` TEXT  NOT NULL,
	`input_dt` DATETIME  NOT NULL,
	PRIMARY KEY (`id`),
	KEY `exam_comment_I_1`(`exam_id`),
	KEY `exam_comment_I_2`(`ip`),
	CONSTRAINT `exam_comment_FK_1`
		FOREIGN KEY (`exam_id`)
		REFERENCES `exam` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- exam_comment_dig
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `exam_comment_dig`;


CREATE TABLE `exam_comment_dig`
(
	`ip` VARCHAR(15)  NOT NULL,
	`comment_id` INTEGER  NOT NULL,
	`is_good` TINYINT  NOT NULL,
	PRIMARY KEY (`ip`,`comment_id`),
	INDEX `exam_comment_dig_FI_1` (`comment_id`),
	CONSTRAINT `exam_comment_dig_FK_1`
		FOREIGN KEY (`comment_id`)
		REFERENCES `exam_comment` (`id`)
		ON DELETE CASCADE
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

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;
