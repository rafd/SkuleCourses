delimiter %%
create procedure `test` () begin declare courseCount int;

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 63, 19991, 'AER202 19991 EXAM', 'exams/bulk/19991/aer202s_1999_exam.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 63, 20011, 'AER202 20011 EXAM', 'exams/bulk/20011/aer202s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 63, 20021, 'AER202 20021 EXAM', 'exams/bulk/20021/aer202s_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 63, 20031, 'AER202 20031 EXAM', 'exams/bulk/20031/aer202s_2003_exam.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 63, 20041, 'AER202 20041 EXAM', 'exams/bulk/20041/aer202s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 63, 20051, 'AER202 20051 EXAM', 'exams/bulk/20051/aer202s_2005_exam.pdf');

select count(1) into courseCount from course where id ='AER205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER205H1','AER','AER205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER205H1', 63, 20069, 'AER205 20069 EXAM', 'exams/bulk/20069/aer205f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER301H1','AER','AER301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER301H1', 63, 20019, 'AER301 20019 EXAM', 'exams/bulk/20019/aer301f_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER301H1','AER','AER301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER301H1', 63, 20029, 'AER301 20029 EXAM', 'exams/bulk/20029/aer301f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER301H1','AER','AER301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER301H1', 63, 20049, 'AER301 20049 EXAM', 'exams/bulk/20049/aer301f_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER307H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER307H1','AER','AER307H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER307H1', 63, 19999, 'AER307 19999 EXAM', 'exams/bulk/19999/aer307f_1999_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 19959, 'AER310 19959 EXAM', 'exams/bulk/19959/aer310f_1995_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 19969, 'AER310 19969 EXAM', 'exams/bulk/19969/aer310f_1996_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 19979, 'AER310 19979 EXAM', 'exams/bulk/19979/aer310f_1997_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 20071, 'AER310 20071 EXAM', 'exams/bulk/20071/aer310s_2007_exam.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 63, 20009, 'AER373 20009 EXAM', 'exams/bulk/20009/aer373f_2000_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 19989, 'APM384 19989 EXAM', 'exams/bulk/19989/apm384f_1998_exam.pdf');

select count(1) into courseCount from course where id ='BME395H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME395H1','BME','BME395H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME395H1', 63, 19971, 'BME395 19971 EXAM', 'exams/bulk/19971/bme395s_1997_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 20001, 'BME496 20001 EXAM', 'exams/bulk/20001/bme496s_2000_exam.pdf');

select count(1) into courseCount from course where id ='BME595H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME595H1','BME','BME595H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME595H1', 63, 19981, 'BME595 19981 EXAM', 'exams/bulk/19981/bme595s_1998_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 19949, 'CHE112 19949 EXAM', 'exams/bulk/19949/CHE112F_1994_EXAM.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 19951, 'CHE112 19951 EXAM', 'exams/bulk/19951/CHE112S_1995_EXAM.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19919, 'CHE150 19919 EXAM', 'exams/bulk/19919/che150f_1991_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19939, 'CHE150 19939 EXAM', 'exams/bulk/19939/che150f_1993_exam.pdf');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 19901, 'CHE462 19901 EXAM', 'exams/bulk/19901/che462s_1990_exam.pdf');

select count(1) into courseCount from course where id ='CSC228H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC228H1','CSC','CSC228H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC228H1', 63, 19941, 'CSC228 19941 EXAM', 'exams/bulk/19941/csc228s_1994_exam.pdf');

select count(1) into courseCount from course where id ='ELE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ELE150H1','ELE','ELE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ELE150H1', 63, 19911, 'ELE150 19911 EXAM', 'exams/bulk/19911/ele150s_1991_exam.pdf');

select count(1) into courseCount from course where id ='ELE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ELE150H1','ELE','ELE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ELE150H1', 63, 19921, 'ELE150 19921 EXAM', 'exams/bulk/19921/ele150s_1992_exam.pdf');

select count(1) into courseCount from course where id ='ELE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ELE150H1','ELE','ELE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ELE150H1', 63, 19931, 'ELE150 19931 EXAM', 'exams/bulk/19931/ele150s_1993_exam.pdf');

end%%

call test%%
drop procedure `test`%%