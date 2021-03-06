# enum_item

INSERT INTO `enum_item` (`id`,`parent_id`,`descr`) VALUES 
 (1,1,''),
 (10,1,'USER_TYPES'),
 (11,10,'Admin'),
 (12,10,'Moderator'),
 (13,10,'Guest'),
 (14,10,'Normal'),
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
 (230,220,'Department Name'),
 (231,220,'Number'),
 (250,1,'SECTION_TYPES'),
 (251,250,'LEC'),
 (252,250,'TUT'),
 (253,250,'PRA'),
 (260,1,'COURSE_TYPES'),
 (261,260,'Technical Electives'),
 (262,260,'HSS'),
 (263,260,'Humanity'),
 (264,260,'Science');


# department

INSERT INTO `department` (`id`,`descr`) VALUES 
 ('AER','Aerospace Science and Engineering'),
 ('ANA','Anatomy & Cell Biology'),
 ('APM','Applied Mathematics'),
 ('APS','Applied Science and Engineering'),
 ('BME','Biomedical Engineering'),
 ('ENV','Centre for Environment'),
 ('CHE','Chemical Engineering and Applied Chemistry'),
 ('CME','Civil and Mineral Engineering'),
 ('ANT','Department of Anthropology'),
 ('ARH','Department of Archaeology'),
 ('ARC','Department of Architecture, Landscape and Design'),
 ('AST','Department of Astronomy and Astrophysics'),
 ('BCH','Department of Biochemistry'),
 ('BCB','Department of Bioinformatics & Computational Biology'),
 ('CHM','Department of Chemistry'),
 ('CIV','Department of Civil Engineering'),
 ('CLA','Department of Classical Studies'),
 ('COL','Department of Comparative Literature'),
 ('CSC','Department of Computer Science'),
 ('EAS','Department of East Asian Studies'),
 ('EEB','Department of Ecology & Evolutionary Biology'),
 ('ECO','Department of Economics'),
 ('ECE','Department of Electrical and Comp Engineering'),
 ('ENG','Department of English'),
 ('EUR','Department of European Studies'),
 ('FAH','Department of Fine Art History'),
 ('FOR','Department of Forest Conservation'),
 ('FCS','Department of French Cultural Studies'),
 ('FRE','Department of French Studies'),
 ('GGR','Department of Geography'),
 ('GLG','Department of Geology'),
 ('HIS','Department of History'),
 ('IMM','Department of Immunology'),
 ('LIN','Department of Linguistics'),
 ('MSE','Department of Materials Science and Engineering'),
 ('MAT','Department of Mathematics'),
 ('MIE','Department of Mechanical and Industrial Engineering'),
 ('MMS','Department of Metallurgy and Materials Science'),
 ('MGY','Department of Molecular Genetics & Microbiology'),
 ('MUS','Department of Music'),
 ('NRS','Department of Neuroscience'),
 ('NFS','Department of Nutritional Sciences'),
 ('PCL','Department of Pharmacology and Toxicology'),
 ('PHL','Department of Philosophy'),
 ('PHE','Department of Physical Education & Health'),
 ('PHY','Department of Physics'),
 ('PSL','Department of Physiology'),
 ('PLN','Department of Planetary Science'),
 ('POL','Department of Political Science'),
 ('PSY','Department of Psychology'),
 ('SOC','Department of Sociology'),
 ('STA','Department of Statistics'),
 ('ESC','Division of Engineering Science'),
 ('EDC','Division of Environmental Engineering'),
 ('EDM','Division of Environmental Engineering'),
 ('EDV','Division of Environmental Engineering and Energy Systems'),
 ('DRM','Drama Program'),
 ('ELE','ELE'),
 ('HMB','Human Biology'),
 ('HPS','Institute for the History and Philosophy of Science & Technology'),
 ('JSM','Joint Program'),
 ('JTC','Joint Program'),
 ('JVM','Joint Program'),
 ('JXX','Joint Program'),
 ('LMP','Laboratory Medicine & Pathobiology'),
 ('MIN','Mineral Engineering'),
 ('RLG','Religion');


# discipline

INSERT INTO `discipline` (`id`,`descr`,`short_descr`) VALUES 
 (101,'Chemical Engineering','AECHEBASC'),
 (102,'Electrical and Computer Engineering','AECPEBASC'),
 (103,'Civil Engineering','AECIVBASC'),
 (104,'Computer Engineering','AECPEBASC'),
 (105,'Engineering Science','AEESCBASE'),
 (106,'Engineering Science - Aerospace Option','AEESCBASEA'),
 (107,'Engineering Science - Biomedical Option','AEESCBASEB'),
 (110,'Engineering Science - Energy Systems Option','AEESCBASEJ'),
 (111,'Engineering Science - Infrastructure Option','AEESCBASEI'),
 (113,'Engineering Science - Nanoengineering Option','AEESCBASEO'),
 (114,'Engineering Science - Physics Option','AEESCBASEP'),
 (116,'Industrial Engineering','AEINDBASC'),
 (117,'Materials Engineering','AEMMSBASC'),
 (118,'Mechanical Engineering','AEMECBASC'),
 (119,'Mineral Engineering','AELMEBASC'),
 (120,'Track One',''),
 (122,'Computer Engineering - Photonics & Semiconductor','AECPEBASC'),
 (123,'Computer Engineering - EM & Energy Systems','AECPEBASC'),
 (124,'Computer Engineering - Analog & Digital Electronics','AECPEBASC'),
 (125,'Computer Engineering - Control, Comm & Signal Processing','AECPEBASC'),
 (126,'Computer Engineering - Computer Hardware & Networks','AECPEBASC'),
 (127,'Computer Engineering - Software','AECPEBASC'),
 (128,'Electrical and Computer Engineering - Photonics & Semiconductor','AECPEBASC'),
 (129,'Electrical and Computer Engineering - EM & Energy Systems','AECPEBASC'),
 (130,'Electrical and Computer Engineering - Analog & Digital Electronics','AECPEBASC'),
 (131,'Electrical and Computer Engineering - Control, Comm & Signal Processing','AECPEBASC'),
 (132,'Electrical and Computer Engineering - Computer Hardware & Networks','AECPEBASC'),
 (133,'Electrical and Computer Engineering - Software','AECPEBASC'),
 (134,'Engineering Science - Electrical and Computer Option','AEESCBASER'),
 (135,'T-Program',''),
 (136,'Engineering Science - Manufacturing Option','AEESCBASEM');


# rating_field

INSERT INTO `rating_field` VALUES (1, 'How many enrolled?', 23, 1);
INSERT INTO `rating_field` VALUES (2, 'How many responded?', 23, 1);
INSERT INTO `rating_field` VALUES (3, 'Would you take this course again?', 21, 1);


# user

INSERT INTO `user` VALUES ('admin', 'admin', 11, 'courses@webdev.skule.ca', '2009-09-09 00:00:00');