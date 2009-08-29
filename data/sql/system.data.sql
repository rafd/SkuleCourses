# enum_item

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


# department

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


# rating_field

INSERT INTO `rating_field` VALUES (1, 'How many enrolled?', 23, 1);
INSERT INTO `rating_field` VALUES (2, 'How many responded?', 23, 1);