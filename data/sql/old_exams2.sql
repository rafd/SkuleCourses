delimiter %%
create procedure `test` () begin declare courseCount int;

select count(1) into courseCount from course where id ='AER234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER234H1','AER','AER234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER234H1', 63, 20011, 'AER234 20011 EXAM', 'exams/bulk/20011/aer234s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER234H1','AER','AER234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER234H1', 63, 20021, 'AER234 20021 EXAM', 'exams/bulk/20021/aer234s_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER234H1','AER','AER234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER234H1', 63, 20031, 'AER234 20031 EXAM', 'exams/bulk/20031/aer234s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER234H1','AER','AER234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER234H1', 63, 20041, 'AER234 20041 EXAM', 'exams/bulk/20041/aer234s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER301H1','AER','AER301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER301H1', 63, 20069, 'AER301 20069 EXAM', 'exams/bulk/20069/aer301f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER304H1','AER','AER304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER304H1', 63, 20041, 'AER304 20041 EXAM', 'exams/bulk/20041/aer304s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER307H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER307H1','AER','AER307H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER307H1', 63, 20029, 'AER307 20029 EXAM', 'exams/bulk/20029/aer307f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER307H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER307H1','AER','AER307H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER307H1', 63, 20049, 'AER307 20049 EXAM', 'exams/bulk/20049/aer307f_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER307H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER307H1','AER','AER307H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER307H1', 63, 20069, 'AER307 20069 EXAM', 'exams/bulk/20069/aer307f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER307H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER307H1','AER','AER307H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER307H1', 63, 20011, 'AER307 20011 EXAM', 'exams/bulk/20011/aer307s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 20011, 'AER310 20011 EXAM', 'exams/bulk/20011/aer310s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 20021, 'AER310 20021 EXAM', 'exams/bulk/20021/aer310s_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 20031, 'AER310 20031 EXAM', 'exams/bulk/20031/aer310s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 20041, 'AER310 20041 EXAM', 'exams/bulk/20041/aer310s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 63, 20051, 'AER310 20051 EXAM', 'exams/bulk/20051/aer310s_2005_exam.pdf');

select count(1) into courseCount from course where id ='AER315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER315H1','AER','AER315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER315H1', 63, 20069, 'AER315 20069 EXAM', 'exams/bulk/20069/aer315f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER315H1','AER','AER315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER315H1', 63, 20041, 'AER315 20041 EXAM', 'exams/bulk/20041/aer315s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER315H1','AER','AER315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER315H1', 63, 20051, 'AER315 20051 EXAM', 'exams/bulk/20051/aer315s_2005_exam.pdf');

select count(1) into courseCount from course where id ='AER334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER334H1','AER','AER334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER334H1', 63, 20069, 'AER334 20069 EXAM', 'exams/bulk/20069/aer334f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20029, 'AER336 20029 EXAM', 'exams/bulk/20029/aer336f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 19991, 'AER336 19991 EXAM', 'exams/bulk/19991/aer336s_1999_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20011, 'AER336 20011 EXAM', 'exams/bulk/20011/aer336s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20021, 'AER336 20021 EXAM', 'exams/bulk/20021/aer336s_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20031, 'AER336 20031 EXAM', 'exams/bulk/20031/aer336s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20041, 'AER336 20041 EXAM', 'exams/bulk/20041/aer336s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20051, 'AER336 20051 EXAM', 'exams/bulk/20051/aer336s_2005_exam.pdf');

select count(1) into courseCount from course where id ='AER336H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER336H1','AER','AER336H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER336H1', 63, 20071, 'AER336 20071 EXAM', 'exams/bulk/20071/aer336s_2007_exam.pdf');

select count(1) into courseCount from course where id ='AER372H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER372H1','AER','AER372H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER372H1', 63, 20071, 'AER372 20071 EXAM', 'exams/bulk/20071/aer372s_2007_exam.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 63, 20019, 'AER373 20019 EXAM', 'exams/bulk/20019/aer373f_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 63, 20029, 'AER373 20029 EXAM', 'exams/bulk/20029/aer373f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 63, 20039, 'AER373 20039 EXAM', 'exams/bulk/20039/aer373f_2003_exam.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 63, 20049, 'AER373 20049 EXAM', 'exams/bulk/20049/aer373f_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 63, 20069, 'AER373 20069 EXAM', 'exams/bulk/20069/aer373f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER402H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER402H1','AER','AER402H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER402H1', 63, 20019, 'AER402 20019 EXAM', 'exams/bulk/20019/aer402f_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER402H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER402H1','AER','AER402H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER402H1', 63, 20029, 'AER402 20029 EXAM', 'exams/bulk/20029/aer402f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER402H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER402H1','AER','AER402H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER402H1', 63, 20049, 'AER402 20049 EXAM', 'exams/bulk/20049/aer402f_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER402H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER402H1','AER','AER402H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER402H1', 63, 20071, 'AER402 20071 EXAM', 'exams/bulk/20071/aer402s_2007_exam.pdf');

select count(1) into courseCount from course where id ='AER480H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER480H1','AER','AER480H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER480H1', 63, 20011, 'AER480 20011 EXAM', 'exams/bulk/20011/aer480s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER480H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER480H1','AER','AER480H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER480H1', 63, 20031, 'AER480 20031 EXAM', 'exams/bulk/20031/aer480s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER501H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER501H1','AER','AER501H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER501H1', 63, 20019, 'AER501 20019 EXAM', 'exams/bulk/20019/aer501f_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER501H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER501H1','AER','AER501H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER501H1', 63, 20049, 'AER501 20049 EXAM', 'exams/bulk/20049/aer501f_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER501H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER501H1','AER','AER501H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER501H1', 63, 20069, 'AER501 20069 EXAM', 'exams/bulk/20069/aer501f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER501H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER501H1','AER','AER501H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER501H1', 63, 20031, 'AER501 20031 EXAM', 'exams/bulk/20031/aer501s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER503H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER503H1','AER','AER503H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER503H1', 63, 20021, 'AER503 20021 EXAM', 'exams/bulk/20021/aer503s_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER503H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER503H1','AER','AER503H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER503H1', 63, 20031, 'AER503 20031 EXAM', 'exams/bulk/20031/aer503s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER503H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER503H1','AER','AER503H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER503H1', 63, 20051, 'AER503 20051 EXAM', 'exams/bulk/20051/aer503s_2005_exam.pdf');

select count(1) into courseCount from course where id ='AER503H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER503H1','AER','AER503H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER503H1', 63, 20071, 'AER503 20071 EXAM', 'exams/bulk/20071/aer503s_2007_exam.pdf');

select count(1) into courseCount from course where id ='AER506H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER506H1','AER','AER506H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER506H1', 63, 20019, 'AER506 20019 EXAM', 'exams/bulk/20019/aer506f_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER506H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER506H1','AER','AER506H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER506H1', 63, 20029, 'AER506 20029 EXAM', 'exams/bulk/20029/aer506f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER506H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER506H1','AER','AER506H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER506H1', 63, 20049, 'AER506 20049 EXAM', 'exams/bulk/20049/aer506f_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER506H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER506H1','AER','AER506H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER506H1', 63, 20069, 'AER506 20069 EXAM', 'exams/bulk/20069/aer506f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER510H1','AER','AER510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER510H1', 63, 20029, 'AER510 20029 EXAM', 'exams/bulk/20029/aer510f_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER510H1','AER','AER510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER510H1', 63, 20011, 'AER510 20011 EXAM', 'exams/bulk/20011/aer510s_2001_exam.pdf');

select count(1) into courseCount from course where id ='AER510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER510H1','AER','AER510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER510H1', 63, 20021, 'AER510 20021 EXAM', 'exams/bulk/20021/aer510s_2002_exam.pdf');

select count(1) into courseCount from course where id ='AER510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER510H1','AER','AER510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER510H1', 63, 20041, 'AER510 20041 EXAM', 'exams/bulk/20041/aer510s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER510H1','AER','AER510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER510H1', 63, 20051, 'AER510 20051 EXAM', 'exams/bulk/20051/aer510s_2005_exam.pdf');

select count(1) into courseCount from course where id ='AER510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER510H1','AER','AER510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER510H1', 63, 20071, 'AER510 20071 EXAM', 'exams/bulk/20071/aer510s_2007_exam.pdf');

select count(1) into courseCount from course where id ='AER525H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER525H1','AER','AER525H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER525H1', 63, 20069, 'AER525 20069 EXAM', 'exams/bulk/20069/aer525f_2006_exam.pdf');

select count(1) into courseCount from course where id ='AER525H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER525H1','AER','AER525H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER525H1', 63, 20031, 'AER525 20031 EXAM', 'exams/bulk/20031/aer525s_2003_exam.PDF');

select count(1) into courseCount from course where id ='AER525H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER525H1','AER','AER525H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER525H1', 63, 20041, 'AER525 20041 EXAM', 'exams/bulk/20041/aer525s_2004_exam.pdf');

select count(1) into courseCount from course where id ='AER525H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER525H1','AER','AER525H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER525H1', 63, 20051, 'AER525 20051 EXAM', 'exams/bulk/20051/aer525s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APM288H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM288H1','APM','APM288H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM288H1', 63, 20019, 'APM288 20019 EXAM', 'exams/bulk/20019/apm288f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APM288H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM288H1','APM','APM288H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM288H1', 63, 20029, 'APM288 20029 EXAM', 'exams/bulk/20029/apm288f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APM288H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM288H1','APM','APM288H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM288H1', 63, 20049, 'APM288 20049 EXAM', 'exams/bulk/20049/apm288f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 19969, 'APM384 19969 EXAM', 'exams/bulk/19969/apm384f_1996_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 19999, 'APM384 19999 EXAM', 'exams/bulk/19999/apm384f_1999_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 20019, 'APM384 20019 EXAM', 'exams/bulk/20019/apm384f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 20029, 'APM384 20029 EXAM', 'exams/bulk/20029/apm384f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 20049, 'APM384 20049 EXAM', 'exams/bulk/20049/apm384f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APM384H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM384H1','APM','APM384H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM384H1', 63, 20069, 'APM384 20069 EXAM', 'exams/bulk/20069/apm384f_2006_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20019, 'APS103 20019 EXAM', 'exams/bulk/20019/aps103f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20029, 'APS103 20029 EXAM', 'exams/bulk/20029/aps103f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20049, 'APS103 20049 EXAM', 'exams/bulk/20049/aps103f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20011, 'APS103 20011 EXAM', 'exams/bulk/20011/aps103s_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20021, 'APS103 20021 EXAM', 'exams/bulk/20021/aps103s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20031, 'APS103 20031 EXAM', 'exams/bulk/20031/aps103s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20041, 'APS103 20041 EXAM', 'exams/bulk/20041/aps103s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS103H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS103H1','APS','APS103H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS103H1', 63, 20051, 'APS103 20051 EXAM', 'exams/bulk/20051/aps103s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20019, 'APS105 20019 EXAM', 'exams/bulk/20019/aps105f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20029, 'APS105 20029 EXAM', 'exams/bulk/20029/aps105f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20049, 'APS105 20049 EXAM', 'exams/bulk/20049/aps105f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20069, 'APS105 20069 EXAM', 'exams/bulk/20069/aps105f_2006_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20021, 'APS105 20021 EXAM', 'exams/bulk/20021/aps105s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20031, 'APS105 20031 EXAM', 'exams/bulk/20031/aps105s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20041, 'APS105 20041 EXAM', 'exams/bulk/20041/aps105s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20051, 'APS105 20051 EXAM', 'exams/bulk/20051/aps105s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20071, 'APS105 20071 EXAM', 'exams/bulk/20071/aps105s_2007_exam-mie.pdf');

select count(1) into courseCount from course where id ='APS105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS105H1','APS','APS105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS105H1', 63, 20071, 'APS105 20071 EXAM', 'exams/bulk/20071/aps105s_2007_exam.pdf');

select count(1) into courseCount from course where id ='APS106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS106H1','APS','APS106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS106H1', 63, 20011, 'APS106 20011 EXAM', 'exams/bulk/20011/aps106s_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS106H1','APS','APS106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS106H1', 63, 20021, 'APS106 20021 EXAM', 'exams/bulk/20021/aps106s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS106H1','APS','APS106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS106H1', 63, 20031, 'APS106 20031 EXAM', 'exams/bulk/20031/aps106s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS106H1','APS','APS106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS106H1', 63, 20041, 'APS106 20041 EXAM', 'exams/bulk/20041/aps106s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS106H1','APS','APS106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS106H1', 63, 20051, 'APS106 20051 EXAM', 'exams/bulk/20051/aps106s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS106H1','APS','APS106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS106H1', 63, 20071, 'APS106 20071 EXAM', 'exams/bulk/20071/aps106s_2007_exam.pdf');

select count(1) into courseCount from course where id ='APS107H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS107H1','APS','APS107H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS107H1', 63, 20011, 'APS107 20011 EXAM', 'exams/bulk/20011/aps107s_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS107H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS107H1','APS','APS107H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS107H1', 63, 20021, 'APS107 20021 EXAM', 'exams/bulk/20021/aps107s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS107H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS107H1','APS','APS107H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS107H1', 63, 20031, 'APS107 20031 EXAM', 'exams/bulk/20031/aps107s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS111H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS111H1','APS','APS111H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS111H1', 63, 20039, 'APS111 20039 EXAM', 'exams/bulk/20039/aps111f_2003_exam.pdf');

select count(1) into courseCount from course where id ='APS111H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS111H1','APS','APS111H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS111H1', 63, 20049, 'APS111 20049 EXAM', 'exams/bulk/20049/aps111f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS111H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS111H1','APS','APS111H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS111H1', 63, 20069, 'APS111 20069 EXAM', 'exams/bulk/20069/aps111f_2006_exam.pdf');

select count(1) into courseCount from course where id ='APS111H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS111H1','APS','APS111H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS111H1', 63, 20071, 'APS111 20071 EXAM', 'exams/bulk/20071/aps111s_2007_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20019, 'APS185 20019 EXAM', 'exams/bulk/20019/aps185f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20029, 'APS185 20029 EXAM', 'exams/bulk/20029/aps185f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20049, 'APS185 20049 EXAM', 'exams/bulk/20049/aps185f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20011, 'APS185 20011 EXAM', 'exams/bulk/20011/aps185s_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20021, 'APS185 20021 EXAM', 'exams/bulk/20021/aps185s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20031, 'APS185 20031 EXAM', 'exams/bulk/20031/aps185s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20041, 'APS185 20041 EXAM', 'exams/bulk/20041/aps185s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS185H1','APS','APS185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS185H1', 63, 20051, 'APS185 20051 EXAM', 'exams/bulk/20051/aps185s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS203H1','APS','APS203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS203H1', 63, 20071, 'APS203 20071 EXAM', 'exams/bulk/20071/aps203s_2007_exam.pdf');

select count(1) into courseCount from course where id ='APS234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS234H1','APS','APS234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS234H1', 63, 20019, 'APS234 20019 EXAM', 'exams/bulk/20019/aps234f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS234H1','APS','APS234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS234H1', 63, 20029, 'APS234 20029 EXAM', 'exams/bulk/20029/aps234f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS234H1','APS','APS234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS234H1', 63, 20049, 'APS234 20049 EXAM', 'exams/bulk/20049/aps234f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS234H1','APS','APS234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS234H1', 63, 20069, 'APS234 20069 EXAM', 'exams/bulk/20069/aps234f_2006_exam.pdf');

select count(1) into courseCount from course where id ='APS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS280H1','APS','APS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS280H1', 63, 20021, 'APS280 20021 EXAM', 'exams/bulk/20021/aps280s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS280H1','APS','APS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS280H1', 63, 20031, 'APS280 20031 EXAM', 'exams/bulk/20031/aps280s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS280H1','APS','APS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS280H1', 63, 20041, 'APS280 20041 EXAM', 'exams/bulk/20041/aps280s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS280H1','APS','APS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS280H1', 63, 20051, 'APS280 20051 EXAM', 'exams/bulk/20051/aps280s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS302H1','APS','APS302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS302H1', 63, 20019, 'APS302 20019 EXAM', 'exams/bulk/20019/aps302f_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS302H1','APS','APS302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS302H1', 63, 20029, 'APS302 20029 EXAM', 'exams/bulk/20029/aps302f_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS302H1','APS','APS302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS302H1', 63, 20049, 'APS302 20049 EXAM', 'exams/bulk/20049/aps302f_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS302H1','APS','APS302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS302H1', 63, 20071, 'APS302 20071 EXAM', 'exams/bulk/20071/aps302s_2007_exam.pdf');

select count(1) into courseCount from course where id ='APS304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS304H1','APS','APS304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS304H1', 63, 20011, 'APS304 20011 EXAM', 'exams/bulk/20011/aps304s_2001_exam.pdf');

select count(1) into courseCount from course where id ='APS304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS304H1','APS','APS304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS304H1', 63, 20021, 'APS304 20021 EXAM', 'exams/bulk/20021/aps304s_2002_exam.pdf');

select count(1) into courseCount from course where id ='APS304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS304H1','APS','APS304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS304H1', 63, 20031, 'APS304 20031 EXAM', 'exams/bulk/20031/aps304s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS304H1','APS','APS304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS304H1', 63, 20041, 'APS304 20041 EXAM', 'exams/bulk/20041/aps304s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS304H1','APS','APS304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS304H1', 63, 20051, 'APS304 20051 EXAM', 'exams/bulk/20051/aps304s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS432H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS432H1','APS','APS432H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS432H1', 63, 20031, 'APS432 20031 EXAM', 'exams/bulk/20031/aps432s_2003_exam.PDF');

select count(1) into courseCount from course where id ='APS432H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS432H1','APS','APS432H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS432H1', 63, 20041, 'APS432 20041 EXAM', 'exams/bulk/20041/aps432s_2004_exam.pdf');

select count(1) into courseCount from course where id ='APS432H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS432H1','APS','APS432H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS432H1', 63, 20051, 'APS432 20051 EXAM', 'exams/bulk/20051/aps432s_2005_exam.pdf');

select count(1) into courseCount from course where id ='APS432H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APS432H1','APS','APS432H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APS432H1', 63, 20071, 'APS432 20071 EXAM', 'exams/bulk/20071/aps432s_2007_exam.pdf');

select count(1) into courseCount from course where id ='BME105H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME105H1','BME','BME105H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME105H1', 63, 20071, 'BME105 20071 EXAM', 'exams/bulk/20071/bme105s_2007_exam.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 63, 20021, 'BME205 20021 EXAM', 'exams/bulk/20021/bme205s_2002_exam.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 63, 20031, 'BME205 20031 EXAM', 'exams/bulk/20031/bme205s_2003_exam.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 63, 20041, 'BME205 20041 EXAM', 'exams/bulk/20041/bme205s_2004_exam.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 63, 20051, 'BME205 20051 EXAM', 'exams/bulk/20051/bme205s_2005_exam.pdf');

select count(1) into courseCount from course where id ='BME210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME210H1','BME','BME210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME210H1', 63, 20071, 'BME210 20071 EXAM', 'exams/bulk/20071/bme210s_2007_exam.pdf');

select count(1) into courseCount from course where id ='BME350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME350H1','BME','BME350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME350H1', 63, 20051, 'BME350 20051 EXAM', 'exams/bulk/20051/bme350s_2005_exam.pdf');

select count(1) into courseCount from course where id ='BME350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME350H1','BME','BME350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME350H1', 63, 20071, 'BME350 20071 EXAM', 'exams/bulk/20071/bme350s_2007_exam.pdf');

select count(1) into courseCount from course where id ='BME395H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME395H1','BME','BME395H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME395H1', 63, 20021, 'BME395 20021 EXAM', 'exams/bulk/20021/bme395s_2002_exam.pdf');

select count(1) into courseCount from course where id ='BME395H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME395H1','BME','BME395H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME395H1', 63, 20031, 'BME395 20031 EXAM', 'exams/bulk/20031/bme395s_2003_exam.PDF');

select count(1) into courseCount from course where id ='BME395H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME395H1','BME','BME395H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME395H1', 63, 20041, 'BME395 20041 EXAM', 'exams/bulk/20041/bme395s_2004_exam.pdf');

select count(1) into courseCount from course where id ='BME395H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME395H1','BME','BME395H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME395H1', 63, 20051, 'BME395 20051 EXAM', 'exams/bulk/20051/bme395s_2005_exam.pdf');

select count(1) into courseCount from course where id ='BME395H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME395H1','BME','BME395H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME395H1', 63, 20071, 'BME395 20071 EXAM', 'exams/bulk/20071/bme395s_2007_exam.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 63, 19989, 'BME495 19989 EXAM', 'exams/bulk/19989/bme495f_1998_exam.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 63, 19999, 'BME495 19999 EXAM', 'exams/bulk/19999/bme495f_1999_exam.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 63, 20009, 'BME495 20009 EXAM', 'exams/bulk/20009/bme495f_2000_exam.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 63, 20019, 'BME495 20019 EXAM', 'exams/bulk/20019/bme495f_2001_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 20049, 'BME496 20049 EXAM', 'exams/bulk/20049/bme496f_2004_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 20069, 'BME496 20069 EXAM', 'exams/bulk/20069/bme496f_2006_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 19991, 'BME496 19991 EXAM', 'exams/bulk/19991/bme496s_1999_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 20011, 'BME496 20011 EXAM', 'exams/bulk/20011/bme496s_2001_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 20021, 'BME496 20021 EXAM', 'exams/bulk/20021/bme496s_2002_exam.pdf');

select count(1) into courseCount from course where id ='BME496H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME496H1','BME','BME496H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME496H1', 63, 20031, 'BME496 20031 EXAM', 'exams/bulk/20031/bme496s_2003_exam.PDF');

select count(1) into courseCount from course where id ='BME510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME510H1','BME','BME510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME510H1', 63, 20031, 'BME510 20031 EXAM', 'exams/bulk/20031/bme510s_2003_exam.PDF');

select count(1) into courseCount from course where id ='BME510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME510H1','BME','BME510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME510H1', 63, 20041, 'BME510 20041 EXAM', 'exams/bulk/20041/bme510s_2004_exam.pdf');

select count(1) into courseCount from course where id ='BME510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME510H1','BME','BME510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME510H1', 63, 20051, 'BME510 20051 EXAM', 'exams/bulk/20051/bme510s_2005_exam.pdf');

select count(1) into courseCount from course where id ='BME510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME510H1','BME','BME510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME510H1', 63, 20071, 'BME510 20071 EXAM', 'exams/bulk/20071/bme510s_2007_exam.pdf');

select count(1) into courseCount from course where id ='BME595H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME595H1','BME','BME595H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME595H1', 63, 20021, 'BME595 20021 EXAM', 'exams/bulk/20021/bme595s_2002_exam.pdf');

select count(1) into courseCount from course where id ='BME595H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME595H1','BME','BME595H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME595H1', 63, 20031, 'BME595 20031 EXAM', 'exams/bulk/20031/bme595s_2003_exam.PDF');

select count(1) into courseCount from course where id ='BME595H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME595H1','BME','BME595H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME595H1', 63, 20041, 'BME595 20041 EXAM', 'exams/bulk/20041/bme595s_2004_exam.pdf');

select count(1) into courseCount from course where id ='BME595H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME595H1','BME','BME595H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME595H1', 63, 20051, 'BME595 20051 EXAM', 'exams/bulk/20051/bme595s_2005_exam.pdf');

select count(1) into courseCount from course where id ='BME595H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME595H1','BME','BME595H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME595H1', 63, 20071, 'BME595 20071 EXAM', 'exams/bulk/20071/bme595s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 19989, 'CHE112 19989 EXAM', 'exams/bulk/19989/CHE112F_1998_EXAM.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 19999, 'CHE112 19999 EXAM', 'exams/bulk/19999/CHE112F_1999_EXAM.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20009, 'CHE112 20009 EXAM', 'exams/bulk/20009/CHE112F_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20019, 'CHE112 20019 EXAM', 'exams/bulk/20019/che112f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20029, 'CHE112 20029 EXAM', 'exams/bulk/20029/che112f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20049, 'CHE112 20049 EXAM', 'exams/bulk/20049/che112f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20069, 'CHE112 20069 EXAM', 'exams/bulk/20069/che112f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20011, 'CHE112 20011 EXAM', 'exams/bulk/20011/che112s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20021, 'CHE112 20021 EXAM', 'exams/bulk/20021/che112s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20031, 'CHE112 20031 EXAM', 'exams/bulk/20031/che112s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20041, 'CHE112 20041 EXAM', 'exams/bulk/20041/che112s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20051, 'CHE112 20051 EXAM', 'exams/bulk/20051/che112s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE112H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE112H1','CHE','CHE112H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE112H1', 63, 20071, 'CHE112 20071 EXAM', 'exams/bulk/20071/che112s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE113H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE113H1','CHE','CHE113H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE113H1', 63, 20041, 'CHE113 20041 EXAM', 'exams/bulk/20041/che113s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE113H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE113H1','CHE','CHE113H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE113H1', 63, 20051, 'CHE113 20051 EXAM', 'exams/bulk/20051/che113s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE113H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE113H1','CHE','CHE113H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE113H1', 63, 20071, 'CHE113 20071 EXAM', 'exams/bulk/20071/che113s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE119H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE119H1','CHE','CHE119H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE119H1', 63, 20071, 'CHE119 20071 EXAM', 'exams/bulk/20071/che119s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE123H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE123H1','CHE','CHE123H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE123H1', 63, 20011, 'CHE123 20011 EXAM', 'exams/bulk/20011/che123s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE123H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE123H1','CHE','CHE123H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE123H1', 63, 20021, 'CHE123 20021 EXAM', 'exams/bulk/20021/che123s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE123H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE123H1','CHE','CHE123H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE123H1', 63, 20031, 'CHE123 20031 EXAM', 'exams/bulk/20031/che123s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19949, 'CHE150 19949 EXAM', 'exams/bulk/19949/che150f_1994_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19969, 'CHE150 19969 EXAM', 'exams/bulk/19969/che150f_1996_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19979, 'CHE150 19979 EXAM', 'exams/bulk/19979/che150f_1997_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19989, 'CHE150 19989 EXAM', 'exams/bulk/19989/che150f_1998_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19971, 'CHE150 19971 EXAM', 'exams/bulk/19971/che150s_1997_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 19981, 'CHE150 19981 EXAM', 'exams/bulk/19981/che150s_1998_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 20001, 'CHE150 20001 EXAM', 'exams/bulk/20001/che150s_2000_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 20011, 'CHE150 20011 EXAM', 'exams/bulk/20011/che150s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 20021, 'CHE150 20021 EXAM', 'exams/bulk/20021/che150s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 20031, 'CHE150 20031 EXAM', 'exams/bulk/20031/che150s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 20041, 'CHE150 20041 EXAM', 'exams/bulk/20041/che150s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 63, 20051, 'CHE150 20051 EXAM', 'exams/bulk/20051/che150s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE200H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE200H1','CHE','CHE200H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE200H1', 63, 20019, 'CHE200 20019 EXAM', 'exams/bulk/20019/che200f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE200H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE200H1','CHE','CHE200H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE200H1', 63, 20029, 'CHE200 20029 EXAM', 'exams/bulk/20029/che200f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE200H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE200H1','CHE','CHE200H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE200H1', 63, 20049, 'CHE200 20049 EXAM', 'exams/bulk/20049/che200f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE200H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE200H1','CHE','CHE200H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE200H1', 63, 20069, 'CHE200 20069 EXAM', 'exams/bulk/20069/che200f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE203H1','CHE','CHE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE203H1', 63, 20019, 'CHE203 20019 EXAM', 'exams/bulk/20019/che203f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE203H1','CHE','CHE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE203H1', 63, 20029, 'CHE203 20029 EXAM', 'exams/bulk/20029/che203f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE203H1','CHE','CHE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE203H1', 63, 20049, 'CHE203 20049 EXAM', 'exams/bulk/20049/che203f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE203H1','CHE','CHE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE203H1', 63, 20071, 'CHE203 20071 EXAM', 'exams/bulk/20071/che203s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE207H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE207H1','CHE','CHE207H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE207H1', 63, 20011, 'CHE207 20011 EXAM', 'exams/bulk/20011/che207s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE207H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE207H1','CHE','CHE207H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE207H1', 63, 20021, 'CHE207 20021 EXAM', 'exams/bulk/20021/che207s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE207H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE207H1','CHE','CHE207H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE207H1', 63, 20031, 'CHE207 20031 EXAM', 'exams/bulk/20031/che207s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE207H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE207H1','CHE','CHE207H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE207H1', 63, 20041, 'CHE207 20041 EXAM', 'exams/bulk/20041/che207s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE208H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE208H1','CHE','CHE208H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE208H1', 63, 20069, 'CHE208 20069 EXAM', 'exams/bulk/20069/che208f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE208H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE208H1','CHE','CHE208H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE208H1', 63, 20051, 'CHE208 20051 EXAM', 'exams/bulk/20051/che208s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE210H1','CHE','CHE210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE210H1', 63, 20051, 'CHE210 20051 EXAM', 'exams/bulk/20051/che210s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE210H1','CHE','CHE210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE210H1', 63, 20071, 'CHE210 20071 EXAM', 'exams/bulk/20071/che210s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE211H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE211H1','CHE','CHE211H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE211H1', 63, 20029, 'CHE211 20029 EXAM', 'exams/bulk/20029/che211f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE211H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE211H1','CHE','CHE211H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE211H1', 63, 20039, 'CHE211 20039 EXAM', 'exams/bulk/20039/che211f_2003_exam.doc');

select count(1) into courseCount from course where id ='CHE211H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE211H1','CHE','CHE211H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE211H1', 63, 20049, 'CHE211 20049 EXAM', 'exams/bulk/20049/che211f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE211H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE211H1','CHE','CHE211H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE211H1', 63, 20069, 'CHE211 20069 EXAM', 'exams/bulk/20069/che211f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE212H1','CHE','CHE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE212H1', 63, 20011, 'CHE212 20011 EXAM', 'exams/bulk/20011/che212s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE212H1','CHE','CHE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE212H1', 63, 20021, 'CHE212 20021 EXAM', 'exams/bulk/20021/che212s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE212H1','CHE','CHE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE212H1', 63, 20031, 'CHE212 20031 EXAM', 'exams/bulk/20031/che212s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE212H1','CHE','CHE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE212H1', 63, 20041, 'CHE212 20041 EXAM', 'exams/bulk/20041/che212s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE218H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE218H1','CHE','CHE218H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE218H1', 63, 20071, 'CHE218 20071 EXAM', 'exams/bulk/20071/che218s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE219H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE219H1','CHE','CHE219H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE219H1', 63, 20029, 'CHE219 20029 EXAM', 'exams/bulk/20029/che219f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE219H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE219H1','CHE','CHE219H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE219H1', 63, 20049, 'CHE219 20049 EXAM', 'exams/bulk/20049/che219f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE219H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE219H1','CHE','CHE219H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE219H1', 63, 20011, 'CHE219 20011 EXAM', 'exams/bulk/20011/che219s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE219H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE219H1','CHE','CHE219H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE219H1', 63, 20021, 'CHE219 20021 EXAM', 'exams/bulk/20021/che219s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE221H1','CHE','CHE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE221H1', 63, 19959, 'CHE221 19959 EXAM', 'exams/bulk/19959/che221f_1995_exam.pdf');

select count(1) into courseCount from course where id ='CHE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE221H1','CHE','CHE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE221H1', 63, 20019, 'CHE221 20019 EXAM', 'exams/bulk/20019/che221f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE221H1','CHE','CHE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE221H1', 63, 20029, 'CHE221 20029 EXAM', 'exams/bulk/20029/che221f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE221H1','CHE','CHE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE221H1', 63, 20039, 'CHE221 20039 EXAM', 'exams/bulk/20039/che221f_2003_exam.pdf');

select count(1) into courseCount from course where id ='CHE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE221H1','CHE','CHE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE221H1', 63, 20049, 'CHE221 20049 EXAM', 'exams/bulk/20049/che221f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE222H1','CHE','CHE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE222H1', 63, 20011, 'CHE222 20011 EXAM', 'exams/bulk/20011/che222s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE222H1','CHE','CHE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE222H1', 63, 20021, 'CHE222 20021 EXAM', 'exams/bulk/20021/che222s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE222H1','CHE','CHE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE222H1', 63, 20031, 'CHE222 20031 EXAM', 'exams/bulk/20031/che222s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE222H1','CHE','CHE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE222H1', 63, 20041, 'CHE222 20041 EXAM', 'exams/bulk/20041/che222s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE222H1','CHE','CHE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE222H1', 63, 20051, 'CHE222 20051 EXAM', 'exams/bulk/20051/che222s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE222H1','CHE','CHE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE222H1', 63, 20071, 'CHE222 20071 EXAM', 'exams/bulk/20071/che222s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE223H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE223H1','CHE','CHE223H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE223H1', 63, 20051, 'CHE223 20051 EXAM', 'exams/bulk/20051/che223s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE223H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE223H1','CHE','CHE223H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE223H1', 63, 20071, 'CHE223 20071 EXAM', 'exams/bulk/20071/che223s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE231H1','CHE','CHE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE231H1', 63, 20011, 'CHE231 20011 EXAM', 'exams/bulk/20011/che231s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE231H1','CHE','CHE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE231H1', 63, 20021, 'CHE231 20021 EXAM', 'exams/bulk/20021/che231s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE231H1','CHE','CHE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE231H1', 63, 20031, 'CHE231 20031 EXAM', 'exams/bulk/20031/che231s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE231H1','CHE','CHE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE231H1', 63, 20041, 'CHE231 20041 EXAM-B', 'exams/bulk/20041/che231s_2004_exam-b.pdf');

select count(1) into courseCount from course where id ='CHE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE231H1','CHE','CHE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE231H1', 63, 20041, 'CHE231 20041 EXAM', 'exams/bulk/20041/che231s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE249H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE249H1','CHE','CHE249H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE249H1', 63, 20049, 'CHE249 20049 EXAM', 'exams/bulk/20049/che249f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE249H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE249H1','CHE','CHE249H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE249H1', 63, 20069, 'CHE249 20069 EXAM', 'exams/bulk/20069/che249f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE311H1','CHE','CHE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE311H1', 63, 20011, 'CHE311 20011 EXAM', 'exams/bulk/20011/che311s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE311H1','CHE','CHE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE311H1', 63, 20021, 'CHE311 20021 EXAM', 'exams/bulk/20021/che311s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE311H1','CHE','CHE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE311H1', 63, 20031, 'CHE311 20031 EXAM', 'exams/bulk/20031/che311s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE311H1','CHE','CHE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE311H1', 63, 20041, 'CHE311 20041 EXAM', 'exams/bulk/20041/che311s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE311H1','CHE','CHE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE311H1', 63, 20071, 'CHE311 20071 EXAM', 'exams/bulk/20071/che311s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE312H1','CHE','CHE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE312H1', 63, 20019, 'CHE312 20019 EXAM', 'exams/bulk/20019/che312f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE312H1','CHE','CHE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE312H1', 63, 20029, 'CHE312 20029 EXAM', 'exams/bulk/20029/che312f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE312H1','CHE','CHE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE312H1', 63, 20049, 'CHE312 20049 EXAM', 'exams/bulk/20049/che312f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE321H1','CHE','CHE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE321H1', 63, 20019, 'CHE321 20019 EXAM', 'exams/bulk/20019/che321f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE321H1','CHE','CHE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE321H1', 63, 20029, 'CHE321 20029 EXAM', 'exams/bulk/20029/che321f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE321H1','CHE','CHE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE321H1', 63, 20049, 'CHE321 20049 EXAM', 'exams/bulk/20049/che321f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE322H1','CHE','CHE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE322H1', 63, 20011, 'CHE322 20011 EXAM', 'exams/bulk/20011/che322s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE322H1','CHE','CHE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE322H1', 63, 20021, 'CHE322 20021 EXAM', 'exams/bulk/20021/che322s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE322H1','CHE','CHE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE322H1', 63, 20031, 'CHE322 20031 EXAM', 'exams/bulk/20031/che322s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE322H1','CHE','CHE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE322H1', 63, 20041, 'CHE322 20041 EXAM', 'exams/bulk/20041/che322s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE322H1','CHE','CHE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE322H1', 63, 20051, 'CHE322 20051 EXAM', 'exams/bulk/20051/che322s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE322H1','CHE','CHE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE322H1', 63, 20071, 'CHE322 20071 EXAM', 'exams/bulk/20071/che322s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE323H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE323H1','CHE','CHE323H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE323H1', 63, 20069, 'CHE323 20069 EXAM', 'exams/bulk/20069/che323f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE324H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE324H1','CHE','CHE324H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE324H1', 63, 20069, 'CHE324 20069 EXAM', 'exams/bulk/20069/che324f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE331H1','CHE','CHE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE331H1', 63, 20019, 'CHE331 20019 EXAM', 'exams/bulk/20019/che331f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE331H1','CHE','CHE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE331H1', 63, 20029, 'CHE331 20029 EXAM', 'exams/bulk/20029/che331f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE331H1','CHE','CHE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE331H1', 63, 20049, 'CHE331 20049 EXAM', 'exams/bulk/20049/che331f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE332H1','CHE','CHE332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE332H1', 63, 20019, 'CHE332 20019 EXAM', 'exams/bulk/20019/che332f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE332H1','CHE','CHE332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE332H1', 63, 20029, 'CHE332 20029 EXAM', 'exams/bulk/20029/che332f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE332H1','CHE','CHE332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE332H1', 63, 20049, 'CHE332 20049 EXAM', 'exams/bulk/20049/che332f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE332H1','CHE','CHE332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE332H1', 63, 20069, 'CHE332 20069 EXAM', 'exams/bulk/20069/che332f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE333H1','CHE','CHE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE333H1', 63, 20011, 'CHE333 20011 EXAM', 'exams/bulk/20011/che333s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE333H1','CHE','CHE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE333H1', 63, 20021, 'CHE333 20021 EXAM', 'exams/bulk/20021/che333s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE333H1','CHE','CHE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE333H1', 63, 20031, 'CHE333 20031 EXAM', 'exams/bulk/20031/che333s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE333H1','CHE','CHE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE333H1', 63, 20041, 'CHE333 20041 EXAM', 'exams/bulk/20041/che333s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE333H1','CHE','CHE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE333H1', 63, 20051, 'CHE333 20051 EXAM', 'exams/bulk/20051/che333s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE333H1','CHE','CHE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE333H1', 63, 20071, 'CHE333 20071 EXAM', 'exams/bulk/20071/che333s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE334H1','CHE','CHE334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE334H1', 63, 20071, 'CHE334 20071 EXAM', 'exams/bulk/20071/che334s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE341H1','CHE','CHE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE341H1', 63, 20011, 'CHE341 20011 EXAM', 'exams/bulk/20011/che341s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE341H1','CHE','CHE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE341H1', 63, 20021, 'CHE341 20021 EXAM', 'exams/bulk/20021/che341s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE341H1','CHE','CHE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE341H1', 63, 20031, 'CHE341 20031 EXAM', 'exams/bulk/20031/che341s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE341H1','CHE','CHE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE341H1', 63, 20041, 'CHE341 20041 EXAM', 'exams/bulk/20041/che341s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE341H1','CHE','CHE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE341H1', 63, 20051, 'CHE341 20051 EXAM', 'exams/bulk/20051/che341s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE341H1','CHE','CHE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE341H1', 63, 20071, 'CHE341 20071 EXAM', 'exams/bulk/20071/che341s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE349H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE349H1','CHE','CHE349H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE349H1', 63, 20029, 'CHE349 20029 EXAM', 'exams/bulk/20029/che349f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE349H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE349H1','CHE','CHE349H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE349H1', 63, 20049, 'CHE349 20049 EXAM', 'exams/bulk/20049/che349f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE349H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE349H1','CHE','CHE349H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE349H1', 63, 20011, 'CHE349 20011 EXAM', 'exams/bulk/20011/che349s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE349H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE349H1','CHE','CHE349H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE349H1', 63, 20031, 'CHE349 20031 EXAM', 'exams/bulk/20031/che349s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE349H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE349H1','CHE','CHE349H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE349H1', 63, 20051, 'CHE349 20051 EXAM', 'exams/bulk/20051/che349s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE353H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE353H1','CHE','CHE353H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE353H1', 63, 20069, 'CHE353 20069 EXAM', 'exams/bulk/20069/che353f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE354H1','CHE','CHE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE354H1', 63, 20071, 'CHE354 20071 EXAM', 'exams/bulk/20071/che354s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE390H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE390H1','CHE','CHE390H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE390H1', 63, 20019, 'CHE390 20019 EXAM', 'exams/bulk/20019/che390f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE390H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE390H1','CHE','CHE390H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE390H1', 63, 20029, 'CHE390 20029 EXAM', 'exams/bulk/20029/che390f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE390H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE390H1','CHE','CHE390H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE390H1', 63, 20049, 'CHE390 20049 EXAM', 'exams/bulk/20049/che390f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE390H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE390H1','CHE','CHE390H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE390H1', 63, 20069, 'CHE390 20069 EXAM', 'exams/bulk/20069/che390f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 20019, 'CHE391 20019 EXAM', 'exams/bulk/20019/che391f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 20029, 'CHE391 20029 EXAM', 'exams/bulk/20029/che391f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 20049, 'CHE391 20049 EXAM', 'exams/bulk/20049/che391f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 20069, 'CHE391 20069 EXAM', 'exams/bulk/20069/che391f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 19981, 'CHE391 19981 EXAM', 'exams/bulk/19981/che391s_1998_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 19991, 'CHE391 19991 EXAM', 'exams/bulk/19991/che391s_1999_exam.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 63, 20011, 'CHE391 20011 EXAM', 'exams/bulk/20011/che391s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE392H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE392H1','CHE','CHE392H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE392H1', 63, 20011, 'CHE392 20011 EXAM', 'exams/bulk/20011/che392s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE392H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE392H1','CHE','CHE392H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE392H1', 63, 20021, 'CHE392 20021 EXAM', 'exams/bulk/20021/che392s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE392H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE392H1','CHE','CHE392H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE392H1', 63, 20031, 'CHE392 20031 EXAM', 'exams/bulk/20031/che392s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE392H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE392H1','CHE','CHE392H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE392H1', 63, 20041, 'CHE392 20041 EXAM', 'exams/bulk/20041/che392s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE392H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE392H1','CHE','CHE392H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE392H1', 63, 20051, 'CHE392 20051 EXAM', 'exams/bulk/20051/che392s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE393H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE393H1','CHE','CHE393H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE393H1', 63, 19979, 'CHE393 19979 EXAM', 'exams/bulk/19979/che393f_1997_exam.pdf');

select count(1) into courseCount from course where id ='CHE393H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE393H1','CHE','CHE393H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE393H1', 63, 20019, 'CHE393 20019 EXAM', 'exams/bulk/20019/che393f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE393H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE393H1','CHE','CHE393H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE393H1', 63, 20029, 'CHE393 20029 EXAM', 'exams/bulk/20029/che393f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE393H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE393H1','CHE','CHE393H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE393H1', 63, 20049, 'CHE393 20049 EXAM', 'exams/bulk/20049/che393f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE393H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE393H1','CHE','CHE393H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE393H1', 63, 20069, 'CHE393 20069 EXAM', 'exams/bulk/20069/che393f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CHE403H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE403H1','CHE','CHE403H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE403H1', 63, 20071, 'CHE403 20071 EXAM', 'exams/bulk/20071/che403s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE410H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE410H1','CHE','CHE410H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE410H1', 63, 20011, 'CHE410 20011 EXAM', 'exams/bulk/20011/che410s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE410H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE410H1','CHE','CHE410H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE410H1', 63, 20021, 'CHE410 20021 EXAM', 'exams/bulk/20021/che410s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE412H1','CHE','CHE412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE412H1', 63, 20019, 'CHE412 20019 EXAM', 'exams/bulk/20019/che412f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE412H1','CHE','CHE412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE412H1', 63, 20031, 'CHE412 20031 EXAM', 'exams/bulk/20031/che412s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE412H1','CHE','CHE412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE412H1', 63, 20041, 'CHE412 20041 EXAM', 'exams/bulk/20041/che412s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE412H1','CHE','CHE412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE412H1', 63, 20051, 'CHE412 20051 EXAM', 'exams/bulk/20051/che412s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE412H1','CHE','CHE412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE412H1', 63, 20071, 'CHE412 20071 EXAM', 'exams/bulk/20071/che412s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE415H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE415H1','CHE','CHE415H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE415H1', 63, 20049, 'CHE415 20049 EXAM', 'exams/bulk/20049/che415f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE446H1','CHE','CHE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE446H1', 63, 20029, 'CHE446 20029 EXAM', 'exams/bulk/20029/che446f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE457H1','CHE','CHE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE457H1', 63, 20011, 'CHE457 20011 EXAM', 'exams/bulk/20011/che457s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE457H1','CHE','CHE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE457H1', 63, 20021, 'CHE457 20021 EXAM', 'exams/bulk/20021/che457s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE457H1','CHE','CHE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE457H1', 63, 20031, 'CHE457 20031 EXAM', 'exams/bulk/20031/che457s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE457H1','CHE','CHE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE457H1', 63, 20041, 'CHE457 20041 EXAM', 'exams/bulk/20041/che457s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE457H1','CHE','CHE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE457H1', 63, 20051, 'CHE457 20051 EXAM', 'exams/bulk/20051/che457s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE460H1','CHE','CHE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE460H1', 63, 20029, 'CHE460 20029 EXAM', 'exams/bulk/20029/che460f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE460H1','CHE','CHE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE460H1', 63, 20011, 'CHE460 20011 EXAM', 'exams/bulk/20011/che460s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE460H1','CHE','CHE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE460H1', 63, 20021, 'CHE460 20021 EXAM', 'exams/bulk/20021/che460s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE460H1','CHE','CHE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE460H1', 63, 20041, 'CHE460 20041 EXAM', 'exams/bulk/20041/che460s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE460H1','CHE','CHE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE460H1', 63, 20051, 'CHE460 20051 EXAM', 'exams/bulk/20051/che460s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE460H1','CHE','CHE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE460H1', 63, 20071, 'CHE460 20071 EXAM', 'exams/bulk/20071/che460s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE461H1','CHE','CHE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE461H1', 63, 20029, 'CHE461 20029 EXAM', 'exams/bulk/20029/che461f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE461H1','CHE','CHE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE461H1', 63, 20021, 'CHE461 20021 EXAM', 'exams/bulk/20021/che461s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE461H1','CHE','CHE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE461H1', 63, 20041, 'CHE461 20041 EXAM', 'exams/bulk/20041/che461s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE461H1','CHE','CHE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE461H1', 63, 20051, 'CHE461 20051 EXAM', 'exams/bulk/20051/che461s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE461H1','CHE','CHE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE461H1', 63, 20071, 'CHE461 20071 EXAM', 'exams/bulk/20071/che461s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 20011, 'CHE462 20011 EXAM', 'exams/bulk/20011/che462s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 20021, 'CHE462 20021 EXAM', 'exams/bulk/20021/che462s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 20031, 'CHE462 20031 EXAM', 'exams/bulk/20031/che462s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 20041, 'CHE462 20041 EXAM', 'exams/bulk/20041/che462s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 20051, 'CHE462 20051 EXAM', 'exams/bulk/20051/che462s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE462H1','CHE','CHE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE462H1', 63, 20071, 'CHE462 20071 EXAM', 'exams/bulk/20071/che462s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE463H1','CHE','CHE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE463H1', 63, 20011, 'CHE463 20011 EXAM', 'exams/bulk/20011/che463s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE463H1','CHE','CHE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE463H1', 63, 20021, 'CHE463 20021 EXAM', 'exams/bulk/20021/che463s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE463H1','CHE','CHE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE463H1', 63, 20031, 'CHE463 20031 EXAM', 'exams/bulk/20031/che463s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE463H1','CHE','CHE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE463H1', 63, 20041, 'CHE463 20041 EXAM', 'exams/bulk/20041/che463s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE463H1','CHE','CHE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE463H1', 63, 20051, 'CHE463 20051 EXAM', 'exams/bulk/20051/che463s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE463H1','CHE','CHE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE463H1', 63, 20071, 'CHE463 20071 EXAM', 'exams/bulk/20071/che463s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE465H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE465H1','CHE','CHE465H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE465H1', 63, 20029, 'CHE465 20029 EXAM-B', 'exams/bulk/20029/che465f_2002_exam-b.pdf');

select count(1) into courseCount from course where id ='CHE465H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE465H1','CHE','CHE465H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE465H1', 63, 20029, 'CHE465 20029 EXAM', 'exams/bulk/20029/che465f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE465H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE465H1','CHE','CHE465H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE465H1', 63, 20071, 'CHE465 20071 EXAM', 'exams/bulk/20071/che465s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE466H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE466H1','CHE','CHE466H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE466H1', 63, 20019, 'CHE466 20019 EXAM', 'exams/bulk/20019/che466f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE466H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE466H1','CHE','CHE466H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE466H1', 63, 20049, 'CHE466 20049 EXAM', 'exams/bulk/20049/che466f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE466H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE466H1','CHE','CHE466H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE466H1', 63, 20071, 'CHE466 20071 EXAM', 'exams/bulk/20071/che466s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE467H1','CHE','CHE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE467H1', 63, 20011, 'CHE467 20011 EXAM', 'exams/bulk/20011/che467s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE467H1','CHE','CHE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE467H1', 63, 20021, 'CHE467 20021 EXAM', 'exams/bulk/20021/che467s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE467H1','CHE','CHE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE467H1', 63, 20031, 'CHE467 20031 EXAM', 'exams/bulk/20031/che467s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE467H1','CHE','CHE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE467H1', 63, 20041, 'CHE467 20041 EXAM', 'exams/bulk/20041/che467s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE467H1','CHE','CHE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE467H1', 63, 20051, 'CHE467 20051 EXAM', 'exams/bulk/20051/che467s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE468H1','CHE','CHE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE468H1', 63, 20029, 'CHE468 20029 EXAM', 'exams/bulk/20029/che468f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE468H1','CHE','CHE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE468H1', 63, 20049, 'CHE468 20049 EXAM', 'exams/bulk/20049/che468f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE468H1','CHE','CHE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE468H1', 63, 20021, 'CHE468 20021 EXAM', 'exams/bulk/20021/che468s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE468H1','CHE','CHE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE468H1', 63, 20071, 'CHE468 20071 EXAM', 'exams/bulk/20071/che468s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE469H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE469H1','CHE','CHE469H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE469H1', 63, 20071, 'CHE469 20071 EXAM', 'exams/bulk/20071/che469s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE470H1','CHE','CHE470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE470H1', 63, 20049, 'CHE470 20049 EXAM', 'exams/bulk/20049/che470f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE470H1','CHE','CHE470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE470H1', 63, 20071, 'CHE470 20071 EXAM', 'exams/bulk/20071/che470s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE488H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE488H1','CHE','CHE488H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE488H1', 63, 20071, 'CHE488 20071 EXAM', 'exams/bulk/20071/che488s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CHE507H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE507H1','CHE','CHE507H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE507H1', 63, 20011, 'CHE507 20011 EXAM', 'exams/bulk/20011/che507s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE507H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE507H1','CHE','CHE507H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE507H1', 63, 20021, 'CHE507 20021 EXAM', 'exams/bulk/20021/che507s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE507H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE507H1','CHE','CHE507H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE507H1', 63, 20031, 'CHE507 20031 EXAM', 'exams/bulk/20031/che507s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE507H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE507H1','CHE','CHE507H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE507H1', 63, 20041, 'CHE507 20041 EXAM', 'exams/bulk/20041/che507s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE553H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE553H1','CHE','CHE553H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE553H1', 63, 20019, 'CHE553 20019 EXAM', 'exams/bulk/20019/che553f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CHE553H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE553H1','CHE','CHE553H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE553H1', 63, 20051, 'CHE553 20051 EXAM', 'exams/bulk/20051/che553s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE564H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE564H1','CHE','CHE564H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE564H1', 63, 20021, 'CHE564 20021 EXAM', 'exams/bulk/20021/che564s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CHE564H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE564H1','CHE','CHE564H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE564H1', 63, 20031, 'CHE564 20031 EXAM', 'exams/bulk/20031/che564s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CHE564H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE564H1','CHE','CHE564H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE564H1', 63, 20041, 'CHE564 20041 EXAM', 'exams/bulk/20041/che564s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CHE564H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE564H1','CHE','CHE564H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE564H1', 63, 20051, 'CHE564 20051 EXAM', 'exams/bulk/20051/che564s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CHE564H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE564H1','CHE','CHE564H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE564H1', 63, 20071, 'CHE564 20071 EXAM', 'exams/bulk/20071/che564s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20019, 'CIV101 20019 EXAM', 'exams/bulk/20019/civ101f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20029, 'CIV101 20029 EXAM', 'exams/bulk/20029/civ101f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20049, 'CIV101 20049 EXAM', 'exams/bulk/20049/civ101f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20069, 'CIV101 20069 EXAM', 'exams/bulk/20069/civ101f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20011, 'CIV101 20011 EXAM', 'exams/bulk/20011/civ101s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20021, 'CIV101 20021 EXAM', 'exams/bulk/20021/civ101s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20031, 'CIV101 20031 EXAM', 'exams/bulk/20031/civ101s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20041, 'CIV101 20041 EXAM', 'exams/bulk/20041/civ101s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20051, 'CIV101 20051 EXAM', 'exams/bulk/20051/civ101s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV101H1','CIV','CIV101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV101H1', 63, 20071, 'CIV101 20071 EXAM', 'exams/bulk/20071/civ101s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV102H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV102H1','CIV','CIV102H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV102H1', 63, 20019, 'CIV102 20019 EXAM', 'exams/bulk/20019/civ102f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV102H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV102H1','CIV','CIV102H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV102H1', 63, 20029, 'CIV102 20029 EXAM', 'exams/bulk/20029/civ102f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV102H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV102H1','CIV','CIV102H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV102H1', 63, 20049, 'CIV102 20049 EXAM', 'exams/bulk/20049/civ102f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV102H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV102H1','CIV','CIV102H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV102H1', 63, 20069, 'CIV102 20069 EXAM', 'exams/bulk/20069/civ102f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV209H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV209H1','CIV','CIV209H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV209H1', 63, 20049, 'CIV209 20049 EXAM', 'exams/bulk/20049/civ209f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV209H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV209H1','CIV','CIV209H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV209H1', 63, 20069, 'CIV209 20069 EXAM', 'exams/bulk/20069/civ209f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV210H1','CIV','CIV210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV210H1', 63, 20049, 'CIV210 20049 EXAM', 'exams/bulk/20049/civ210f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV210H1','CIV','CIV210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV210H1', 63, 20069, 'CIV210 20069 EXAM', 'exams/bulk/20069/civ210f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV210H1','CIV','CIV210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV210H1', 63, 20011, 'CIV210 20011 EXAM', 'exams/bulk/20011/civ210s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV210H1','CIV','CIV210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV210H1', 63, 20021, 'CIV210 20021 EXAM', 'exams/bulk/20021/civ210s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV214H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV214H1','CIV','CIV214H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV214H1', 63, 20011, 'CIV214 20011 EXAM', 'exams/bulk/20011/civ214s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV214H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV214H1','CIV','CIV214H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV214H1', 63, 20021, 'CIV214 20021 EXAM', 'exams/bulk/20021/civ214s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV214H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV214H1','CIV','CIV214H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV214H1', 63, 20031, 'CIV214 20031 EXAM', 'exams/bulk/20031/civ214s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV214H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV214H1','CIV','CIV214H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV214H1', 63, 20041, 'CIV214 20041 EXAM', 'exams/bulk/20041/civ214s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV214H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV214H1','CIV','CIV214H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV214H1', 63, 20051, 'CIV214 20051 EXAM', 'exams/bulk/20051/civ214s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV214H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV214H1','CIV','CIV214H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV214H1', 63, 20071, 'CIV214 20071 EXAM', 'exams/bulk/20071/civ214s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV231H1','CIV','CIV231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV231H1', 63, 20011, 'CIV231 20011 EXAM', 'exams/bulk/20011/civ231s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV231H1','CIV','CIV231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV231H1', 63, 20021, 'CIV231 20021 EXAM', 'exams/bulk/20021/civ231s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV231H1','CIV','CIV231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV231H1', 63, 20031, 'CIV231 20031 EXAM', 'exams/bulk/20031/civ231s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV231H1','CIV','CIV231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV231H1', 63, 20041, 'CIV231 20041 EXAM', 'exams/bulk/20041/civ231s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV231H1','CIV','CIV231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV231H1', 63, 20051, 'CIV231 20051 EXAM', 'exams/bulk/20051/civ231s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV231H1','CIV','CIV231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV231H1', 63, 20071, 'CIV231 20071 EXAM', 'exams/bulk/20071/civ231s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV235H1','CIV','CIV235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV235H1', 63, 20011, 'CIV235 20011 EXAM', 'exams/bulk/20011/civ235s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV235H1','CIV','CIV235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV235H1', 63, 20021, 'CIV235 20021 EXAM', 'exams/bulk/20021/civ235s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV235H1','CIV','CIV235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV235H1', 63, 20031, 'CIV235 20031 EXAM', 'exams/bulk/20031/civ235s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV235H1','CIV','CIV235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV235H1', 63, 20041, 'CIV235 20041 EXAM', 'exams/bulk/20041/civ235s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV235H1','CIV','CIV235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV235H1', 63, 20051, 'CIV235 20051 EXAM', 'exams/bulk/20051/civ235s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV235H1','CIV','CIV235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV235H1', 63, 20071, 'CIV235 20071 EXAM', 'exams/bulk/20071/civ235s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV238H1','CIV','CIV238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV238H1', 63, 20011, 'CIV238 20011 EXAM', 'exams/bulk/20011/civ238s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV238H1','CIV','CIV238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV238H1', 63, 20021, 'CIV238 20021 EXAM', 'exams/bulk/20021/civ238s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV238H1','CIV','CIV238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV238H1', 63, 20031, 'CIV238 20031 EXAM', 'exams/bulk/20031/civ238s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV238H1','CIV','CIV238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV238H1', 63, 20041, 'CIV238 20041 EXAM', 'exams/bulk/20041/civ238s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV261H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV261H1','CIV','CIV261H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV261H1', 63, 20019, 'CIV261 20019 EXAM-B', 'exams/bulk/20019/civ261f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CIV261H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV261H1','CIV','CIV261H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV261H1', 63, 20019, 'CIV261 20019 EXAM', 'exams/bulk/20019/civ261f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV261H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV261H1','CIV','CIV261H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV261H1', 63, 20029, 'CIV261 20029 EXAM', 'exams/bulk/20029/civ261f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV261H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV261H1','CIV','CIV261H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV261H1', 63, 20049, 'CIV261 20049 EXAM', 'exams/bulk/20049/civ261f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV261H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV261H1','CIV','CIV261H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV261H1', 63, 20069, 'CIV261 20069 EXAM', 'exams/bulk/20069/civ261f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV263H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV263H1','CIV','CIV263H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV263H1', 63, 20011, 'CIV263 20011 EXAM', 'exams/bulk/20011/civ263s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV263H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV263H1','CIV','CIV263H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV263H1', 63, 20021, 'CIV263 20021 EXAM', 'exams/bulk/20021/civ263s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV263H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV263H1','CIV','CIV263H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV263H1', 63, 20031, 'CIV263 20031 EXAM', 'exams/bulk/20031/civ263s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV263H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV263H1','CIV','CIV263H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV263H1', 63, 20041, 'CIV263 20041 EXAM', 'exams/bulk/20041/civ263s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV263H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV263H1','CIV','CIV263H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV263H1', 63, 20051, 'CIV263 20051 EXAM', 'exams/bulk/20051/civ263s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV263H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV263H1','CIV','CIV263H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV263H1', 63, 20071, 'CIV263 20071 EXAM', 'exams/bulk/20071/civ263s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV312H1','CIV','CIV312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV312H1', 63, 20019, 'CIV312 20019 EXAM', 'exams/bulk/20019/civ312f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV312H1','CIV','CIV312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV312H1', 63, 20029, 'CIV312 20029 EXAM', 'exams/bulk/20029/civ312f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV312H1','CIV','CIV312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV312H1', 63, 20049, 'CIV312 20049 EXAM', 'exams/bulk/20049/civ312f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV312H1','CIV','CIV312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV312H1', 63, 20069, 'CIV312 20069 EXAM', 'exams/bulk/20069/civ312f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV313H1','CIV','CIV313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV313H1', 63, 20011, 'CIV313 20011 EXAM', 'exams/bulk/20011/civ313s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV313H1','CIV','CIV313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV313H1', 63, 20021, 'CIV313 20021 EXAM', 'exams/bulk/20021/civ313s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV313H1','CIV','CIV313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV313H1', 63, 20031, 'CIV313 20031 EXAM', 'exams/bulk/20031/civ313s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV313H1','CIV','CIV313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV313H1', 63, 20041, 'CIV313 20041 EXAM', 'exams/bulk/20041/civ313s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV313H1','CIV','CIV313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV313H1', 63, 20051, 'CIV313 20051 EXAM', 'exams/bulk/20051/civ313s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV313H1','CIV','CIV313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV313H1', 63, 20071, 'CIV313 20071 EXAM', 'exams/bulk/20071/civ313s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV314H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV314H1','CIV','CIV314H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV314H1', 63, 20019, 'CIV314 20019 EXAM', 'exams/bulk/20019/civ314f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV314H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV314H1','CIV','CIV314H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV314H1', 63, 20049, 'CIV314 20049 EXAM', 'exams/bulk/20049/civ314f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV320H1','CIV','CIV320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV320H1', 63, 20011, 'CIV320 20011 EXAM', 'exams/bulk/20011/civ320s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV320H1','CIV','CIV320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV320H1', 63, 20031, 'CIV320 20031 EXAM', 'exams/bulk/20031/civ320s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV320H1','CIV','CIV320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV320H1', 63, 20051, 'CIV320 20051 EXAM', 'exams/bulk/20051/civ320s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV320H1','CIV','CIV320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV320H1', 63, 20071, 'CIV320 20071 EXAM', 'exams/bulk/20071/civ320s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV321H1','CIV','CIV321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV321H1', 63, 20049, 'CIV321 20049 EXAM', 'exams/bulk/20049/civ321f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV321H1','CIV','CIV321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV321H1', 63, 20069, 'CIV321 20069 EXAM', 'exams/bulk/20069/civ321f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV321H1','CIV','CIV321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV321H1', 63, 20011, 'CIV321 20011 EXAM', 'exams/bulk/20011/civ321s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV321H1','CIV','CIV321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV321H1', 63, 20031, 'CIV321 20031 EXAM', 'exams/bulk/20031/civ321s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV321H1','CIV','CIV321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV321H1', 63, 20051, 'CIV321 20051 EXAM', 'exams/bulk/20051/civ321s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV332H1','CIV','CIV332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV332H1', 63, 20019, 'CIV332 20019 EXAM', 'exams/bulk/20019/civ332f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV332H1','CIV','CIV332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV332H1', 63, 20029, 'CIV332 20029 EXAM', 'exams/bulk/20029/civ332f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV332H1','CIV','CIV332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV332H1', 63, 20049, 'CIV332 20049 EXAM', 'exams/bulk/20049/civ332f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV332H1','CIV','CIV332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV332H1', 63, 20071, 'CIV332 20071 EXAM', 'exams/bulk/20071/civ332s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV340H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV340H1','CIV','CIV340H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV340H1', 63, 20011, 'CIV340 20011 EXAM', 'exams/bulk/20011/civ340s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV340H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV340H1','CIV','CIV340H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV340H1', 63, 20031, 'CIV340 20031 EXAM', 'exams/bulk/20031/civ340s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV340H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV340H1','CIV','CIV340H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV340H1', 63, 20041, 'CIV340 20041 EXAM', 'exams/bulk/20041/civ340s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV340H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV340H1','CIV','CIV340H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV340H1', 63, 20051, 'CIV340 20051 EXAM', 'exams/bulk/20051/civ340s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV340H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV340H1','CIV','CIV340H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV340H1', 63, 20071, 'CIV340 20071 EXAM', 'exams/bulk/20071/civ340s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20019, 'CIV352 20019 EXAM-B', 'exams/bulk/20019/civ352f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20019, 'CIV352 20019 EXAM', 'exams/bulk/20019/civ352f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20029, 'CIV352 20029 EXAM', 'exams/bulk/20029/civ352f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20039, 'CIV352 20039 EXAM', 'exams/bulk/20039/civ352f_2003_exam.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20049, 'CIV352 20049 EXAM', 'exams/bulk/20049/civ352f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20069, 'CIV352 20069 EXAM', 'exams/bulk/20069/civ352f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV352H1','CIV','CIV352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV352H1', 63, 20041, 'CIV352 20041 EXAM', 'exams/bulk/20041/civ352s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV354H1','CIV','CIV354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV354H1', 63, 20019, 'CIV354 20019 EXAM-B', 'exams/bulk/20019/civ354f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CIV354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV354H1','CIV','CIV354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV354H1', 63, 20019, 'CIV354 20019 EXAM', 'exams/bulk/20019/civ354f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV354H1','CIV','CIV354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV354H1', 63, 20029, 'CIV354 20029 EXAM', 'exams/bulk/20029/civ354f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV355H1','CIV','CIV355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV355H1', 63, 20039, 'CIV355 20039 EXAM', 'exams/bulk/20039/civ355f_2003_exam.pdf');

select count(1) into courseCount from course where id ='CIV355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV355H1','CIV','CIV355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV355H1', 63, 20049, 'CIV355 20049 EXAM', 'exams/bulk/20049/civ355f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV355H1','CIV','CIV355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV355H1', 63, 20069, 'CIV355 20069 EXAM', 'exams/bulk/20069/civ355f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV356H1','CIV','CIV356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV356H1', 63, 20029, 'CIV356 20029 EXAM', 'exams/bulk/20029/civ356f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV357H1','CIV','CIV357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV357H1', 63, 20021, 'CIV357 20021 EXAM', 'exams/bulk/20021/civ357s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV357H1','CIV','CIV357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV357H1', 63, 20031, 'CIV357 20031 EXAM', 'exams/bulk/20031/civ357s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV357H1','CIV','CIV357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV357H1', 63, 20041, 'CIV357 20041 EXAM', 'exams/bulk/20041/civ357s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV357H1','CIV','CIV357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV357H1', 63, 20051, 'CIV357 20051 EXAM', 'exams/bulk/20051/civ357s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV357H1','CIV','CIV357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV357H1', 63, 20071, 'CIV357 20071 EXAM', 'exams/bulk/20071/civ357s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV359H1','CIV','CIV359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV359H1', 63, 20021, 'CIV359 20021 EXAM', 'exams/bulk/20021/civ359s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV359H1','CIV','CIV359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV359H1', 63, 20031, 'CIV359 20031 EXAM', 'exams/bulk/20031/civ359s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV359H1','CIV','CIV359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV359H1', 63, 20051, 'CIV359 20051 EXAM', 'exams/bulk/20051/civ359s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV359H1','CIV','CIV359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV359H1', 63, 20071, 'CIV359 20071 EXAM', 'exams/bulk/20071/civ359s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV362H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV362H1','CIV','CIV362H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV362H1', 63, 20019, 'CIV362 20019 EXAM', 'exams/bulk/20019/civ362f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV362H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV362H1','CIV','CIV362H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV362H1', 63, 20029, 'CIV362 20029 EXAM', 'exams/bulk/20029/civ362f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV362H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV362H1','CIV','CIV362H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV362H1', 63, 20049, 'CIV362 20049 EXAM', 'exams/bulk/20049/civ362f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV362H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV362H1','CIV','CIV362H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV362H1', 63, 20069, 'CIV362 20069 EXAM', 'exams/bulk/20069/civ362f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV368H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV368H1','CIV','CIV368H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV368H1', 63, 20019, 'CIV368 20019 EXAM', 'exams/bulk/20019/civ368f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV368H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV368H1','CIV','CIV368H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV368H1', 63, 20029, 'CIV368 20029 EXAM', 'exams/bulk/20029/civ368f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV368H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV368H1','CIV','CIV368H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV368H1', 63, 20049, 'CIV368 20049 EXAM', 'exams/bulk/20049/civ368f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV368H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV368H1','CIV','CIV368H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV368H1', 63, 20069, 'CIV368 20069 EXAM', 'exams/bulk/20069/civ368f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV368H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV368H1','CIV','CIV368H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV368H1', 63, 20069, 'CIV368 20069 EXAM2', 'exams/bulk/20069/civ368f_2006_exam2.pdf');

select count(1) into courseCount from course where id ='CIV416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV416H1','CIV','CIV416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV416H1', 63, 20019, 'CIV416 20019 EXAM-B', 'exams/bulk/20019/civ416f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CIV416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV416H1','CIV','CIV416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV416H1', 63, 20019, 'CIV416 20019 EXAM', 'exams/bulk/20019/civ416f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV416H1','CIV','CIV416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV416H1', 63, 20029, 'CIV416 20029 EXAM', 'exams/bulk/20029/civ416f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV416H1','CIV','CIV416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV416H1', 63, 20049, 'CIV416 20049 EXAM', 'exams/bulk/20049/civ416f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV416H1','CIV','CIV416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV416H1', 63, 20069, 'CIV416 20069 EXAM', 'exams/bulk/20069/civ416f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV417H1','CIV','CIV417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV417H1', 63, 20011, 'CIV417 20011 EXAM', 'exams/bulk/20011/civ417s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV417H1','CIV','CIV417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV417H1', 63, 20021, 'CIV417 20021 EXAM', 'exams/bulk/20021/civ417s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV417H1','CIV','CIV417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV417H1', 63, 20031, 'CIV417 20031 EXAM', 'exams/bulk/20031/civ417s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV417H1','CIV','CIV417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV417H1', 63, 20041, 'CIV417 20041 EXAM', 'exams/bulk/20041/civ417s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV417H1','CIV','CIV417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV417H1', 63, 20051, 'CIV417 20051 EXAM', 'exams/bulk/20051/civ417s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV417H1','CIV','CIV417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV417H1', 63, 20071, 'CIV417 20071 EXAM', 'exams/bulk/20071/civ417s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV420H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV420H1','CIV','CIV420H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV420H1', 63, 20019, 'CIV420 20019 EXAM-B', 'exams/bulk/20019/civ420f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CIV420H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV420H1','CIV','CIV420H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV420H1', 63, 20019, 'CIV420 20019 EXAM', 'exams/bulk/20019/civ420f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV420H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV420H1','CIV','CIV420H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV420H1', 63, 20029, 'CIV420 20029 EXAM', 'exams/bulk/20029/civ420f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV420H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV420H1','CIV','CIV420H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV420H1', 63, 20049, 'CIV420 20049 EXAM', 'exams/bulk/20049/civ420f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV420H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV420H1','CIV','CIV420H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV420H1', 63, 20069, 'CIV420 20069 EXAM', 'exams/bulk/20069/civ420f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV424H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV424H1','CIV','CIV424H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV424H1', 63, 20019, 'CIV424 20019 EXAM-B', 'exams/bulk/20019/civ424f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CIV424H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV424H1','CIV','CIV424H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV424H1', 63, 20019, 'CIV424 20019 EXAM', 'exams/bulk/20019/civ424f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV424H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV424H1','CIV','CIV424H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV424H1', 63, 20029, 'CIV424 20029 EXAM', 'exams/bulk/20029/civ424f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV424H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV424H1','CIV','CIV424H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV424H1', 63, 20049, 'CIV424 20049 EXAM', 'exams/bulk/20049/civ424f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV424H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV424H1','CIV','CIV424H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV424H1', 63, 20071, 'CIV424 20071 EXAM', 'exams/bulk/20071/civ424s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV427H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV427H1','CIV','CIV427H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV427H1', 63, 20069, 'CIV427 20069 EXAM', 'exams/bulk/20069/civ427f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV429H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV429H1','CIV','CIV429H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV429H1', 63, 20071, 'CIV429 20071 EXAM', 'exams/bulk/20071/civ429s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV451H1','CIV','CIV451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV451H1', 63, 20041, 'CIV451 20041 EXAM', 'exams/bulk/20041/civ451s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV451H1','CIV','CIV451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV451H1', 63, 20051, 'CIV451 20051 EXAM', 'exams/bulk/20051/civ451s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV451H1','CIV','CIV451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV451H1', 63, 20071, 'CIV451 20071 EXAM', 'exams/bulk/20071/civ451s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV453H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV453H1','CIV','CIV453H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV453H1', 63, 20011, 'CIV453 20011 EXAM', 'exams/bulk/20011/civ453s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV460H1','CIV','CIV460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV460H1', 63, 20049, 'CIV460 20049 EXAM', 'exams/bulk/20049/civ460f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV460H1','CIV','CIV460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV460H1', 63, 20069, 'CIV460 20069 EXAM', 'exams/bulk/20069/civ460f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV470H1','CIV','CIV470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV470H1', 63, 20049, 'CIV470 20049 EXAM', 'exams/bulk/20049/civ470f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV470H1','CIV','CIV470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV470H1', 63, 20069, 'CIV470 20069 EXAM', 'exams/bulk/20069/civ470f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV477H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV477H1','CIV','CIV477H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV477H1', 63, 20041, 'CIV477 20041 EXAM', 'exams/bulk/20041/civ477s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV477H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV477H1','CIV','CIV477H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV477H1', 63, 20071, 'CIV477 20071 EXAM', 'exams/bulk/20071/civ477s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV488H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV488H1','CIV','CIV488H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV488H1', 63, 20071, 'CIV488 20071 EXAM', 'exams/bulk/20071/civ488s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV510H1','CIV','CIV510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV510H1', 63, 20049, 'CIV510 20049 EXAM', 'exams/bulk/20049/civ510f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV510H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV510H1','CIV','CIV510H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV510H1', 63, 20069, 'CIV510 20069 EXAM', 'exams/bulk/20069/civ510f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV514H1','CIV','CIV514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV514H1', 63, 20019, 'CIV514 20019 EXAM', 'exams/bulk/20019/civ514f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV514H1','CIV','CIV514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV514H1', 63, 20029, 'CIV514 20029 EXAM', 'exams/bulk/20029/civ514f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV514H1','CIV','CIV514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV514H1', 63, 20049, 'CIV514 20049 EXAM', 'exams/bulk/20049/civ514f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV514H1','CIV','CIV514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV514H1', 63, 20011, 'CIV514 20011 EXAM', 'exams/bulk/20011/civ514s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV514H1','CIV','CIV514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV514H1', 63, 20071, 'CIV514 20071 EXAM', 'exams/bulk/20071/civ514s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV518H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV518H1','CIV','CIV518H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV518H1', 63, 20021, 'CIV518 20021 EXAM', 'exams/bulk/20021/civ518s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV518H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV518H1','CIV','CIV518H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV518H1', 63, 20031, 'CIV518 20031 EXAM', 'exams/bulk/20031/civ518s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV518H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV518H1','CIV','CIV518H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV518H1', 63, 20041, 'CIV518 20041 EXAM', 'exams/bulk/20041/civ518s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV518H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV518H1','CIV','CIV518H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV518H1', 63, 20051, 'CIV518 20051 EXAM', 'exams/bulk/20051/civ518s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV518H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV518H1','CIV','CIV518H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV518H1', 63, 20071, 'CIV518 20071 EXAM', 'exams/bulk/20071/civ518s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV519H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV519H1','CIV','CIV519H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV519H1', 63, 20019, 'CIV519 20019 EXAM', 'exams/bulk/20019/civ519f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV519H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV519H1','CIV','CIV519H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV519H1', 63, 20029, 'CIV519 20029 EXAM', 'exams/bulk/20029/civ519f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV519H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV519H1','CIV','CIV519H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV519H1', 63, 20049, 'CIV519 20049 EXAM', 'exams/bulk/20049/civ519f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV519H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV519H1','CIV','CIV519H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV519H1', 63, 20069, 'CIV519 20069 EXAM', 'exams/bulk/20069/civ519f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV523H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV523H1','CIV','CIV523H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV523H1', 63, 20011, 'CIV523 20011 EXAM', 'exams/bulk/20011/civ523s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV523H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV523H1','CIV','CIV523H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV523H1', 63, 20021, 'CIV523 20021 EXAM', 'exams/bulk/20021/civ523s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV523H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV523H1','CIV','CIV523H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV523H1', 63, 20031, 'CIV523 20031 EXAM', 'exams/bulk/20031/civ523s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV523H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV523H1','CIV','CIV523H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV523H1', 63, 20041, 'CIV523 20041 EXAM', 'exams/bulk/20041/civ523s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV523H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV523H1','CIV','CIV523H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV523H1', 63, 20051, 'CIV523 20051 EXAM', 'exams/bulk/20051/civ523s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV523H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV523H1','CIV','CIV523H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV523H1', 63, 20071, 'CIV523 20071 EXAM', 'exams/bulk/20071/civ523s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV524H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV524H1','CIV','CIV524H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV524H1', 63, 20031, 'CIV524 20031 EXAM', 'exams/bulk/20031/civ524s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV529H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV529H1','CIV','CIV529H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV529H1', 63, 20049, 'CIV529 20049 EXAM', 'exams/bulk/20049/civ529f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV529H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV529H1','CIV','CIV529H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV529H1', 63, 20011, 'CIV529 20011 EXAM', 'exams/bulk/20011/civ529s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV529H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV529H1','CIV','CIV529H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV529H1', 63, 20021, 'CIV529 20021 EXAM', 'exams/bulk/20021/civ529s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV529H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV529H1','CIV','CIV529H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV529H1', 63, 20071, 'CIV529 20071 EXAM', 'exams/bulk/20071/civ529s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV530H1','CIV','CIV530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV530H1', 63, 20011, 'CIV530 20011 EXAM', 'exams/bulk/20011/civ530s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV530H1','CIV','CIV530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV530H1', 63, 20021, 'CIV530 20021 EXAM', 'exams/bulk/20021/civ530s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV530H1','CIV','CIV530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV530H1', 63, 20031, 'CIV530 20031 EXAM', 'exams/bulk/20031/civ530s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV531H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV531H1','CIV','CIV531H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV531H1', 63, 20019, 'CIV531 20019 EXAM', 'exams/bulk/20019/civ531f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV531H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV531H1','CIV','CIV531H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV531H1', 63, 20029, 'CIV531 20029 EXAM', 'exams/bulk/20029/civ531f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV531H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV531H1','CIV','CIV531H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV531H1', 63, 20049, 'CIV531 20049 EXAM', 'exams/bulk/20049/civ531f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV531H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV531H1','CIV','CIV531H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV531H1', 63, 20069, 'CIV531 20069 EXAM', 'exams/bulk/20069/civ531f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV532H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV532H1','CIV','CIV532H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV532H1', 63, 20021, 'CIV532 20021 EXAM', 'exams/bulk/20021/civ532s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV532H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV532H1','CIV','CIV532H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV532H1', 63, 20031, 'CIV532 20031 EXAM', 'exams/bulk/20031/civ532s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV533H1','CIV','CIV533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV533H1', 63, 20051, 'CIV533 20051 EXAM', 'exams/bulk/20051/civ533s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV549H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV549H1','CIV','CIV549H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV549H1', 63, 19999, 'CIV549 19999 EXAM', 'exams/bulk/19999/civ549f_1999_exam.pdf');

select count(1) into courseCount from course where id ='CIV549H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV549H1','CIV','CIV549H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV549H1', 63, 20019, 'CIV549 20019 EXAM', 'exams/bulk/20019/civ549f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV549H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV549H1','CIV','CIV549H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV549H1', 63, 20029, 'CIV549 20029 EXAM', 'exams/bulk/20029/civ549f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV549H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV549H1','CIV','CIV549H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV549H1', 63, 20049, 'CIV549 20049 EXAM', 'exams/bulk/20049/civ549f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV549H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV549H1','CIV','CIV549H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV549H1', 63, 20069, 'CIV549 20069 EXAM', 'exams/bulk/20069/civ549f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV550H1','CIV','CIV550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV550H1', 63, 20031, 'CIV550 20031 EXAM', 'exams/bulk/20031/civ550s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CIV550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV550H1','CIV','CIV550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV550H1', 63, 20041, 'CIV550 20041 EXAM', 'exams/bulk/20041/civ550s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV550H1','CIV','CIV550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV550H1', 63, 20051, 'CIV550 20051 EXAM', 'exams/bulk/20051/civ550s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CIV550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV550H1','CIV','CIV550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV550H1', 63, 20071, 'CIV550 20071 EXAM', 'exams/bulk/20071/civ550s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CIV575H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV575H1','CIV','CIV575H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV575H1', 63, 20019, 'CIV575 20019 EXAM', 'exams/bulk/20019/civ575f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV575H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV575H1','CIV','CIV575H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV575H1', 63, 20029, 'CIV575 20029 EXAM', 'exams/bulk/20029/civ575f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CIV575H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV575H1','CIV','CIV575H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV575H1', 63, 20049, 'CIV575 20049 EXAM', 'exams/bulk/20049/civ575f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CIV575H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV575H1','CIV','CIV575H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV575H1', 63, 20069, 'CIV575 20069 EXAM', 'exams/bulk/20069/civ575f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CIV582H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV582H1','CIV','CIV582H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV582H1', 63, 20011, 'CIV582 20011 EXAM', 'exams/bulk/20011/civ582s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CIV582H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CIV582H1','CIV','CIV582H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CIV582H1', 63, 20021, 'CIV582 20021 EXAM', 'exams/bulk/20021/civ582s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC148H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC148H1','CSC','CSC148H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC148H1', 63, 19999, 'CSC148 19999 EXAM', 'exams/bulk/19999/csc148f_1999_exam.pdf');

select count(1) into courseCount from course where id ='CSC148H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC148H1','CSC','CSC148H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC148H1', 63, 20009, 'CSC148 20009 EXAM', 'exams/bulk/20009/csc148f_2000_exam.pdf');

select count(1) into courseCount from course where id ='CSC148H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC148H1','CSC','CSC148H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC148H1', 63, 19981, 'CSC148 19981 EXAM', 'exams/bulk/19981/csc148s_1998_exam.pdf');

select count(1) into courseCount from course where id ='CSC148H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC148H1','CSC','CSC148H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC148H1', 63, 19991, 'CSC148 19991 EXAM', 'exams/bulk/19991/csc148s_1999_exam.pdf');

select count(1) into courseCount from course where id ='CSC180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC180H1','CSC','CSC180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC180H1', 63, 20019, 'CSC180 20019 EXAM', 'exams/bulk/20019/csc180f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC180H1','CSC','CSC180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC180H1', 63, 20029, 'CSC180 20029 EXAM', 'exams/bulk/20029/csc180f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC180H1','CSC','CSC180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC180H1', 63, 20049, 'CSC180 20049 EXAM', 'exams/bulk/20049/csc180f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC180H1','CSC','CSC180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC180H1', 63, 20069, 'CSC180 20069 EXAM', 'exams/bulk/20069/csc180f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 19969, 'CSC181 19969 EXAM', 'exams/bulk/19969/csc181f_1996_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 19979, 'CSC181 19979 EXAM', 'exams/bulk/19979/csc181f_1997_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 19989, 'CSC181 19989 EXAM', 'exams/bulk/19989/csc181f_1998_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 19999, 'CSC181 19999 EXAM', 'exams/bulk/19999/csc181f_1999_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 20019, 'CSC181 20019 EXAM-B', 'exams/bulk/20019/csc181f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 20019, 'CSC181 20019 EXAM', 'exams/bulk/20019/csc181f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 20029, 'CSC181 20029 EXAM', 'exams/bulk/20029/csc181f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 63, 20049, 'CSC181 20049 EXAM', 'exams/bulk/20049/csc181f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 19951, 'CSC190 19951 EXAM', 'exams/bulk/19951/csc190s_1995_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 19961, 'CSC190 19961 EXAM', 'exams/bulk/19961/csc190s_1996_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 19971, 'CSC190 19971 EXAM', 'exams/bulk/19971/csc190s_1997_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 19981, 'CSC190 19981 EXAM', 'exams/bulk/19981/csc190s_1998_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 19991, 'CSC190 19991 EXAM', 'exams/bulk/19991/csc190s_1999_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 20021, 'CSC190 20021 EXAM', 'exams/bulk/20021/csc190s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 20031, 'CSC190 20031 EXAM', 'exams/bulk/20031/csc190s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 20041, 'CSC190 20041 EXAM', 'exams/bulk/20041/csc190s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 20051, 'CSC190 20051 EXAM', 'exams/bulk/20051/csc190s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 63, 20071, 'CSC190 20071 EXAM', 'exams/bulk/20071/csc190s_2007_exam.pdf');

select count(1) into courseCount from course where id ='CSC191H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC191H1','CSC','CSC191H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC191H1', 63, 20021, 'CSC191 20021 EXAM', 'exams/bulk/20021/csc191s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC191H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC191H1','CSC','CSC191H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC191H1', 63, 20031, 'CSC191 20031 EXAM', 'exams/bulk/20031/csc191s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CSC191H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC191H1','CSC','CSC191H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC191H1', 63, 20041, 'CSC191 20041 EXAM', 'exams/bulk/20041/csc191s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC191H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC191H1','CSC','CSC191H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC191H1', 63, 20051, 'CSC191 20051 EXAM', 'exams/bulk/20051/csc191s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CSC192H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC192H1','CSC','CSC192H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC192H1', 63, 20069, 'CSC192 20069 EXAM', 'exams/bulk/20069/csc192f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CSC228H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC228H1','CSC','CSC228H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC228H1', 63, 19961, 'CSC228 19961 EXAM', 'exams/bulk/19961/csc228s_1996_exam.pdf');

select count(1) into courseCount from course where id ='CSC228H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC228H1','CSC','CSC228H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC228H1', 63, 19971, 'CSC228 19971 EXAM', 'exams/bulk/19971/csc228s_1997_exam.pdf');

select count(1) into courseCount from course where id ='CSC228H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC228H1','CSC','CSC228H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC228H1', 63, 19981, 'CSC228 19981 EXAM', 'exams/bulk/19981/csc228s_1998_exam.pdf');

select count(1) into courseCount from course where id ='CSC228H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC228H1','CSC','CSC228H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC228H1', 63, 19991, 'CSC228 19991 EXAM', 'exams/bulk/19991/csc228s_1999_exam.pdf');

select count(1) into courseCount from course where id ='CSC282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC282H1','CSC','CSC282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC282H1', 63, 20011, 'CSC282 20011 EXAM', 'exams/bulk/20011/csc282s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC282H1','CSC','CSC282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC282H1', 63, 20021, 'CSC282 20021 EXAM', 'exams/bulk/20021/csc282s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC282H1','CSC','CSC282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC282H1', 63, 20031, 'CSC282 20031 EXAM', 'exams/bulk/20031/csc282s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CSC282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC282H1','CSC','CSC282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC282H1', 63, 20041, 'CSC282 20041 EXAM', 'exams/bulk/20041/csc282s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC310H1','CSC','CSC310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC310H1', 63, 20021, 'CSC310 20021 EXAM', 'exams/bulk/20021/CSC310S_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='CSC310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC310H1','CSC','CSC310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC310H1', 63, 20031, 'CSC310 20031 EXAM', 'exams/bulk/20031/CSC310S_2003_EXAM.pdf');

select count(1) into courseCount from course where id ='CSC326H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC326H1','CSC','CSC326H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC326H1', 63, 20019, 'CSC326 20019 EXAM-B', 'exams/bulk/20019/csc326f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CSC326H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC326H1','CSC','CSC326H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC326H1', 63, 20019, 'CSC326 20019 EXAM', 'exams/bulk/20019/csc326f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC326H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC326H1','CSC','CSC326H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC326H1', 63, 20029, 'CSC326 20029 EXAM', 'exams/bulk/20029/csc326f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC326H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC326H1','CSC','CSC326H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC326H1', 63, 20039, 'CSC326 20039 EXAM', 'exams/bulk/20039/csc326f_2003_exam.pdf');

select count(1) into courseCount from course where id ='CSC326H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC326H1','CSC','CSC326H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC326H1', 63, 20049, 'CSC326 20049 EXAM', 'exams/bulk/20049/csc326f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC326H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC326H1','CSC','CSC326H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC326H1', 63, 20069, 'CSC326 20069 EXAM', 'exams/bulk/20069/csc326f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CSC366H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC366H1','CSC','CSC366H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC366H1', 63, 20011, 'CSC366 20011 EXAM', 'exams/bulk/20011/csc366s_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC366H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC366H1','CSC','CSC366H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC366H1', 63, 20021, 'CSC366 20021 EXAM', 'exams/bulk/20021/csc366s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC366H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC366H1','CSC','CSC366H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC366H1', 63, 20031, 'CSC366 20031 EXAM', 'exams/bulk/20031/csc366s_2003_exam.PDF');

select count(1) into courseCount from course where id ='CSC366H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC366H1','CSC','CSC366H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC366H1', 63, 20041, 'CSC366 20041 EXAM', 'exams/bulk/20041/csc366s_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC366H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC366H1','CSC','CSC366H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC366H1', 63, 20051, 'CSC366 20051 EXAM', 'exams/bulk/20051/csc366s_2005_exam.pdf');

select count(1) into courseCount from course where id ='CSC407H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC407H1','CSC','CSC407H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC407H1', 63, 20021, 'CSC407 20021 EXAM', 'exams/bulk/20021/csc407s_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC444H1','CSC','CSC444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC444H1', 63, 19999, 'CSC444 19999 EXAM', 'exams/bulk/19999/csc444f_1999_exam.pdf');

select count(1) into courseCount from course where id ='CSC444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC444H1','CSC','CSC444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC444H1', 63, 20019, 'CSC444 20019 EXAM', 'exams/bulk/20019/csc444f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC444H1','CSC','CSC444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC444H1', 63, 20029, 'CSC444 20029 EXAM', 'exams/bulk/20029/csc444f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC444H1','CSC','CSC444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC444H1', 63, 20049, 'CSC444 20049 EXAM', 'exams/bulk/20049/csc444f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC444H1','CSC','CSC444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC444H1', 63, 20069, 'CSC444 20069 EXAM', 'exams/bulk/20069/csc444f_2006_exam.pdf');

select count(1) into courseCount from course where id ='CSC445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC445H1','CSC','CSC445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC445H1', 63, 20019, 'CSC445 20019 EXAM', 'exams/bulk/20019/csc445f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC467H1','CSC','CSC467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC467H1', 63, 20019, 'CSC467 20019 EXAM-B', 'exams/bulk/20019/csc467f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CSC467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC467H1','CSC','CSC467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC467H1', 63, 20019, 'CSC467 20019 EXAM', 'exams/bulk/20019/csc467f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC467H1','CSC','CSC467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC467H1', 63, 20029, 'CSC467 20029 EXAM', 'exams/bulk/20029/csc467f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC467H1','CSC','CSC467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC467H1', 63, 20049, 'CSC467 20049 EXAM', 'exams/bulk/20049/csc467f_2004_exam.pdf');

select count(1) into courseCount from course where id ='CSC470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC470H1','CSC','CSC470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC470H1', 63, 20019, 'CSC470 20019 EXAM-B', 'exams/bulk/20019/csc470f_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='CSC470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC470H1','CSC','CSC470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC470H1', 63, 20019, 'CSC470 20019 EXAM', 'exams/bulk/20019/csc470f_2001_exam.pdf');

select count(1) into courseCount from course where id ='CSC470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC470H1','CSC','CSC470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC470H1', 63, 20029, 'CSC470 20029 EXAM', 'exams/bulk/20029/csc470f_2002_exam.pdf');

select count(1) into courseCount from course where id ='CSC470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC470H1','CSC','CSC470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC470H1', 63, 20049, 'CSC470 20049 EXAM', 'exams/bulk/20049/csc470f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE100H1','ECE','ECE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE100H1', 63, 20011, 'ECE100 20011 EXAM', 'exams/bulk/20011/ece100s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE106H1','ECE','ECE106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE106H1', 63, 20049, 'ECE106 20049 EXAM', 'exams/bulk/20049/ece106f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE106H1','ECE','ECE106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE106H1', 63, 20041, 'ECE106 20041 EXAM', 'exams/bulk/20041/ece106s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE106H1','ECE','ECE106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE106H1', 63, 20051, 'ECE106 20051 EXAM', 'exams/bulk/20051/ece106s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE106H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE106H1','ECE','ECE106H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE106H1', 63, 20071, 'ECE106 20071 EXAM', 'exams/bulk/20071/ece106s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 19971, 'ECE110 19971 EXAM', 'exams/bulk/19971/ece110s_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 19981, 'ECE110 19981 EXAM', 'exams/bulk/19981/ece110s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 19991, 'ECE110 19991 EXAM', 'exams/bulk/19991/ece110s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20001, 'ECE110 20001 EXAM', 'exams/bulk/20001/ece110s_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20011, 'ECE110 20011 EXAM', 'exams/bulk/20011/ece110s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20021, 'ECE110 20021 EXAM', 'exams/bulk/20021/ece110s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20031, 'ECE110 20031 EXAM', 'exams/bulk/20031/ece110s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20041, 'ECE110 20041 EXAM', 'exams/bulk/20041/ece110s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20051, 'ECE110 20051 EXAM', 'exams/bulk/20051/ece110s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE110H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE110H1','ECE','ECE110H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE110H1', 63, 20071, 'ECE110 20071 EXAM', 'exams/bulk/20071/ece110s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 19981, 'ECE115 19981 EXAM', 'exams/bulk/19981/ece115s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 19991, 'ECE115 19991 EXAM', 'exams/bulk/19991/ece115s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20001, 'ECE115 20001 EXAM', 'exams/bulk/20001/ece115s_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20011, 'ECE115 20011 EXAM', 'exams/bulk/20011/ece115s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20031, 'ECE115 20031 EXAM', 'exams/bulk/20031/ece115s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 20001, 'ECE150 20001 EXAM', 'exams/bulk/20001/ece150s_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 63, 20031, 'ECE159 20031 EXAM', 'exams/bulk/20031/ece159s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20021, 'ECE115 20021 EXAM', 'exams/bulk/20021/ece115s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20041, 'ECE115 20041 EXAM', 'exams/bulk/20041/ece115s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20051, 'ECE115 20051 EXAM', 'exams/bulk/20051/ece115s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 63, 20071, 'ECE115 20071 EXAM', 'exams/bulk/20071/ece115s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 20011, 'ECE150 20011 EXAM', 'exams/bulk/20011/ece150s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 63, 20021, 'ECE159 20021 EXAM', 'exams/bulk/20021/ece159s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 63, 20041, 'ECE159 20041 EXAM', 'exams/bulk/20041/ece159s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 63, 20051, 'ECE159 20051 EXAM', 'exams/bulk/20051/ece159s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 63, 20071, 'ECE159 20071 EXAM', 'exams/bulk/20071/ece159s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE190H1','ECE','ECE190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE190H1', 63, 20039, 'ECE190 20039 EXAM', 'exams/bulk/20039/ece190f_2003_exam.pdf');

select count(1) into courseCount from course where id ='ECE190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE190H1','ECE','ECE190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE190H1', 63, 20049, 'ECE190 20049 EXAM', 'exams/bulk/20049/ece190f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE190H1','ECE','ECE190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE190H1', 63, 20071, 'ECE190 20071 EXAM', 'exams/bulk/20071/ece190s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE203H1','ECE','ECE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE203H1', 63, 20019, 'ECE203 20019 EXAM', 'exams/bulk/20019/ece203F_2001_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE203H1','ECE','ECE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE203H1', 63, 20001, 'ECE203 20001 EXAM', 'exams/bulk/20001/ece203S_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE203H1','ECE','ECE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE203H1', 63, 20011, 'ECE203 20011 EXAM', 'exams/bulk/20011/ece203S_2001_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE203H1','ECE','ECE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE203H1', 63, 20021, 'ECE203 20021 EXAM', 'exams/bulk/20021/ece203S_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE203H1','ECE','ECE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE203H1', 63, 20031, 'ECE203 20031 EXAM', 'exams/bulk/20031/ece203s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE203H1','ECE','ECE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE203H1', 63, 20041, 'ECE203 20041 EXAM', 'exams/bulk/20041/ece203s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE212H1','ECE','ECE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE212H1', 63, 20019, 'ECE212 20019 EXAM', 'exams/bulk/20019/ece212f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE212H1','ECE','ECE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE212H1', 63, 20029, 'ECE212 20029 EXAM', 'exams/bulk/20029/ece212f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE212H1','ECE','ECE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE212H1', 63, 20049, 'ECE212 20049 EXAM', 'exams/bulk/20049/ece212f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE212H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE212H1','ECE','ECE212H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE212H1', 63, 20069, 'ECE212 20069 EXAM', 'exams/bulk/20069/ece212f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE216H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE216H1','ECE','ECE216H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE216H1', 63, 20051, 'ECE216 20051 EXAM', 'exams/bulk/20051/ece216s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE216H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE216H1','ECE','ECE216H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE216H1', 63, 20071, 'ECE216 20071 EXAM', 'exams/bulk/20071/ece216s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 19991, 'ECE221 19991 EXAM', 'exams/bulk/19991/ece221S_1999_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20001, 'ECE221 20001 EXAM', 'exams/bulk/20001/ece221S_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20011, 'ECE221 20011 EXAM', 'exams/bulk/20011/ece221S_2001_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20021, 'ECE221 20021 EXAM', 'exams/bulk/20021/ece221S_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20031, 'ECE221 20031 EXAM', 'exams/bulk/20031/ece221s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20041, 'ECE221 20041 EXAM', 'exams/bulk/20041/ece221s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20051, 'ECE221 20051 EXAM', 'exams/bulk/20051/ece221s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE221H1','ECE','ECE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE221H1', 63, 20071, 'ECE221 20071 EXAM', 'exams/bulk/20071/ece221s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 19991, 'ECE231 19991 EXAM', 'exams/bulk/19991/ece231S_1999_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20001, 'ECE231 20001 EXAM', 'exams/bulk/20001/ece231S_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20011, 'ECE231 20011 EXAM', 'exams/bulk/20011/ece231S_2001_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20021, 'ECE231 20021 EXAM', 'exams/bulk/20021/ece231S_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20031, 'ECE231 20031 EXAM', 'exams/bulk/20031/ece231s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20041, 'ECE231 20041 EXAM', 'exams/bulk/20041/ece231s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20051, 'ECE231 20051 EXAM', 'exams/bulk/20051/ece231s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE231H1','ECE','ECE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE231H1', 63, 20071, 'ECE231 20071 EXAM', 'exams/bulk/20071/ece231s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE234H1','ECE','ECE234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE234H1', 63, 20051, 'ECE234 20051 EXAM', 'exams/bulk/20051/ece234s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 19979, 'ECE241 19979 EXAM', 'exams/bulk/19979/ece241f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20019, 'ECE241 20019 EXAM', 'exams/bulk/20019/ece241f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20029, 'ECE241 20029 EXAM', 'exams/bulk/20029/ece241F_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20049, 'ECE241 20049 EXAM', 'exams/bulk/20049/ece241f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20069, 'ECE241 20069 EXAM', 'exams/bulk/20069/ece241f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20021, 'ECE241 20021 EXAM', 'exams/bulk/20021/ece241S_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20031, 'ECE241 20031 EXAM', 'exams/bulk/20031/ece241s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE241H1','ECE','ECE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE241H1', 63, 20041, 'ECE241 20041 EXAM', 'exams/bulk/20041/ece241s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE242H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE242H1','ECE','ECE242H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE242H1', 63, 20019, 'ECE242 20019 EXAM', 'exams/bulk/20019/ece242f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE242H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE242H1','ECE','ECE242H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE242H1', 63, 20029, 'ECE242 20029 EXAM', 'exams/bulk/20029/ece242f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE242H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE242H1','ECE','ECE242H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE242H1', 63, 20011, 'ECE242 20011 EXAM', 'exams/bulk/20011/ece242s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE242H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE242H1','ECE','ECE242H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE242H1', 63, 20021, 'ECE242 20021 EXAM', 'exams/bulk/20021/ece242s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE242H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE242H1','ECE','ECE242H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE242H1', 63, 20031, 'ECE242 20031 EXAM', 'exams/bulk/20031/ece242s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE242H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE242H1','ECE','ECE242H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE242H1', 63, 20041, 'ECE242 20041 EXAM', 'exams/bulk/20041/ece242s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE243H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE243H1','ECE','ECE243H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE243H1', 63, 20071, 'ECE243 20071 EXAM', 'exams/bulk/20071/ece243s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE250H1','ECE','ECE250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE250H1', 63, 20019, 'ECE250 20019 EXAM', 'exams/bulk/20019/ece250f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE253H1','ECE','ECE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE253H1', 63, 20019, 'ECE253 20019 EXAM', 'exams/bulk/20019/ece253f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE253H1','ECE','ECE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE253H1', 63, 20029, 'ECE253 20029 EXAM', 'exams/bulk/20029/ece253f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE253H1','ECE','ECE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE253H1', 63, 20039, 'ECE253 20039 EXAM', 'exams/bulk/20039/ece253f_2003_exam.pdf');

select count(1) into courseCount from course where id ='ECE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE253H1','ECE','ECE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE253H1', 63, 20049, 'ECE253 20049 EXAM', 'exams/bulk/20049/ece253f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE253H1','ECE','ECE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE253H1', 63, 20069, 'ECE253 20069 EXAM', 'exams/bulk/20069/ece253f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 19941, 'ECE150 19941 EXAM', 'exams/bulk/19941/ece150s_1994_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 19951, 'ECE150 19951 EXAM', 'exams/bulk/19951/ece150s_1995_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 19961, 'ECE150 19961 EXAM', 'exams/bulk/19961/ece150s_1996_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 19971, 'ECE150 19971 EXAM', 'exams/bulk/19971/ece150s_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 19981, 'ECE150 19981 EXAM', 'exams/bulk/19981/ece150s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 63, 19991, 'ECE150 19991 EXAM', 'exams/bulk/19991/ece150s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE259H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE259H1','ECE','ECE259H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE259H1', 63, 20069, 'ECE259 20069 EXAM', 'exams/bulk/20069/ece259f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE259H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE259H1','ECE','ECE259H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE259H1', 63, 20031, 'ECE259 20031 EXAM', 'exams/bulk/20031/ece259s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE259H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE259H1','ECE','ECE259H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE259H1', 63, 20041, 'ECE259 20041 EXAM', 'exams/bulk/20041/ece259s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE259H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE259H1','ECE','ECE259H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE259H1', 63, 20051, 'ECE259 20051 EXAM', 'exams/bulk/20051/ece259s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ELE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ELE221H1','ELE','ELE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ELE221H1', 63, 19921, 'ELE221 19921 EXAM', 'exams/bulk/19921/ele221s_1992_exam.pdf');

select count(1) into courseCount from course where id ='ECE298H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE298H1','ECE','ECE298H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE298H1', 63, 20049, 'ECE298 20049 EXAM', 'exams/bulk/20049/ece298f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE299H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE299H1','ECE','ECE299H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE299H1', 63, 20051, 'ECE299 20051 EXAM', 'exams/bulk/20051/ece299s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE299H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE299H1','ECE','ECE299H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE299H1', 63, 20071, 'ECE299 20071 EXAM', 'exams/bulk/20071/ece299s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20019, 'ECE302 20019 EXAM', 'exams/bulk/20019/ece302f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20029, 'ECE302 20029 EXAM', 'exams/bulk/20029/ece302f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20049, 'ECE302 20049 EXAM', 'exams/bulk/20049/ece302f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20069, 'ECE302 20069 EXAM', 'exams/bulk/20069/ece302f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20011, 'ECE302 20011 EXAM', 'exams/bulk/20011/ece302s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20021, 'ECE302 20021 EXAM', 'exams/bulk/20021/ece302s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE302H1','ECE','ECE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE302H1', 63, 20071, 'ECE302 20071 EXAM', 'exams/bulk/20071/ece302s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE310H1','ECE','ECE310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE310H1', 63, 20019, 'ECE310 20019 EXAM', 'exams/bulk/20019/ece310f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE310H1','ECE','ECE310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE310H1', 63, 20029, 'ECE310 20029 EXAM', 'exams/bulk/20029/ece310f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE310H1','ECE','ECE310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE310H1', 63, 20049, 'ECE310 20049 EXAM', 'exams/bulk/20049/ece310f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE311H1','ECE','ECE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE311H1', 63, 20011, 'ECE311 20011 EXAM', 'exams/bulk/20011/ece311s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE311H1','ECE','ECE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE311H1', 63, 20021, 'ECE311 20021 EXAM', 'exams/bulk/20021/ece311s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE311H1','ECE','ECE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE311H1', 63, 20031, 'ECE311 20031 EXAM', 'exams/bulk/20031/ece311s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE311H1','ECE','ECE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE311H1', 63, 20041, 'ECE311 20041 EXAM', 'exams/bulk/20041/ece311s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE311H1','ECE','ECE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE311H1', 63, 20051, 'ECE311 20051 EXAM', 'exams/bulk/20051/ece311s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE311H1','ECE','ECE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE311H1', 63, 20071, 'ECE311 20071 EXAM', 'exams/bulk/20071/ece311s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20019, 'ECE315 20019 EXAM', 'exams/bulk/20019/ece315f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20069, 'ECE315 20069 EXAM', 'exams/bulk/20069/ece315f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 19991, 'ECE315 19991 EXAM', 'exams/bulk/19991/ece315s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20001, 'ECE315 20001 EXAM', 'exams/bulk/20001/ece315s_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20011, 'ECE315 20011 EXAM', 'exams/bulk/20011/ece315s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20031, 'ECE315 20031 EXAM', 'exams/bulk/20031/ece315s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20041, 'ECE315 20041 EXAM', 'exams/bulk/20041/ece315s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE315H1','ECE','ECE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE315H1', 63, 20051, 'ECE315 20051 EXAM', 'exams/bulk/20051/ece315s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE316H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE316H1','ECE','ECE316H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE316H1', 63, 20069, 'ECE316 20069 EXAM', 'exams/bulk/20069/ece316f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE316H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE316H1','ECE','ECE316H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE316H1', 63, 20071, 'ECE316 20071 EXAM', 'exams/bulk/20071/ece316s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE318H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE318H1','ECE','ECE318H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE318H1', 63, 20071, 'ECE318 20071 EXAM', 'exams/bulk/20071/ece318s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE320H1','ECE','ECE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE320H1', 63, 20019, 'ECE320 20019 EXAM', 'exams/bulk/20019/ece320f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE320H1','ECE','ECE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE320H1', 63, 20029, 'ECE320 20029 EXAM', 'exams/bulk/20029/ece320f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE320H1','ECE','ECE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE320H1', 63, 20069, 'ECE320 20069 EXAM', 'exams/bulk/20069/ece320f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE320H1','ECE','ECE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE320H1', 63, 20051, 'ECE320 20051 EXAM', 'exams/bulk/20051/ece320s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE330H1','ECE','ECE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE330H1', 63, 20019, 'ECE330 20019 EXAM', 'exams/bulk/20019/ece330f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE330H1','ECE','ECE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE330H1', 63, 20029, 'ECE330 20029 EXAM', 'exams/bulk/20029/ece330f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE330H1','ECE','ECE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE330H1', 63, 20039, 'ECE330 20039 EXAM', 'exams/bulk/20039/ece330f_2003_exam.pdf');

select count(1) into courseCount from course where id ='ECE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE330H1','ECE','ECE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE330H1', 63, 20049, 'ECE330 20049 EXAM', 'exams/bulk/20049/ece330f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20069, 'ECE331 20069 EXAM', 'exams/bulk/20069/ece331f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20011, 'ECE331 20011 EXAM', 'exams/bulk/20011/ece331s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20021, 'ECE331 20021 EXAM', 'exams/bulk/20021/ece331s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20031, 'ECE331 20031 EXAM', 'exams/bulk/20031/ece331s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20041, 'ECE331 20041 EXAM', 'exams/bulk/20041/ece331s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20051, 'ECE331 20051 EXAM', 'exams/bulk/20051/ece331s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE331H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE331H1','ECE','ECE331H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE331H1', 63, 20071, 'ECE331 20071 EXAM', 'exams/bulk/20071/ece331s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE334H1','ECE','ECE334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE334H1', 63, 20019, 'ECE334 20019 EXAM', 'exams/bulk/20019/ece334f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE334H1','ECE','ECE334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE334H1', 63, 20029, 'ECE334 20029 EXAM', 'exams/bulk/20029/ece334f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE334H1','ECE','ECE334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE334H1', 63, 20049, 'ECE334 20049 EXAM', 'exams/bulk/20049/ece334f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE334H1','ECE','ECE334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE334H1', 63, 20069, 'ECE334 20069 EXAM', 'exams/bulk/20069/ece334f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE334H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE334H1','ECE','ECE334H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE334H1', 63, 20071, 'ECE334 20071 EXAM', 'exams/bulk/20071/ece334s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE335H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE335H1','ECE','ECE335H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE335H1', 63, 20069, 'ECE335 20069 EXAM', 'exams/bulk/20069/ece335f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE335H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE335H1','ECE','ECE335H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE335H1', 63, 20011, 'ECE335 20011 EXAM', 'exams/bulk/20011/ece335s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE335H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE335H1','ECE','ECE335H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE335H1', 63, 20021, 'ECE335 20021 EXAM', 'exams/bulk/20021/ece335s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE335H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE335H1','ECE','ECE335H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE335H1', 63, 20031, 'ECE335 20031 EXAM', 'exams/bulk/20031/ece335s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE335H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE335H1','ECE','ECE335H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE335H1', 63, 20041, 'ECE335 20041 EXAM', 'exams/bulk/20041/ece335s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE335H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE335H1','ECE','ECE335H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE335H1', 63, 20051, 'ECE335 20051 EXAM', 'exams/bulk/20051/ece335s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE341H1','ECE','ECE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE341H1', 63, 20019, 'ECE341 20019 EXAM', 'exams/bulk/20019/ece341f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE341H1','ECE','ECE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE341H1', 63, 20029, 'ECE341 20029 EXAM', 'exams/bulk/20029/ece341f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE341H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE341H1','ECE','ECE341H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE341H1', 63, 20049, 'ECE341 20049 EXAM', 'exams/bulk/20049/ece341f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE342H1','ECE','ECE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE342H1', 63, 20011, 'ECE342 20011 EXAM', 'exams/bulk/20011/ece342s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE342H1','ECE','ECE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE342H1', 63, 20021, 'ECE342 20021 EXAM', 'exams/bulk/20021/ece342s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE342H1','ECE','ECE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE342H1', 63, 20031, 'ECE342 20031 EXAM', 'exams/bulk/20031/ece342s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE342H1','ECE','ECE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE342H1', 63, 20041, 'ECE342 20041 EXAM', 'exams/bulk/20041/ece342s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE342H1','ECE','ECE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE342H1', 63, 20051, 'ECE342 20051 EXAM', 'exams/bulk/20051/ece342s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE342H1','ECE','ECE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE342H1', 63, 20071, 'ECE342 20071 EXAM', 'exams/bulk/20071/ece342s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20069, 'ECE344 20069 EXAM', 'exams/bulk/20069/ece344f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20011, 'ECE344 20011 EXAM', 'exams/bulk/20011/ece344s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20021, 'ECE344 20021 EXAM', 'exams/bulk/20021/ece344s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20031, 'ECE344 20031 EXAM', 'exams/bulk/20031/ece344s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20041, 'ECE344 20041 EXAM', 'exams/bulk/20041/ece344s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20051, 'ECE344 20051 EXAM', 'exams/bulk/20051/ece344s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE344H1','ECE','ECE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE344H1', 63, 20071, 'ECE344 20071 EXAM', 'exams/bulk/20071/ece344s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE345H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE345H1','ECE','ECE345H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE345H1', 63, 20069, 'ECE345 20069 EXAM', 'exams/bulk/20069/ece345f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 19979, 'ECE350 19979 EXAM', 'exams/bulk/19979/ece350f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 19989, 'ECE350 19989 EXAM', 'exams/bulk/19989/ece350f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 19999, 'ECE350 19999 EXAM', 'exams/bulk/19999/ece350f_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 20019, 'ECE350 20019 EXAM', 'exams/bulk/20019/ece350f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 20029, 'ECE350 20029 EXAM', 'exams/bulk/20029/ece350f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 20049, 'ECE350 20049 EXAM', 'exams/bulk/20049/ece350f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 63, 20069, 'ECE350 20069 EXAM', 'exams/bulk/20069/ece350f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 19981, 'ECE351 19981 EXAM', 'exams/bulk/19981/ece351s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 19991, 'ECE351 19991 EXAM', 'exams/bulk/19991/ece351s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 20011, 'ECE351 20011 EXAM', 'exams/bulk/20011/ece351s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 20021, 'ECE351 20021 EXAM', 'exams/bulk/20021/ece351s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 20031, 'ECE351 20031 EXAM', 'exams/bulk/20031/ece351s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 20041, 'ECE351 20041 EXAM', 'exams/bulk/20041/ece351s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 20051, 'ECE351 20051 EXAM', 'exams/bulk/20051/ece351s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 63, 20071, 'ECE351 20071 EXAM', 'exams/bulk/20071/ece351s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 19979, 'ECE352 19979 EXAM', 'exams/bulk/19979/ece352f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 19989, 'ECE352 19989 EXAM', 'exams/bulk/19989/ece352f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 19999, 'ECE352 19999 EXAM', 'exams/bulk/19999/ece352f_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 20019, 'ECE352 20019 EXAM', 'exams/bulk/20019/ece352f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 20029, 'ECE352 20029 EXAM', 'exams/bulk/20029/ece352f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 20049, 'ECE352 20049 EXAM', 'exams/bulk/20049/ece352f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 63, 20069, 'ECE352 20069 EXAM', 'exams/bulk/20069/ece352f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 19981, 'ECE354 19981 EXAM', 'exams/bulk/19981/ece354s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 19991, 'ECE354 19991 EXAM', 'exams/bulk/19991/ece354s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 20021, 'ECE354 20021 EXAM', 'exams/bulk/20021/ece354s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 20031, 'ECE354 20031 EXAM', 'exams/bulk/20031/ece354s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 20041, 'ECE354 20041 EXAM', 'exams/bulk/20041/ece354s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 20051, 'ECE354 20051 EXAM', 'exams/bulk/20051/ece354s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 63, 20071, 'ECE354 20071 EXAM', 'exams/bulk/20071/ece354s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 19939, 'ECE355 19939 EXAM', 'exams/bulk/19939/ece355f_1993_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 19949, 'ECE355 19949 EXAM', 'exams/bulk/19949/ece355f_1994_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 19959, 'ECE355 19959 EXAM', 'exams/bulk/19959/ece355f_1995_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 19969, 'ECE355 19969 EXAM', 'exams/bulk/19969/ece355f_1996_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 19979, 'ECE355 19979 EXAM', 'exams/bulk/19979/ece355f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 19989, 'ECE355 19989 EXAM', 'exams/bulk/19989/ece355f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 20009, 'ECE355 20009 EXAM', 'exams/bulk/20009/ece355f_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 20019, 'ECE355 20019 EXAM', 'exams/bulk/20019/ece355f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 20029, 'ECE355 20029 EXAM', 'exams/bulk/20029/ece355f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 20049, 'ECE355 20049 EXAM', 'exams/bulk/20049/ece355f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 63, 20069, 'ECE355 20069 EXAM', 'exams/bulk/20069/ece355f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 19951, 'ECE356 19951 EXAM', 'exams/bulk/19951/ece356s_1995_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 19961, 'ECE356 19961 EXAM', 'exams/bulk/19961/ece356s_1996_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 19971, 'ECE356 19971 EXAM', 'exams/bulk/19971/ece356s_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 19981, 'ECE356 19981 EXAM', 'exams/bulk/19981/ece356s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 19991, 'ECE356 19991 EXAM', 'exams/bulk/19991/ece356s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 20011, 'ECE356 20011 EXAM', 'exams/bulk/20011/ece356s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 20021, 'ECE356 20021 EXAM', 'exams/bulk/20021/ece356s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 20031, 'ECE356 20031 EXAM', 'exams/bulk/20031/ece356s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 20041, 'ECE356 20041 EXAM', 'exams/bulk/20041/ece356s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 20051, 'ECE356 20051 EXAM', 'exams/bulk/20051/ece356s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 63, 20071, 'ECE356 20071 EXAM', 'exams/bulk/20071/ece356s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 19951, 'ECE357 19951 EXAM', 'exams/bulk/19951/ece357s_1995_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 19961, 'ECE357 19961 EXAM', 'exams/bulk/19961/ece357s_1996_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 19981, 'ECE357 19981 EXAM', 'exams/bulk/19981/ece357s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 19991, 'ECE357 19991 EXAM', 'exams/bulk/19991/ece357s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 20011, 'ECE357 20011 EXAM', 'exams/bulk/20011/ece357s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 20021, 'ECE357 20021 EXAM', 'exams/bulk/20021/ece357s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 20031, 'ECE357 20031 EXAM', 'exams/bulk/20031/ece357s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 20041, 'ECE357 20041 EXAM', 'exams/bulk/20041/ece357s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 20051, 'ECE357 20051 EXAM', 'exams/bulk/20051/ece357s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 63, 20071, 'ECE357 20071 EXAM', 'exams/bulk/20071/ece357s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 19979, 'ECE359 19979 EXAM', 'exams/bulk/19979/ece359f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 19989, 'ECE359 19989 EXAM', 'exams/bulk/19989/ece359f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 20009, 'ECE359 20009 EXAM', 'exams/bulk/20009/ece359f_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 20019, 'ECE359 20019 EXAM', 'exams/bulk/20019/ece359f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 20029, 'ECE359 20029 EXAM', 'exams/bulk/20029/ece359f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 20049, 'ECE359 20049 EXAM', 'exams/bulk/20049/ece359f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 63, 20069, 'ECE359 20069 EXAM', 'exams/bulk/20069/ece359f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE360H1','ECE','ECE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE360H1', 63, 20019, 'ECE360 20019 EXAM', 'exams/bulk/20019/ece360f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE360H1','ECE','ECE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE360H1', 63, 20029, 'ECE360 20029 EXAM', 'exams/bulk/20029/ece360f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE360H1','ECE','ECE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE360H1', 63, 20049, 'ECE360 20049 EXAM', 'exams/bulk/20049/ece360f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE360H1','ECE','ECE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE360H1', 63, 20069, 'ECE360 20069 EXAM', 'exams/bulk/20069/ece360f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20069, 'ECE361 20069 EXAM', 'exams/bulk/20069/ece361f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20011, 'ECE361 20011 EXAM', 'exams/bulk/20011/ece361s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20021, 'ECE361 20021 EXAM', 'exams/bulk/20021/ece361s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20031, 'ECE361 20031 EXAM', 'exams/bulk/20031/ece361s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20041, 'ECE361 20041 EXAM', 'exams/bulk/20041/ece361s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20051, 'ECE361 20051 EXAM', 'exams/bulk/20051/ece361s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE361H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE361H1','ECE','ECE361H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE361H1', 63, 20071, 'ECE361 20071 EXAM', 'exams/bulk/20071/ece361s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE370H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE370H1','ECE','ECE370H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE370H1', 63, 20019, 'ECE370 20019 EXAM', 'exams/bulk/20019/ece370f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE370H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE370H1','ECE','ECE370H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE370H1', 63, 20029, 'ECE370 20029 EXAM', 'exams/bulk/20029/ece370f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE370H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE370H1','ECE','ECE370H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE370H1', 63, 20049, 'ECE370 20049 EXAM', 'exams/bulk/20049/ece370f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE371H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE371H1','ECE','ECE371H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE371H1', 63, 20021, 'ECE371 20021 EXAM', 'exams/bulk/20021/ece371s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE371H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE371H1','ECE','ECE371H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE371H1', 63, 20031, 'ECE371 20031 EXAM', 'exams/bulk/20031/ece371s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE371H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE371H1','ECE','ECE371H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE371H1', 63, 20041, 'ECE371 20041 EXAM', 'exams/bulk/20041/ece371s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE371H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE371H1','ECE','ECE371H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE371H1', 63, 20051, 'ECE371 20051 EXAM', 'exams/bulk/20051/ece371s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE373H1','ECE','ECE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE373H1', 63, 20029, 'ECE373 20029 EXAM', 'exams/bulk/20029/ece373f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE373H1','ECE','ECE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE373H1', 63, 20049, 'ECE373 20049 EXAM', 'exams/bulk/20049/ece373f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE410H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE410H1','ECE','ECE410H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE410H1', 63, 20019, 'ECE410 20019 EXAM', 'exams/bulk/20019/ece410f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE410H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE410H1','ECE','ECE410H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE410H1', 63, 20029, 'ECE410 20029 EXAM', 'exams/bulk/20029/ece410f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE410H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE410H1','ECE','ECE410H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE410H1', 63, 20049, 'ECE410 20049 EXAM', 'exams/bulk/20049/ece410f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE410H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE410H1','ECE','ECE410H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE410H1', 63, 20069, 'ECE410 20069 EXAM', 'exams/bulk/20069/ece410f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 63, 20011, 'ECE411 20011 EXAM', 'exams/bulk/20011/ece411S_2001_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 63, 20021, 'ECE411 20021 EXAM', 'exams/bulk/20021/ece411S_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 63, 20031, 'ECE411 20031 EXAM', 'exams/bulk/20031/ece411s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 63, 20041, 'ECE411 20041 EXAM', 'exams/bulk/20041/ece411s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 63, 20051, 'ECE411 20051 EXAM', 'exams/bulk/20051/ece411s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 63, 20071, 'ECE411 20071 EXAM', 'exams/bulk/20071/ece411s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE413H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE413H1','ECE','ECE413H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE413H1', 63, 20021, 'ECE413 20021 EXAM', 'exams/bulk/20021/ece413s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE413H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE413H1','ECE','ECE413H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE413H1', 63, 20031, 'ECE413 20031 EXAM', 'exams/bulk/20031/ece413s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE413H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE413H1','ECE','ECE413H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE413H1', 63, 20041, 'ECE413 20041 EXAM', 'exams/bulk/20041/ece413s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE413H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE413H1','ECE','ECE413H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE413H1', 63, 20051, 'ECE413 20051 EXAM', 'exams/bulk/20051/ece413s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE413H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE413H1','ECE','ECE413H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE413H1', 63, 20071, 'ECE413 20071 EXAM', 'exams/bulk/20071/ece413s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 63, 19979, 'ECE416 19979 EXAM', 'exams/bulk/19979/ece416f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 63, 19989, 'ECE416 19989 EXAM', 'exams/bulk/19989/ece416f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 63, 20009, 'ECE416 20009 EXAM', 'exams/bulk/20009/ece416f_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 63, 20019, 'ECE416 20019 EXAM', 'exams/bulk/20019/ece416f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 63, 20049, 'ECE416 20049 EXAM', 'exams/bulk/20049/ece416f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 19971, 'ECE417 19971 EXAM', 'exams/bulk/19971/ece417s_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 19981, 'ECE417 19981 EXAM', 'exams/bulk/19981/ece417s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 20011, 'ECE417 20011 EXAM', 'exams/bulk/20011/ece417s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 20021, 'ECE417 20021 EXAM', 'exams/bulk/20021/ece417s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 20031, 'ECE417 20031 EXAM', 'exams/bulk/20031/ece417s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 20041, 'ECE417 20041 EXAM', 'exams/bulk/20041/ece417s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 20051, 'ECE417 20051 EXAM', 'exams/bulk/20051/ece417s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE417H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE417H1','ECE','ECE417H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE417H1', 63, 20071, 'ECE417 20071 EXAM', 'exams/bulk/20071/ece417s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE418H1','ECE','ECE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE418H1', 63, 19999, 'ECE418 19999 EXAM', 'exams/bulk/19999/ece418f_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE418H1','ECE','ECE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE418H1', 63, 20019, 'ECE418 20019 EXAM', 'exams/bulk/20019/ece418f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE418H1','ECE','ECE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE418H1', 63, 20029, 'ECE418 20029 EXAM', 'exams/bulk/20029/ece418f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE418H1','ECE','ECE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE418H1', 63, 20049, 'ECE418 20049 EXAM', 'exams/bulk/20049/ece418f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE419H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE419H1','ECE','ECE419H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE419H1', 63, 20019, 'ECE419 20019 EXAM', 'exams/bulk/20019/ece419f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE419H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE419H1','ECE','ECE419H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE419H1', 63, 20029, 'ECE419 20029 EXAM', 'exams/bulk/20029/ece419f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE419H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE419H1','ECE','ECE419H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE419H1', 63, 20049, 'ECE419 20049 EXAM', 'exams/bulk/20049/ece419f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE419H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE419H1','ECE','ECE419H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE419H1', 63, 20071, 'ECE419 20071 EXAM', 'exams/bulk/20071/ece419s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE422H1','ECE','ECE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE422H1', 63, 20011, 'ECE422 20011 EXAM', 'exams/bulk/20011/ece422s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE422H1','ECE','ECE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE422H1', 63, 20021, 'ECE422 20021 EXAM', 'exams/bulk/20021/ece422s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE422H1','ECE','ECE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE422H1', 63, 20031, 'ECE422 20031 EXAM', 'exams/bulk/20031/ece422s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE422H1','ECE','ECE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE422H1', 63, 20051, 'ECE422 20051 EXAM', 'exams/bulk/20051/ece422s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE422H1','ECE','ECE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE422H1', 63, 20071, 'ECE422 20071 EXAM', 'exams/bulk/20071/ece422s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE424H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE424H1','ECE','ECE424H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE424H1', 63, 20019, 'ECE424 20019 EXAM', 'exams/bulk/20019/ece424f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 19981, 'ECE425 19981 EXAM', 'exams/bulk/19981/ece425s_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 19991, 'ECE425 19991 EXAM', 'exams/bulk/19991/ece425s_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 20001, 'ECE425 20001 EXAM', 'exams/bulk/20001/ece425s_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 20011, 'ECE425 20011 EXAM', 'exams/bulk/20011/ece425s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 20021, 'ECE425 20021 EXAM', 'exams/bulk/20021/ece425s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 20031, 'ECE425 20031 EXAM', 'exams/bulk/20031/ece425s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 20051, 'ECE425 20051 EXAM', 'exams/bulk/20051/ece425s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE425H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE425H1','ECE','ECE425H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE425H1', 63, 20071, 'ECE425 20071 EXAM', 'exams/bulk/20071/ece425s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE426H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE426H1','ECE','ECE426H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE426H1', 63, 20019, 'ECE426 20019 EXAM', 'exams/bulk/20019/ece426f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE426H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE426H1','ECE','ECE426H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE426H1', 63, 20029, 'ECE426 20029 EXAM', 'exams/bulk/20029/ece426f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE426H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE426H1','ECE','ECE426H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE426H1', 63, 20039, 'ECE426 20039 EXAM', 'exams/bulk/20039/ece426f_2003_exam.pdf');

select count(1) into courseCount from course where id ='ECE426H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE426H1','ECE','ECE426H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE426H1', 63, 20049, 'ECE426 20049 EXAM', 'exams/bulk/20049/ece426f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20019, 'ECE431 20019 EXAM', 'exams/bulk/20019/ece431f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20029, 'ECE431 20029 EXAM', 'exams/bulk/20029/ece431f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20049, 'ECE431 20049 EXAM', 'exams/bulk/20049/ece431f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20069, 'ECE431 20069 EXAM', 'exams/bulk/20069/ece431f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20021, 'ECE431 20021 EXAM', 'exams/bulk/20021/ece431s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20031, 'ECE431 20031 EXAM', 'exams/bulk/20031/ece431s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20041, 'ECE431 20041 EXAM', 'exams/bulk/20041/ece431s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20051, 'ECE431 20051 EXAM', 'exams/bulk/20051/ece431s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE431H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE431H1','ECE','ECE431H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE431H1', 63, 20071, 'ECE431 20071 EXAM', 'exams/bulk/20071/ece431s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE435H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE435H1','ECE','ECE435H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE435H1', 63, 20009, 'ECE435 20009 EXAM', 'exams/bulk/20009/ece435f_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE435H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE435H1','ECE','ECE435H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE435H1', 63, 20019, 'ECE435 20019 EXAM', 'exams/bulk/20019/ece435f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE435H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE435H1','ECE','ECE435H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE435H1', 63, 20029, 'ECE435 20029 EXAM', 'exams/bulk/20029/ece435f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE435H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE435H1','ECE','ECE435H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE435H1', 63, 20049, 'ECE435 20049 EXAM', 'exams/bulk/20049/ece435f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE443H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE443H1','ECE','ECE443H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE443H1', 63, 20019, 'ECE443 20019 EXAM', 'exams/bulk/20019/ece443f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE443H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE443H1','ECE','ECE443H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE443H1', 63, 20029, 'ECE443 20029 EXAM', 'exams/bulk/20029/ece443f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE443H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE443H1','ECE','ECE443H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE443H1', 63, 20049, 'ECE443 20049 EXAM', 'exams/bulk/20049/ece443f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 19979, 'ECE445 19979 EXAM', 'exams/bulk/19979/ece445f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 19989, 'ECE445 19989 EXAM', 'exams/bulk/19989/ece445f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 19999, 'ECE445 19999 EXAM', 'exams/bulk/19999/ece445f_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 20019, 'ECE445 20019 EXAM', 'exams/bulk/20019/ece445f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 20029, 'ECE445 20029 EXAM', 'exams/bulk/20029/ece445f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 20049, 'ECE445 20049 EXAM', 'exams/bulk/20049/ece445f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE445H1','ECE','ECE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE445H1', 63, 20069, 'ECE445 20069 EXAM', 'exams/bulk/20069/ece445f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 19979, 'ECE446 19979 EXAM', 'exams/bulk/19979/ece446f_1997_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 19989, 'ECE446 19989 EXAM', 'exams/bulk/19989/ece446f_1998_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 19999, 'ECE446 19999 EXAM', 'exams/bulk/19999/ece446f_1999_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 20009, 'ECE446 20009 EXAM', 'exams/bulk/20009/ece446f_2000_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 20019, 'ECE446 20019 EXAM', 'exams/bulk/20019/ece446f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 20029, 'ECE446 20029 EXAM', 'exams/bulk/20029/ece446f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 20049, 'ECE446 20049 EXAM', 'exams/bulk/20049/ece446f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE446H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE446H1','ECE','ECE446H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE446H1', 63, 20069, 'ECE446 20069 EXAM', 'exams/bulk/20069/ece446f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE450H1','ECE','ECE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE450H1', 63, 20011, 'ECE450 20011 EXAM', 'exams/bulk/20011/ece450s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE450H1','ECE','ECE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE450H1', 63, 20031, 'ECE450 20031 EXAM', 'exams/bulk/20031/ece450s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE450H1','ECE','ECE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE450H1', 63, 20041, 'ECE450 20041 EXAM', 'exams/bulk/20041/ece450s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE450H1','ECE','ECE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE450H1', 63, 20051, 'ECE450 20051 EXAM', 'exams/bulk/20051/ece450s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE450H1','ECE','ECE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE450H1', 63, 20071, 'ECE450 20071 EXAM', 'exams/bulk/20071/ece450s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE451H1','ECE','ECE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE451H1', 63, 20011, 'ECE451 20011 EXAM', 'exams/bulk/20011/ece451s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE451H1','ECE','ECE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE451H1', 63, 20021, 'ECE451 20021 EXAM', 'exams/bulk/20021/ece451s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE451H1','ECE','ECE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE451H1', 63, 20031, 'ECE451 20031 EXAM', 'exams/bulk/20031/ece451s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE451H1','ECE','ECE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE451H1', 63, 20041, 'ECE451 20041 EXAM', 'exams/bulk/20041/ece451s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE451H1','ECE','ECE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE451H1', 63, 20051, 'ECE451 20051 EXAM', 'exams/bulk/20051/ece451s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE451H1','ECE','ECE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE451H1', 63, 20071, 'ECE451 20071 EXAM', 'exams/bulk/20071/ece451s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE452H1','ECE','ECE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE452H1', 63, 20049, 'ECE452 20049 EXAM', 'exams/bulk/20049/ece452f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE452H1','ECE','ECE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE452H1', 63, 20069, 'ECE452 20069 EXAM', 'exams/bulk/20069/ece452f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE454H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE454H1','ECE','ECE454H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE454H1', 63, 20071, 'ECE454 20071 EXAM', 'exams/bulk/20071/ece454s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE460H1','ECE','ECE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE460H1', 63, 20019, 'ECE460 20019 EXAM', 'exams/bulk/20019/ece460f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE460H1','ECE','ECE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE460H1', 63, 20029, 'ECE460 20029 EXAM', 'exams/bulk/20029/ece460f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE460H1','ECE','ECE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE460H1', 63, 20049, 'ECE460 20049 EXAM', 'exams/bulk/20049/ece460f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE460H1','ECE','ECE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE460H1', 63, 20011, 'ECE460 20011 EXAM', 'exams/bulk/20011/ece460s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE461H1','ECE','ECE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE461H1', 63, 20069, 'ECE461 20069 EXAM', 'exams/bulk/20069/ece461f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE461H1','ECE','ECE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE461H1', 63, 20011, 'ECE461 20011 EXAM', 'exams/bulk/20011/ece461s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE461H1','ECE','ECE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE461H1', 63, 20021, 'ECE461 20021 EXAM', 'exams/bulk/20021/ece461s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE461H1','ECE','ECE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE461H1', 63, 20031, 'ECE461 20031 EXAM', 'exams/bulk/20031/ece461s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE461H1','ECE','ECE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE461H1', 63, 20041, 'ECE461 20041 EXAM', 'exams/bulk/20041/ece461s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE461H1','ECE','ECE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE461H1', 63, 20051, 'ECE461 20051 EXAM', 'exams/bulk/20051/ece461s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20029, 'ECE462 20029 EXAM', 'exams/bulk/20029/ece462f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20069, 'ECE462 20069 EXAM', 'exams/bulk/20069/ece462f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20011, 'ECE462 20011 EXAM', 'exams/bulk/20011/ece462s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20021, 'ECE462 20021 EXAM', 'exams/bulk/20021/ece462s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20031, 'ECE462 20031 EXAM', 'exams/bulk/20031/ece462s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20041, 'ECE462 20041 EXAM', 'exams/bulk/20041/ece462s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20051, 'ECE462 20051 EXAM', 'exams/bulk/20051/ece462s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE462H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE462H1','ECE','ECE462H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE462H1', 63, 20071, 'ECE462 20071 EXAM', 'exams/bulk/20071/ece462s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE463H1','ECE','ECE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE463H1', 63, 20071, 'ECE463 20071 EXAM', 'exams/bulk/20071/ece463s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE464H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE464H1','ECE','ECE464H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE464H1', 63, 20071, 'ECE464 20071 EXAM', 'exams/bulk/20071/ece464s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE465H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE465H1','ECE','ECE465H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE465H1', 63, 20071, 'ECE465 20071 EXAM', 'exams/bulk/20071/ece465s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE466H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE466H1','ECE','ECE466H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE466H1', 63, 20071, 'ECE466 20071 EXAM', 'exams/bulk/20071/ece466s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE468H1','ECE','ECE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE468H1', 63, 20071, 'ECE468 20071 EXAM', 'exams/bulk/20071/ece468s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE471H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE471H1','ECE','ECE471H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE471H1', 63, 20019, 'ECE471 20019 EXAM', 'exams/bulk/20019/ece471f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20029, 'ECE472 20029 EXAM', 'exams/bulk/20029/ece472f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20049, 'ECE472 20049 EXAM', 'exams/bulk/20049/ece472f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20069, 'ECE472 20069 EXAM', 'exams/bulk/20069/ece472f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20011, 'ECE472 20011 EXAM', 'exams/bulk/20011/ece472s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20021, 'ECE472 20021 EXAM', 'exams/bulk/20021/ece472s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20031, 'ECE472 20031 EXAM', 'exams/bulk/20031/ece472s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20041, 'ECE472 20041 EXAM', 'exams/bulk/20041/ece472s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20051, 'ECE472 20051 EXAM', 'exams/bulk/20051/ece472s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE472H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE472H1','ECE','ECE472H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE472H1', 63, 20071, 'ECE472 20071 EXAM', 'exams/bulk/20071/ece472s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE488H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE488H1','ECE','ECE488H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE488H1', 63, 20071, 'ECE488 20071 EXAM', 'exams/bulk/20071/ece488s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE512H1','ECE','ECE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE512H1', 63, 19989, 'ECE512 19989 EXAM', 'exams/bulk/19989/ece512f_1998_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE512H1','ECE','ECE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE512H1', 63, 20019, 'ECE512 20019 EXAM', 'exams/bulk/20019/ece512f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE512H1','ECE','ECE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE512H1', 63, 20029, 'ECE512 20029 EXAM', 'exams/bulk/20029/ece512f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE512H1','ECE','ECE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE512H1', 63, 20039, 'ECE512 20039 EXAM', 'exams/bulk/20039/ece512f_2003_exam.pdf');

select count(1) into courseCount from course where id ='ECE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE512H1','ECE','ECE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE512H1', 63, 20049, 'ECE512 20049 EXAM', 'exams/bulk/20049/ece512f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE512H1','ECE','ECE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE512H1', 63, 20069, 'ECE512 20069 EXAM', 'exams/bulk/20069/ece512f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE516H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE516H1','ECE','ECE516H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE516H1', 63, 20041, 'ECE516 20041 EXAM', 'exams/bulk/20041/ece516s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE516H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE516H1','ECE','ECE516H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE516H1', 63, 20051, 'ECE516 20051 EXAM', 'exams/bulk/20051/ece516s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE516H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE516H1','ECE','ECE516H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE516H1', 63, 20071, 'ECE516 20071 EXAM', 'exams/bulk/20071/ece516s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE524H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE524H1','ECE','ECE524H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE524H1', 63, 20029, 'ECE524 20029 EXAM', 'exams/bulk/20029/ece524f_2002_EXAM.pdf');

select count(1) into courseCount from course where id ='ECE524H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE524H1','ECE','ECE524H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE524H1', 63, 20039, 'ECE524 20039 EXAM', 'exams/bulk/20039/ece524f_2003_exam.pdf');

select count(1) into courseCount from course where id ='ECE524H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE524H1','ECE','ECE524H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE524H1', 63, 20049, 'ECE524 20049 EXAM', 'exams/bulk/20049/ece524f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE524H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE524H1','ECE','ECE524H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE524H1', 63, 20069, 'ECE524 20069 EXAM', 'exams/bulk/20069/ece524f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE527H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE527H1','ECE','ECE527H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE527H1', 63, 20011, 'ECE527 20011 EXAM', 'exams/bulk/20011/ece527s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE527H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE527H1','ECE','ECE527H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE527H1', 63, 20021, 'ECE527 20021 EXAM', 'exams/bulk/20021/ece527s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE527H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE527H1','ECE','ECE527H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE527H1', 63, 20031, 'ECE527 20031 EXAM', 'exams/bulk/20031/ece527s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE527H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE527H1','ECE','ECE527H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE527H1', 63, 20041, 'ECE527 20041 EXAM', 'exams/bulk/20041/ece527s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE527H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE527H1','ECE','ECE527H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE527H1', 63, 20051, 'ECE527 20051 EXAM', 'exams/bulk/20051/ece527s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE530H1','ECE','ECE530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE530H1', 63, 20011, 'ECE530 20011 EXAM', 'exams/bulk/20011/ece530s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE530H1','ECE','ECE530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE530H1', 63, 20021, 'ECE530 20021 EXAM', 'exams/bulk/20021/ece530s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE530H1','ECE','ECE530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE530H1', 63, 20031, 'ECE530 20031 EXAM', 'exams/bulk/20031/ece530s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE530H1','ECE','ECE530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE530H1', 63, 20041, 'ECE530 20041 EXAM', 'exams/bulk/20041/ece530s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE530H1','ECE','ECE530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE530H1', 63, 20051, 'ECE530 20051 EXAM', 'exams/bulk/20051/ece530s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE530H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE530H1','ECE','ECE530H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE530H1', 63, 20071, 'ECE530 20071 EXAM', 'exams/bulk/20071/ece530s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE532H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE532H1','ECE','ECE532H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE532H1', 63, 20011, 'ECE532 20011 EXAM', 'exams/bulk/20011/ece532s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE532H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE532H1','ECE','ECE532H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE532H1', 63, 20021, 'ECE532 20021 EXAM', 'exams/bulk/20021/ece532s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE532H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE532H1','ECE','ECE532H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE532H1', 63, 20031, 'ECE532 20031 EXAM', 'exams/bulk/20031/ece532s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 63, 20029, 'ECE533 20029 EXAM', 'exams/bulk/20029/ece533f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 63, 20049, 'ECE533 20049 EXAM', 'exams/bulk/20049/ece533f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 63, 20069, 'ECE533 20069 EXAM', 'exams/bulk/20069/ece533f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 63, 20021, 'ECE533 20021 EXAM', 'exams/bulk/20021/ece533s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE534H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE534H1','ECE','ECE534H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE534H1', 63, 20019, 'ECE534 20019 EXAM', 'exams/bulk/20019/ece534f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE534H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE534H1','ECE','ECE534H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE534H1', 63, 20029, 'ECE534 20029 EXAM', 'exams/bulk/20029/ece534f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE534H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE534H1','ECE','ECE534H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE534H1', 63, 20049, 'ECE534 20049 EXAM', 'exams/bulk/20049/ece534f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE534H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE534H1','ECE','ECE534H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE534H1', 63, 20069, 'ECE534 20069 EXAM', 'exams/bulk/20069/ece534f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE535H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE535H1','ECE','ECE535H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE535H1', 63, 20069, 'ECE535 20069 EXAM', 'exams/bulk/20069/ece535f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ECE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE540H1','ECE','ECE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE540H1', 63, 20021, 'ECE540 20021 EXAM', 'exams/bulk/20021/ece540s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE540H1','ECE','ECE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE540H1', 63, 20041, 'ECE540 20041 EXAM', 'exams/bulk/20041/ece540s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE540H1','ECE','ECE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE540H1', 63, 20051, 'ECE540 20051 EXAM', 'exams/bulk/20051/ece540s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ECE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE540H1','ECE','ECE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE540H1', 63, 20071, 'ECE540 20071 EXAM', 'exams/bulk/20071/ece540s_2007_exam.pdf');

select count(1) into courseCount from course where id ='ECE552H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE552H1','ECE','ECE552H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE552H1', 63, 20019, 'ECE552 20019 EXAM', 'exams/bulk/20019/ece552f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE552H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE552H1','ECE','ECE552H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE552H1', 63, 20029, 'ECE552 20029 EXAM', 'exams/bulk/20029/ece552f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE552H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE552H1','ECE','ECE552H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE552H1', 63, 20011, 'ECE552 20011 EXAM', 'exams/bulk/20011/ece552s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE557H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE557H1','ECE','ECE557H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE557H1', 63, 20019, 'ECE557 20019 EXAM', 'exams/bulk/20019/ece557f_2001_exam.pdf');

select count(1) into courseCount from course where id ='ECE557H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE557H1','ECE','ECE557H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE557H1', 63, 20029, 'ECE557 20029 EXAM', 'exams/bulk/20029/ece557f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ECE557H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE557H1','ECE','ECE557H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE557H1', 63, 20049, 'ECE557 20049 EXAM', 'exams/bulk/20049/ece557f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ECE557H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE557H1','ECE','ECE557H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE557H1', 63, 20069, 'ECE557 20069 EXAM', 'exams/bulk/20069/ece557f_2006_exam.pdf');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20079, 'EDC230 20079 EXAM', 'exams/bulk/20079/edc230f_2007_exam.pdf');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20011, 'EDC230 20011 EXAM', 'exams/bulk/20011/edc230s_2001_exam.pdf');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20021, 'EDC230 20021 EXAM', 'exams/bulk/20021/edc230s_2002_exam.pdf');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20031, 'EDC230 20031 EXAM', 'exams/bulk/20031/edc230s_2003_exam.PDF');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20041, 'EDC230 20041 EXAM', 'exams/bulk/20041/edc230s_2004_exam.pdf');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20051, 'EDC230 20051 EXAM', 'exams/bulk/20051/edc230s_2005_exam.pdf');

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20071, 'EDC230 20071 EXAM', 'exams/bulk/20071/edc230s_2007_exam.pdf');

select count(1) into courseCount from course where id ='EDM304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDM304H1','EDM','EDM304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDM304H1', 63, 20011, 'EDM304 20011 EXAM', 'exams/bulk/20011/edm304s_2001_exam.pdf');

select count(1) into courseCount from course where id ='EDM304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDM304H1','EDM','EDM304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDM304H1', 63, 20031, 'EDM304 20031 EXAM', 'exams/bulk/20031/edm304s_2003_exam.PDF');

select count(1) into courseCount from course where id ='EDM304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDM304H1','EDM','EDM304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDM304H1', 63, 20041, 'EDM304 20041 EXAM', 'exams/bulk/20041/edm304s_2004_exam.pdf');

select count(1) into courseCount from course where id ='EDM304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDM304H1','EDM','EDM304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDM304H1', 63, 20051, 'EDM304 20051 EXAM', 'exams/bulk/20051/edm304s_2005_exam.pdf');

select count(1) into courseCount from course where id ='EDM304H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDM304H1','EDM','EDM304H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDM304H1', 63, 20071, 'EDM304 20071 EXAM', 'exams/bulk/20071/edm304s_2007_exam.pdf');

select count(1) into courseCount from course where id ='EDV220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV220H1','EDV','EDV220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV220H1', 63, 20019, 'EDV220 20019 EXAM', 'exams/bulk/20019/edv220f_2001_exam.pdf');

select count(1) into courseCount from course where id ='EDV220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV220H1','EDV','EDV220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV220H1', 63, 20029, 'EDV220 20029 EXAM', 'exams/bulk/20029/edv220f_2002_exam.pdf');

select count(1) into courseCount from course where id ='EDV220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV220H1','EDV','EDV220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV220H1', 63, 20049, 'EDV220 20049 EXAM', 'exams/bulk/20049/edv220f_2004_exam.pdf');

select count(1) into courseCount from course where id ='EDV220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV220H1','EDV','EDV220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV220H1', 63, 20069, 'EDV220 20069 EXAM', 'exams/bulk/20069/edv220f_2006_exam.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20011, 'EDV250 20011 EXAM-B', 'exams/bulk/20011/edv250s_2001_exam-b.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20011, 'EDV250 20011 EXAM', 'exams/bulk/20011/edv250s_2001_exam.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20021, 'EDV250 20021 EXAM', 'exams/bulk/20021/edv250s_2002_exam.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20031, 'EDV250 20031 EXAM', 'exams/bulk/20031/edv250s_2003_exam.PDF');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20041, 'EDV250 20041 EXAM-B', 'exams/bulk/20041/edv250s_2004_exam-b.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20041, 'EDV250 20041 EXAM', 'exams/bulk/20041/edv250s_2004_exam.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20051, 'EDV250 20051 EXAM', 'exams/bulk/20051/edv250s_2005_exam.pdf');

select count(1) into courseCount from course where id ='EDV250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV250H1','EDV','EDV250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV250H1', 63, 20071, 'EDV250 20071 EXAM', 'exams/bulk/20071/edv250s_2007_exam.pdf');

select count(1) into courseCount from course where id ='EDV360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV360H1','EDV','EDV360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV360H1', 63, 20019, 'EDV360 20019 EXAM', 'exams/bulk/20019/edv360f_2001_exam.pdf');

select count(1) into courseCount from course where id ='EDV360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV360H1','EDV','EDV360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV360H1', 63, 20029, 'EDV360 20029 EXAM', 'exams/bulk/20029/edv360f_2002_exam.pdf');

select count(1) into courseCount from course where id ='EDV360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV360H1','EDV','EDV360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV360H1', 63, 20049, 'EDV360 20049 EXAM', 'exams/bulk/20049/edv360f_2004_exam.pdf');

select count(1) into courseCount from course where id ='EDV360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDV360H1','EDV','EDV360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDV360H1', 63, 20069, 'EDV360 20069 EXAM', 'exams/bulk/20069/edv360f_2006_exam.pdf');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20029, 'ENG182 20029 EXAM', 'exams/bulk/20029/eng182f_2002_exam.pdf');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20049, 'ENG182 20049 EXAM', 'exams/bulk/20049/eng182f_2004_exam.pdf');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20011, 'ENG182 20011 EXAM', 'exams/bulk/20011/eng182s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20021, 'ENG182 20021 EXAM', 'exams/bulk/20021/eng182s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20031, 'ENG182 20031 EXAM', 'exams/bulk/20031/eng182s_2003_exam.PDF');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20041, 'ENG182 20041 EXAM', 'exams/bulk/20041/eng182s_2004_exam.pdf');

select count(1) into courseCount from course where id ='ENG182H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG182H1','ENG','ENG182H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG182H1', 63, 20051, 'ENG182 20051 EXAM', 'exams/bulk/20051/eng182s_2005_exam.pdf');

select count(1) into courseCount from course where id ='ENG287H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG287H1','ENG','ENG287H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG287H1', 63, 20011, 'ENG287 20011 EXAM', 'exams/bulk/20011/eng287s_2001_exam.pdf');

select count(1) into courseCount from course where id ='ENG287H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG287H1','ENG','ENG287H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG287H1', 63, 20021, 'ENG287 20021 EXAM', 'exams/bulk/20021/eng287s_2002_exam.pdf');

select count(1) into courseCount from course where id ='ENG287H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ENG287H1','ENG','ENG287H1',0);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ENG287H1', 63, 20031, 'ENG287 20031 EXAM', 'exams/bulk/20031/eng287s_2003_exam.PDF');

select count(1) into courseCount from course where id ='GLG185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('GLG185H1','GLG','GLG185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('GLG185H1', 63, 20011, 'GLG185 20011 EXAM', 'exams/bulk/20011/glg185s_2001_exam.pdf');

select count(1) into courseCount from course where id ='GLG185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('GLG185H1','GLG','GLG185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('GLG185H1', 63, 20021, 'GLG185 20021 EXAM', 'exams/bulk/20021/glg185s_2002_exam.pdf');

select count(1) into courseCount from course where id ='GLG185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('GLG185H1','GLG','GLG185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('GLG185H1', 63, 20031, 'GLG185 20031 EXAM', 'exams/bulk/20031/glg185s_2003_exam.PDF');

select count(1) into courseCount from course where id ='HPS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS280H1','HPS','HPS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS280H1', 63, 20049, 'HPS280 20049 EXAM', 'exams/bulk/20049/hps280f_2004_exam.pdf');

select count(1) into courseCount from course where id ='HPS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS280H1','HPS','HPS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS280H1', 63, 20069, 'HPS280 20069 EXAM', 'exams/bulk/20069/hps280f_2006_exam.pdf');

select count(1) into courseCount from course where id ='HPS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS280H1','HPS','HPS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS280H1', 63, 20021, 'HPS280 20021 EXAM', 'exams/bulk/20021/hps280s_2002_exam.pdf');

select count(1) into courseCount from course where id ='HPS280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS280H1','HPS','HPS280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS280H1', 63, 20031, 'HPS280 20031 EXAM', 'exams/bulk/20031/hps280s_2003_exam.PDF');

select count(1) into courseCount from course where id ='HPS281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS281H1','HPS','HPS281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS281H1', 63, 20041, 'HPS281 20041 EXAM', 'exams/bulk/20041/hps281s_2004_exam.pdf');

select count(1) into courseCount from course where id ='HPS282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS282H1','HPS','HPS282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS282H1', 63, 20019, 'HPS282 20019 EXAM', 'exams/bulk/20019/hps282f_2001_exam.pdf');

select count(1) into courseCount from course where id ='HPS282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS282H1','HPS','HPS282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS282H1', 63, 20071, 'HPS282 20071 EXAM', 'exams/bulk/20071/hps282s_2007_exam.pdf');

select count(1) into courseCount from course where id ='HPS284H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS284H1','HPS','HPS284H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS284H1', 63, 20011, 'HPS284 20011 EXAM', 'exams/bulk/20011/hps284s_2001_exam.pdf');

select count(1) into courseCount from course where id ='HPS284H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS284H1','HPS','HPS284H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS284H1', 63, 20021, 'HPS284 20021 EXAM', 'exams/bulk/20021/hps284s_2002_exam.pdf');

select count(1) into courseCount from course where id ='HPS284H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('HPS284H1','HPS','HPS284H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('HPS284H1', 63, 20051, 'HPS284 20051 EXAM', 'exams/bulk/20051/hps284s_2005_exam.pdf');

select count(1) into courseCount from course where id ='JVM270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JVM270H1','JVM','JVM270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JVM270H1', 63, 20069, 'JVM270 20069 EXAM', 'exams/bulk/20069/jvm270f_2006_exam.pdf');

select count(1) into courseCount from course where id ='JSM282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JSM282H1','JSM','JSM282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JSM282H1', 63, 20011, 'JSM282 20011 EXAM', 'exams/bulk/20011/jsm282s_2001_exam.pdf');

select count(1) into courseCount from course where id ='JSM282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JSM282H1','JSM','JSM282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JSM282H1', 63, 20021, 'JSM282 20021 EXAM', 'exams/bulk/20021/jsm282s_2002_exam.pdf');

select count(1) into courseCount from course where id ='JSM282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JSM282H1','JSM','JSM282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JSM282H1', 63, 20031, 'JSM282 20031 EXAM', 'exams/bulk/20031/jsm282s_2003_exam.pdf');

select count(1) into courseCount from course where id ='JSM282H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JSM282H1','JSM','JSM282H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JSM282H1', 63, 20041, 'JSM282 20041 EXAM', 'exams/bulk/20041/jsm282s_2004_exam.pdf');

select count(1) into courseCount from course where id ='JTC102H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JTC102H1','JTC','JTC102H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JTC102H1', 63, 20011, 'JTC102 20011 EXAM', 'exams/bulk/20011/jtc102s_2001_exam.pdf');

select count(1) into courseCount from course where id ='JTC102H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JTC102H1','JTC','JTC102H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JTC102H1', 63, 20021, 'JTC102 20021 EXAM', 'exams/bulk/20021/jtc102s_2002_exam.pdf');

select count(1) into courseCount from course where id ='JTC413H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JTC413H1','JTC','JTC413H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JTC413H1', 63, 20019, 'JTC413 20019 EXAM', 'exams/bulk/20019/jtc413f_2001_exam.pdf');

select count(1) into courseCount from course where id ='JVM209H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JVM209H1','JVM','JVM209H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JVM209H1', 63, 20019, 'JVM209 20019 EXAM', 'exams/bulk/20019/jvm209f_2001_exam.pdf');

select count(1) into courseCount from course where id ='JVM209H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JVM209H1','JVM','JVM209H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JVM209H1', 63, 20029, 'JVM209 20029 EXAM', 'exams/bulk/20029/jvm209f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT185H1','MAT','MAT185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT185H1', 63, 20019, 'MAT185 20019 EXAM', 'exams/bulk/20019/mat185f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT185H1','MAT','MAT185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT185H1', 63, 20029, 'MAT185 20029 EXAM', 'exams/bulk/20029/mat185f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT185H1','MAT','MAT185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT185H1', 63, 20039, 'MAT185 20039 EXAM', 'exams/bulk/20039/mat185f_2003_exam.pdf');

select count(1) into courseCount from course where id ='MAT185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT185H1','MAT','MAT185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT185H1', 63, 20049, 'MAT185 20049 EXAM', 'exams/bulk/20049/mat185f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT185H1','MAT','MAT185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT185H1', 63, 20071, 'MAT185 20071 EXAM', 'exams/bulk/20071/mat185s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20019, 'MAT186 20019 EXAM', 'exams/bulk/20019/mat186f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20029, 'MAT186 20029 EXAM', 'exams/bulk/20029/mat186f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20049, 'MAT186 20049 EXAM', 'exams/bulk/20049/mat186f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20069, 'MAT186 20069 EXAM', 'exams/bulk/20069/mat186f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20011, 'MAT186 20011 EXAM', 'exams/bulk/20011/mat186s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20031, 'MAT186 20031 EXAM', 'exams/bulk/20031/mat186s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20041, 'MAT186 20041 EXAM', 'exams/bulk/20041/mat186s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20051, 'MAT186 20051 EXAM', 'exams/bulk/20051/mat186s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MAT186H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT186H1','MAT','MAT186H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT186H1', 63, 20071, 'MAT186 20071 EXAM', 'exams/bulk/20071/mat186s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT187H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT187H1','MAT','MAT187H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT187H1', 63, 20011, 'MAT187 20011 EXAM', 'exams/bulk/20011/mat187s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT187H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT187H1','MAT','MAT187H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT187H1', 63, 20021, 'MAT187 20021 EXAM', 'exams/bulk/20021/mat187s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT187H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT187H1','MAT','MAT187H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT187H1', 63, 20031, 'MAT187 20031 EXAM', 'exams/bulk/20031/mat187s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MAT187H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT187H1','MAT','MAT187H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT187H1', 63, 20041, 'MAT187 20041 EXAM', 'exams/bulk/20041/mat187s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT187H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT187H1','MAT','MAT187H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT187H1', 63, 20051, 'MAT187 20051 EXAM', 'exams/bulk/20051/mat187s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MAT187H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT187H1','MAT','MAT187H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT187H1', 63, 20071, 'MAT187 20071 EXAM', 'exams/bulk/20071/mat187s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20019, 'MAT188 20019 EXAM', 'exams/bulk/20019/mat188f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20029, 'MAT188 20029 EXAM', 'exams/bulk/20029/mat188f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20049, 'MAT188 20049 EXAM', 'exams/bulk/20049/mat188f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20069, 'MAT188 20069 EXAM', 'exams/bulk/20069/mat188f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20011, 'MAT188 20011 EXAM', 'exams/bulk/20011/mat188s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20021, 'MAT188 20021 EXAM', 'exams/bulk/20021/mat188s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20031, 'MAT188 20031 EXAM', 'exams/bulk/20031/mat188s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20041, 'MAT188 20041 EXAM', 'exams/bulk/20041/mat188s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20051, 'MAT188 20051 EXAM', 'exams/bulk/20051/mat188s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MAT188H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT188H1','MAT','MAT188H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT188H1', 63, 20071, 'MAT188 20071 EXAM', 'exams/bulk/20071/mat188s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT194H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT194H1','MAT','MAT194H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT194H1', 63, 20019, 'MAT194 20019 EXAM', 'exams/bulk/20019/mat194f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT194H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT194H1','MAT','MAT194H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT194H1', 63, 20029, 'MAT194 20029 EXAM', 'exams/bulk/20029/mat194f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT194H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT194H1','MAT','MAT194H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT194H1', 63, 20049, 'MAT194 20049 EXAM', 'exams/bulk/20049/mat194f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT194H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT194H1','MAT','MAT194H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT194H1', 63, 20069, 'MAT194 20069 EXAM', 'exams/bulk/20069/mat194f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19911, 'MAT195 19911 EXAM', 'exams/bulk/19911/mat195s_1991_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19921, 'MAT195 19921 EXAM', 'exams/bulk/19921/mat195s_1992_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19951, 'MAT195 19951 EXAM', 'exams/bulk/19951/mat195s_1995_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19961, 'MAT195 19961 EXAM', 'exams/bulk/19961/mat195s_1996_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19971, 'MAT195 19971 EXAM', 'exams/bulk/19971/mat195s_1997_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19981, 'MAT195 19981 EXAM', 'exams/bulk/19981/mat195s_1998_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 19991, 'MAT195 19991 EXAM', 'exams/bulk/19991/mat195s_1999_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 20011, 'MAT195 20011 EXAM', 'exams/bulk/20011/mat195s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 20021, 'MAT195 20021 EXAM', 'exams/bulk/20021/mat195s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 20031, 'MAT195 20031 EXAM', 'exams/bulk/20031/mat195s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 20041, 'MAT195 20041 EXAM', 'exams/bulk/20041/mat195s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 20051, 'MAT195 20051 EXAM', 'exams/bulk/20051/mat195s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 63, 20071, 'MAT195 20071 EXAM', 'exams/bulk/20071/mat195s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 63, 20019, 'MAT196 20019 EXAM', 'exams/bulk/20019/mat196f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 63, 20029, 'MAT196 20029 EXAM', 'exams/bulk/20029/mat196f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 63, 20049, 'MAT196 20049 EXAM', 'exams/bulk/20049/mat196f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 63, 20069, 'MAT196 20069 EXAM', 'exams/bulk/20069/mat196f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 63, 20011, 'MAT197 20011 EXAM', 'exams/bulk/20011/mat197s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 63, 20021, 'MAT197 20021 EXAM', 'exams/bulk/20021/mat197s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 63, 20031, 'MAT197 20031 EXAM', 'exams/bulk/20031/mat197s_2003_exam.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 63, 20041, 'MAT197 20041 EXAM', 'exams/bulk/20041/mat197s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 63, 20051, 'MAT197 20051 EXAM', 'exams/bulk/20051/mat197s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 63, 20071, 'MAT197 20071 EXAM', 'exams/bulk/20071/mat197s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT198H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT198H1','MAT','MAT198H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT198H1', 63, 20019, 'MAT198 20019 EXAM', 'exams/bulk/20019/mat198f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT198H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT198H1','MAT','MAT198H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT198H1', 63, 20029, 'MAT198 20029 EXAM', 'exams/bulk/20029/mat198f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT234H1','MAT','MAT234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT234H1', 63, 20031, 'MAT234 20031 EXAM', 'exams/bulk/20031/mat234s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MAT234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT234H1','MAT','MAT234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT234H1', 63, 20041, 'MAT234 20041 EXAM', 'exams/bulk/20041/mat234s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT234H1','MAT','MAT234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT234H1', 63, 20051, 'MAT234 20051 EXAM', 'exams/bulk/20051/mat234s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MAT234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT234H1','MAT','MAT234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT234H1', 63, 20071, 'MAT234 20071 EXAM', 'exams/bulk/20071/mat234s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MAT290H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT290H1','MAT','MAT290H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT290H1', 63, 20019, 'MAT290 20019 EXAM', 'exams/bulk/20019/mat290f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT290H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT290H1','MAT','MAT290H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT290H1', 63, 20029, 'MAT290 20029 EXAM', 'exams/bulk/20029/mat290f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT291H1','MAT','MAT291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT291H1', 63, 20019, 'MAT291 20019 EXAM', 'exams/bulk/20019/mat291f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT291H1','MAT','MAT291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT291H1', 63, 20029, 'MAT291 20029 EXAM', 'exams/bulk/20029/mat291f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT291H1','MAT','MAT291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT291H1', 63, 20039, 'MAT291 20039 EXAM', 'exams/bulk/20039/mat291f_2003_exam.pdf');

select count(1) into courseCount from course where id ='MAT291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT291H1','MAT','MAT291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT291H1', 63, 20049, 'MAT291 20049 EXAM', 'exams/bulk/20049/mat291f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT291H1','MAT','MAT291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT291H1', 63, 20069, 'MAT291 20069 EXAM', 'exams/bulk/20069/mat291f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT291H1','MAT','MAT291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT291H1', 63, 20021, 'MAT291 20021 EXAM', 'exams/bulk/20021/mat291s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT292H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT292H1','MAT','MAT292H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT292H1', 63, 20069, 'MAT292 20069 EXAM', 'exams/bulk/20069/mat292f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT294H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT294H1','MAT','MAT294H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT294H1', 63, 20019, 'MAT294 20019 EXAM', 'exams/bulk/20019/mat294f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT294H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT294H1','MAT','MAT294H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT294H1', 63, 20029, 'MAT294 20029 EXAM', 'exams/bulk/20029/mat294f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT294H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT294H1','MAT','MAT294H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT294H1', 63, 20049, 'MAT294 20049 EXAM', 'exams/bulk/20049/mat294f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT294H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT294H1','MAT','MAT294H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT294H1', 63, 20069, 'MAT294 20069 EXAM', 'exams/bulk/20069/mat294f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT298H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT298H1','MAT','MAT298H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT298H1', 63, 20049, 'MAT298 20049 EXAM', 'exams/bulk/20049/mat298f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT298H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT298H1','MAT','MAT298H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT298H1', 63, 20069, 'MAT298 20069 EXAM', 'exams/bulk/20069/mat298f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 63, 20019, 'MAT389 20019 EXAM', 'exams/bulk/20019/mat389f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 63, 20029, 'MAT389 20029 EXAM', 'exams/bulk/20029/mat389f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 63, 20049, 'MAT389 20049 EXAM', 'exams/bulk/20049/mat389f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 63, 20069, 'MAT389 20069 EXAM', 'exams/bulk/20069/mat389f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 63, 20069, 'MAT389 20069 EXAM2', 'exams/bulk/20069/mat389f_2006_exam2.pdf');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20001, 'MIE100 20001 EXAM', 'exams/bulk/20001/MIE100S_2000_EXAM.pdf');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20011, 'MIE100 20011 EXAM', 'exams/bulk/20011/mie100s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20021, 'MIE100 20021 EXAM', 'exams/bulk/20021/mie100s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20031, 'MIE100 20031 EXAM', 'exams/bulk/20031/mie100s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20041, 'MIE100 20041 EXAM', 'exams/bulk/20041/mie100s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20051, 'MIE100 20051 EXAM', 'exams/bulk/20051/mie100s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE100H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE100H1','MIE','MIE100H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE100H1', 63, 20071, 'MIE100 20071 EXAM', 'exams/bulk/20071/mie100s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE165H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE165H1','MIE','MIE165H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE165H1', 63, 20011, 'MIE165 20011 EXAM', 'exams/bulk/20011/mie165s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE165H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE165H1','MIE','MIE165H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE165H1', 63, 20021, 'MIE165 20021 EXAM', 'exams/bulk/20021/mie165s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE165H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE165H1','MIE','MIE165H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE165H1', 63, 20031, 'MIE165 20031 EXAM', 'exams/bulk/20031/mie165s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE200H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE200H1','MIE','MIE200H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE200H1', 63, 20019, 'MIE200 20019 EXAM', 'exams/bulk/20019/mie200f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE200H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE200H1','MIE','MIE200H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE200H1', 63, 20029, 'MIE200 20029 EXAM', 'exams/bulk/20029/mie200f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE210H1','MIE','MIE210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE210H1', 63, 20051, 'MIE210 20051 EXAM', 'exams/bulk/20051/mie210s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE210H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE210H1','MIE','MIE210H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE210H1', 63, 20071, 'MIE210 20071 EXAM', 'exams/bulk/20071/mie210s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE221H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE221H1','MIE','MIE221H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE221H1', 63, 20071, 'MIE221 20071 EXAM', 'exams/bulk/20071/mie221s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE222H1','MIE','MIE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE222H1', 63, 20011, 'MIE222 20011 EXAM', 'exams/bulk/20011/mie222s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE222H1','MIE','MIE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE222H1', 63, 20021, 'MIE222 20021 EXAM', 'exams/bulk/20021/mie222s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE222H1','MIE','MIE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE222H1', 63, 20031, 'MIE222 20031 EXAM', 'exams/bulk/20031/mie222s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE222H1','MIE','MIE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE222H1', 63, 20041, 'MIE222 20041 EXAM', 'exams/bulk/20041/mie222s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE222H1','MIE','MIE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE222H1', 63, 20051, 'MIE222 20051 EXAM', 'exams/bulk/20051/mie222s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE222H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE222H1','MIE','MIE222H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE222H1', 63, 20071, 'MIE222 20071 EXAM', 'exams/bulk/20071/mie222s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE225H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE225H1','MIE','MIE225H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE225H1', 63, 20069, 'MIE225 20069 EXAM', 'exams/bulk/20069/mie225f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE230H1','MIE','MIE230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE230H1', 63, 20019, 'MIE230 20019 EXAM', 'exams/bulk/20019/mie230f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE230H1','MIE','MIE230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE230H1', 63, 20029, 'MIE230 20029 EXAM', 'exams/bulk/20029/mie230f_2002_exam.PDF');

select count(1) into courseCount from course where id ='MIE230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE230H1','MIE','MIE230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE230H1', 63, 20049, 'MIE230 20049 EXAM', 'exams/bulk/20049/mie230f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE230H1','MIE','MIE230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE230H1', 63, 20069, 'MIE230 20069 EXAM', 'exams/bulk/20069/mie230f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE231H1','MIE','MIE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE231H1', 63, 20019, 'MIE231 20019 EXAM', 'exams/bulk/20019/mie231f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE231H1','MIE','MIE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE231H1', 63, 20029, 'MIE231 20029 EXAM', 'exams/bulk/20029/mie231f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE231H1','MIE','MIE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE231H1', 63, 20049, 'MIE231 20049 EXAM', 'exams/bulk/20049/mie231f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE231H1','MIE','MIE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE231H1', 63, 20069, 'MIE231 20069 EXAM', 'exams/bulk/20069/mie231f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE232H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE232H1','MIE','MIE232H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE232H1', 63, 20011, 'MIE232 20011 EXAM', 'exams/bulk/20011/mie232s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE232H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE232H1','MIE','MIE232H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE232H1', 63, 20021, 'MIE232 20021 EXAM', 'exams/bulk/20021/mie232s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE233H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE233H1','MIE','MIE233H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE233H1', 63, 20011, 'MIE233 20011 EXAM', 'exams/bulk/20011/mie233s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE233H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE233H1','MIE','MIE233H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE233H1', 63, 20021, 'MIE233 20021 EXAM', 'exams/bulk/20021/mie233s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE233H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE233H1','MIE','MIE233H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE233H1', 63, 20031, 'MIE233 20031 EXAM', 'exams/bulk/20031/mie233s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE233H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE233H1','MIE','MIE233H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE233H1', 63, 20041, 'MIE233 20041 EXAM', 'exams/bulk/20041/mie233s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE235H1','MIE','MIE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE235H1', 63, 20049, 'MIE235 20049 EXAM', 'exams/bulk/20049/mie235f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE235H1','MIE','MIE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE235H1', 63, 20069, 'MIE235 20069 EXAM', 'exams/bulk/20069/mie235f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE235H1','MIE','MIE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE235H1', 63, 20011, 'MIE235 20011 EXAM', 'exams/bulk/20011/mie235s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE235H1','MIE','MIE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE235H1', 63, 20021, 'MIE235 20021 EXAM', 'exams/bulk/20021/mie235s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE235H1','MIE','MIE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE235H1', 63, 20031, 'MIE235 20031 EXAM', 'exams/bulk/20031/mie235s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE237H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE237H1','MIE','MIE237H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE237H1', 63, 20051, 'MIE237 20051 EXAM', 'exams/bulk/20051/mie237s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE237H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE237H1','MIE','MIE237H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE237H1', 63, 20071, 'MIE237 20071 EXAM', 'exams/bulk/20071/mie237s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE240H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE240H1','MIE','MIE240H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE240H1', 63, 20019, 'MIE240 20019 EXAM', 'exams/bulk/20019/mie240f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE240H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE240H1','MIE','MIE240H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE240H1', 63, 20029, 'MIE240 20029 EXAM', 'exams/bulk/20029/mie240f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE240H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE240H1','MIE','MIE240H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE240H1', 63, 20049, 'MIE240 20049 EXAM', 'exams/bulk/20049/mie240f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE240H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE240H1','MIE','MIE240H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE240H1', 63, 20069, 'MIE240 20069 EXAM', 'exams/bulk/20069/mie240f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE241H1','MIE','MIE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE241H1', 63, 20011, 'MIE241 20011 EXAM', 'exams/bulk/20011/mie241s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE241H1','MIE','MIE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE241H1', 63, 20021, 'MIE241 20021 EXAM', 'exams/bulk/20021/mie241s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE241H1','MIE','MIE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE241H1', 63, 20031, 'MIE241 20031 EXAM', 'exams/bulk/20031/mie241s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE241H1','MIE','MIE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE241H1', 63, 20041, 'MIE241 20041 EXAM', 'exams/bulk/20041/mie241s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE241H1','MIE','MIE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE241H1', 63, 20051, 'MIE241 20051 EXAM', 'exams/bulk/20051/mie241s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE253H1','MIE','MIE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE253H1', 63, 20051, 'MIE253 20051 EXAM', 'exams/bulk/20051/mie253s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE253H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE253H1','MIE','MIE253H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE253H1', 63, 20071, 'MIE253 20071 EXAM', 'exams/bulk/20071/mie253s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE258H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE258H1','MIE','MIE258H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE258H1', 63, 20049, 'MIE258 20049 EXAM', 'exams/bulk/20049/mie258f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE258H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE258H1','MIE','MIE258H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE258H1', 63, 20069, 'MIE258 20069 EXAM', 'exams/bulk/20069/mie258f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE262H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE262H1','MIE','MIE262H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE262H1', 63, 20011, 'MIE262 20011 EXAM', 'exams/bulk/20011/mie262s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE262H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE262H1','MIE','MIE262H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE262H1', 63, 20031, 'MIE262 20031 EXAM', 'exams/bulk/20031/mie262s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE262H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE262H1','MIE','MIE262H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE262H1', 63, 20041, 'MIE262 20041 EXAM', 'exams/bulk/20041/mie262s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE262H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE262H1','MIE','MIE262H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE262H1', 63, 20051, 'MIE262 20051 EXAM', 'exams/bulk/20051/mie262s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE262H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE262H1','MIE','MIE262H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE262H1', 63, 20071, 'MIE262 20071 EXAM', 'exams/bulk/20071/mie262s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE265H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE265H1','MIE','MIE265H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE265H1', 63, 20049, 'MIE265 20049 EXAM', 'exams/bulk/20049/mie265f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE265H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE265H1','MIE','MIE265H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE265H1', 63, 20069, 'MIE265 20069 EXAM', 'exams/bulk/20069/mie265f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE270H1','MIE','MIE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE270H1', 63, 20019, 'MIE270 20019 EXAM', 'exams/bulk/20019/mie270f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE270H1','MIE','MIE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE270H1', 63, 20029, 'MIE270 20029 EXAM', 'exams/bulk/20029/mie270f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE270H1','MIE','MIE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE270H1', 63, 20049, 'MIE270 20049 EXAM', 'exams/bulk/20049/mie270f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE301H1','MIE','MIE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE301H1', 63, 20019, 'MIE301 20019 EXAM', 'exams/bulk/20019/mie301f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE301H1','MIE','MIE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE301H1', 63, 20029, 'MIE301 20029 EXAM', 'exams/bulk/20029/mie301f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE301H1','MIE','MIE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE301H1', 63, 20049, 'MIE301 20049 EXAM', 'exams/bulk/20049/mie301f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE301H1','MIE','MIE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE301H1', 63, 20069, 'MIE301 20069 EXAM', 'exams/bulk/20069/mie301f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 19981, 'MIE302 19981 EXAM', 'exams/bulk/19981/mie302s_1998_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 20001, 'MIE302 20001 EXAM', 'exams/bulk/20001/mie302s_2000_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 20021, 'MIE302 20021 EXAM', 'exams/bulk/20021/mie302s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 20031, 'MIE302 20031 EXAM', 'exams/bulk/20031/mie302s_2003_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 20041, 'MIE302 20041 EXAM', 'exams/bulk/20041/mie302s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 20051, 'MIE302 20051 EXAM', 'exams/bulk/20051/mie302s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE302H1','MIE','MIE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE302H1', 63, 20071, 'MIE302 20071 EXAM', 'exams/bulk/20071/mie302s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE310H1','MIE','MIE310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE310H1', 63, 20019, 'MIE310 20019 EXAM', 'exams/bulk/20019/mie310f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE310H1','MIE','MIE310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE310H1', 63, 20029, 'MIE310 20029 EXAM', 'exams/bulk/20029/mie310f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE310H1','MIE','MIE310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE310H1', 63, 20049, 'MIE310 20049 EXAM', 'exams/bulk/20049/mie310f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE311H1','MIE','MIE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE311H1', 63, 20011, 'MIE311 20011 EXAM', 'exams/bulk/20011/mie311s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE311H1','MIE','MIE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE311H1', 63, 20021, 'MIE311 20021 EXAM', 'exams/bulk/20021/mie311s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE311H1','MIE','MIE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE311H1', 63, 20031, 'MIE311 20031 EXAM', 'exams/bulk/20031/mie311s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE311H1','MIE','MIE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE311H1', 63, 20041, 'MIE311 20041 EXAM', 'exams/bulk/20041/mie311s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE311H1','MIE','MIE311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE311H1', 63, 20051, 'MIE311 20051 EXAM', 'exams/bulk/20051/mie311s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE312H1','MIE','MIE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE312H1', 63, 20019, 'MIE312 20019 EXAM', 'exams/bulk/20019/mie312f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE312H1','MIE','MIE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE312H1', 63, 20029, 'MIE312 20029 EXAM', 'exams/bulk/20029/mie312f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE312H1','MIE','MIE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE312H1', 63, 20049, 'MIE312 20049 EXAM', 'exams/bulk/20049/mie312f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE312H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE312H1','MIE','MIE312H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE312H1', 63, 20069, 'MIE312 20069 EXAM', 'exams/bulk/20069/mie312f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 63, 20011, 'MIE313 20011 EXAM', 'exams/bulk/20011/mie313s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 63, 20021, 'MIE313 20021 EXAM', 'exams/bulk/20021/mie313s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 63, 20031, 'MIE313 20031 EXAM', 'exams/bulk/20031/mie313s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 63, 20041, 'MIE313 20041 EXAM', 'exams/bulk/20041/mie313s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 63, 20051, 'MIE313 20051 EXAM', 'exams/bulk/20051/mie313s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 63, 20071, 'MIE313 20071 EXAM', 'exams/bulk/20071/mie313s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE320H1','MIE','MIE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE320H1', 63, 20011, 'MIE320 20011 EXAM', 'exams/bulk/20011/mie320s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE320H1','MIE','MIE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE320H1', 63, 20021, 'MIE320 20021 EXAM', 'exams/bulk/20021/mie320s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE320H1','MIE','MIE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE320H1', 63, 20031, 'MIE320 20031 EXAM', 'exams/bulk/20031/mie320s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE320H1','MIE','MIE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE320H1', 63, 20041, 'MIE320 20041 EXAM', 'exams/bulk/20041/mie320s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE320H1','MIE','MIE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE320H1', 63, 20051, 'MIE320 20051 EXAM', 'exams/bulk/20051/mie320s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE320H1','MIE','MIE320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE320H1', 63, 20071, 'MIE320 20071 EXAM', 'exams/bulk/20071/mie320s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 63, 20011, 'MIE321 20011 EXAM', 'exams/bulk/20011/mie321s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 63, 20021, 'MIE321 20021 EXAM', 'exams/bulk/20021/mie321s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 63, 20031, 'MIE321 20031 EXAM', 'exams/bulk/20031/mie321s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 63, 20041, 'MIE321 20041 EXAM', 'exams/bulk/20041/mie321s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 63, 20051, 'MIE321 20051 EXAM', 'exams/bulk/20051/mie321s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 63, 20071, 'MIE321 20071 EXAM', 'exams/bulk/20071/mie321s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE333H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE333H1','MIE','MIE333H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE333H1', 63, 20069, 'MIE333 20069 EXAM', 'exams/bulk/20069/mie333f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE337H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE337H1','MIE','MIE337H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE337H1', 63, 20019, 'MIE337 20019 EXAM', 'exams/bulk/20019/mie337f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE337H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE337H1','MIE','MIE337H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE337H1', 63, 20029, 'MIE337 20029 EXAM', 'exams/bulk/20029/mie337f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE337H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE337H1','MIE','MIE337H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE337H1', 63, 20049, 'MIE337 20049 EXAM', 'exams/bulk/20049/mie337f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE342H1','MIE','MIE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE342H1', 63, 20029, 'MIE342 20029 EXAM', 'exams/bulk/20029/mie342f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE342H1','MIE','MIE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE342H1', 63, 20049, 'MIE342 20049 EXAM', 'exams/bulk/20049/mie342f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE342H1','MIE','MIE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE342H1', 63, 20069, 'MIE342 20069 EXAM', 'exams/bulk/20069/mie342f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE343H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE343H1','MIE','MIE343H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE343H1', 63, 20019, 'MIE343 20019 EXAM', 'exams/bulk/20019/mie343f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE343H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE343H1','MIE','MIE343H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE343H1', 63, 20029, 'MIE343 20029 EXAM', 'exams/bulk/20029/mie343f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE343H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE343H1','MIE','MIE343H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE343H1', 63, 20049, 'MIE343 20049 EXAM', 'exams/bulk/20049/mie343f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE343H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE343H1','MIE','MIE343H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE343H1', 63, 20069, 'MIE343 20069 EXAM', 'exams/bulk/20069/mie343f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE344H1','MIE','MIE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE344H1', 63, 20011, 'MIE344 20011 EXAM', 'exams/bulk/20011/mie344s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE344H1','MIE','MIE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE344H1', 63, 20021, 'MIE344 20021 EXAM', 'exams/bulk/20021/mie344s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE344H1','MIE','MIE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE344H1', 63, 20031, 'MIE344 20031 EXAM', 'exams/bulk/20031/mie344s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE344H1','MIE','MIE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE344H1', 63, 20041, 'MIE344 20041 EXAM', 'exams/bulk/20041/mie344s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE344H1','MIE','MIE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE344H1', 63, 20051, 'MIE344 20051 EXAM', 'exams/bulk/20051/mie344s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE344H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE344H1','MIE','MIE344H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE344H1', 63, 20071, 'MIE344 20071 EXAM', 'exams/bulk/20071/mie344s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE345H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE345H1','MIE','MIE345H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE345H1', 63, 20069, 'MIE345 20069 EXAM', 'exams/bulk/20069/mie345f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE346H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE346H1','MIE','MIE346H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE346H1', 63, 20011, 'MIE346 20011 EXAM', 'exams/bulk/20011/mie346s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE346H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE346H1','MIE','MIE346H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE346H1', 63, 20021, 'MIE346 20021 EXAM', 'exams/bulk/20021/mie346s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE346H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE346H1','MIE','MIE346H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE346H1', 63, 20031, 'MIE346 20031 EXAM', 'exams/bulk/20031/mie346s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE346H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE346H1','MIE','MIE346H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE346H1', 63, 20041, 'MIE346 20041 EXAM', 'exams/bulk/20041/mie346s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE346H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE346H1','MIE','MIE346H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE346H1', 63, 20051, 'MIE346 20051 EXAM', 'exams/bulk/20051/mie346s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE346H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE346H1','MIE','MIE346H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE346H1', 63, 20071, 'MIE346 20071 EXAM', 'exams/bulk/20071/mie346s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE347H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE347H1','MIE','MIE347H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE347H1', 63, 20011, 'MIE347 20011 EXAM', 'exams/bulk/20011/mie347s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE347H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE347H1','MIE','MIE347H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE347H1', 63, 20021, 'MIE347 20021 EXAM', 'exams/bulk/20021/mie347s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE347H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE347H1','MIE','MIE347H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE347H1', 63, 20031, 'MIE347 20031 EXAM', 'exams/bulk/20031/mie347s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE347H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE347H1','MIE','MIE347H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE347H1', 63, 20041, 'MIE347 20041 EXAM', 'exams/bulk/20041/mie347s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE347H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE347H1','MIE','MIE347H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE347H1', 63, 20051, 'MIE347 20051 EXAM', 'exams/bulk/20051/mie347s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE347H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE347H1','MIE','MIE347H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE347H1', 63, 20071, 'MIE347 20071 EXAM', 'exams/bulk/20071/mie347s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE350H1','MIE','MIE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE350H1', 63, 20019, 'MIE350 20019 EXAM', 'exams/bulk/20019/mie350f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE350H1','MIE','MIE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE350H1', 63, 20029, 'MIE350 20029 EXAM', 'exams/bulk/20029/mie350f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE350H1','MIE','MIE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE350H1', 63, 20049, 'MIE350 20049 EXAM', 'exams/bulk/20049/mie350f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE350H1','MIE','MIE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE350H1', 63, 20069, 'MIE350 20069 EXAM', 'exams/bulk/20069/mie350f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE353H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE353H1','MIE','MIE353H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE353H1', 63, 20011, 'MIE353 20011 EXAM', 'exams/bulk/20011/mie353s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE353H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE353H1','MIE','MIE353H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE353H1', 63, 20031, 'MIE353 20031 EXAM', 'exams/bulk/20031/mie353s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE353H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE353H1','MIE','MIE353H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE353H1', 63, 20041, 'MIE353 20041 EXAM', 'exams/bulk/20041/mie353s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE353H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE353H1','MIE','MIE353H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE353H1', 63, 20051, 'MIE353 20051 EXAM', 'exams/bulk/20051/mie353s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE354H1','MIE','MIE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE354H1', 63, 20069, 'MIE354 20069 EXAM', 'exams/bulk/20069/mie354f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE354H1','MIE','MIE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE354H1', 63, 20041, 'MIE354 20041 EXAM', 'exams/bulk/20041/mie354s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE354H1','MIE','MIE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE354H1', 63, 20051, 'MIE354 20051 EXAM', 'exams/bulk/20051/mie354s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE355H1','MIE','MIE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE355H1', 63, 20049, 'MIE355 20049 EXAM', 'exams/bulk/20049/mie355f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE355H1','MIE','MIE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE355H1', 63, 20031, 'MIE355 20031 EXAM', 'exams/bulk/20031/mie355s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE355H1','MIE','MIE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE355H1', 63, 20071, 'MIE355 20071 EXAM', 'exams/bulk/20071/mie355s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE358H1','MIE','MIE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE358H1', 63, 20019, 'MIE358 20019 EXAM', 'exams/bulk/20019/mie358f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE358H1','MIE','MIE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE358H1', 63, 20029, 'MIE358 20029 EXAM', 'exams/bulk/20029/mie358f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE358H1','MIE','MIE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE358H1', 63, 20049, 'MIE358 20049 EXAM', 'exams/bulk/20049/mie358f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE359H1','MIE','MIE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE359H1', 63, 20011, 'MIE359 20011 EXAM', 'exams/bulk/20011/mie359s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE359H1','MIE','MIE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE359H1', 63, 20021, 'MIE359 20021 EXAM', 'exams/bulk/20021/mie359s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE359H1','MIE','MIE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE359H1', 63, 20031, 'MIE359 20031 EXAM', 'exams/bulk/20031/mie359s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE359H1','MIE','MIE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE359H1', 63, 20041, 'MIE359 20041 EXAM', 'exams/bulk/20041/mie359s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE359H1','MIE','MIE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE359H1', 63, 20051, 'MIE359 20051 EXAM', 'exams/bulk/20051/mie359s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE359H1','MIE','MIE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE359H1', 63, 20071, 'MIE359 20071 EXAM', 'exams/bulk/20071/mie359s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE360H1','MIE','MIE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE360H1', 63, 20019, 'MIE360 20019 EXAM', 'exams/bulk/20019/mie360f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE360H1','MIE','MIE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE360H1', 63, 20029, 'MIE360 20029 EXAM', 'exams/bulk/20029/mie360f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE360H1','MIE','MIE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE360H1', 63, 20069, 'MIE360 20069 EXAM', 'exams/bulk/20069/mie360f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE360H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE360H1','MIE','MIE360H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE360H1', 63, 20051, 'MIE360 20051 EXAM', 'exams/bulk/20051/mie360s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE363H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE363H1','MIE','MIE363H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE363H1', 63, 20011, 'MIE363 20011 EXAM', 'exams/bulk/20011/mie363s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE363H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE363H1','MIE','MIE363H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE363H1', 63, 20021, 'MIE363 20021 EXAM', 'exams/bulk/20021/mie363s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE363H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE363H1','MIE','MIE363H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE363H1', 63, 20031, 'MIE363 20031 EXAM', 'exams/bulk/20031/mie363s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE363H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE363H1','MIE','MIE363H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE363H1', 63, 20041, 'MIE363 20041 EXAM', 'exams/bulk/20041/mie363s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE363H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE363H1','MIE','MIE363H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE363H1', 63, 20051, 'MIE363 20051 EXAM', 'exams/bulk/20051/mie363s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE363H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE363H1','MIE','MIE363H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE363H1', 63, 20071, 'MIE363 20071 EXAM', 'exams/bulk/20071/mie363s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE364H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE364H1','MIE','MIE364H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE364H1', 63, 20011, 'MIE364 20011 EXAM', 'exams/bulk/20011/mie364s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE364H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE364H1','MIE','MIE364H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE364H1', 63, 20021, 'MIE364 20021 EXAM', 'exams/bulk/20021/mie364s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE364H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE364H1','MIE','MIE364H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE364H1', 63, 20031, 'MIE364 20031 EXAM', 'exams/bulk/20031/mie364s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE364H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE364H1','MIE','MIE364H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE364H1', 63, 20041, 'MIE364 20041 EXAM', 'exams/bulk/20041/mie364s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE364H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE364H1','MIE','MIE364H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE364H1', 63, 20051, 'MIE364 20051 EXAM', 'exams/bulk/20051/mie364s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE364H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE364H1','MIE','MIE364H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE364H1', 63, 20071, 'MIE364 20071 EXAM', 'exams/bulk/20071/mie364s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE365H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE365H1','MIE','MIE365H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE365H1', 63, 20069, 'MIE365 20069 EXAM', 'exams/bulk/20069/mie365f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE365H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE365H1','MIE','MIE365H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE365H1', 63, 20011, 'MIE365 20011 EXAM', 'exams/bulk/20011/mie365s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE365H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE365H1','MIE','MIE365H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE365H1', 63, 20021, 'MIE365 20021 EXAM', 'exams/bulk/20021/mie365s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE365H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE365H1','MIE','MIE365H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE365H1', 63, 20031, 'MIE365 20031 EXAM', 'exams/bulk/20031/mie365s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE365H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE365H1','MIE','MIE365H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE365H1', 63, 20041, 'MIE365 20041 EXAM', 'exams/bulk/20041/mie365s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE365H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE365H1','MIE','MIE365H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE365H1', 63, 20051, 'MIE365 20051 EXAM', 'exams/bulk/20051/mie365s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE372H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE372H1','MIE','MIE372H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE372H1', 63, 20009, 'MIE372 20009 EXAM', 'exams/bulk/20009/mie372f_2000_exam.pdf');

select count(1) into courseCount from course where id ='MIE372H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE372H1','MIE','MIE372H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE372H1', 63, 20019, 'MIE372 20019 EXAM', 'exams/bulk/20019/mie372f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE372H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE372H1','MIE','MIE372H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE372H1', 63, 20029, 'MIE372 20029 EXAM', 'exams/bulk/20029/mie372f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE372H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE372H1','MIE','MIE372H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE372H1', 63, 20049, 'MIE372 20049 EXAM', 'exams/bulk/20049/mie372f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE373H1','MIE','MIE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE373H1', 63, 20011, 'MIE373 20011 EXAM', 'exams/bulk/20011/mie373s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE373H1','MIE','MIE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE373H1', 63, 20021, 'MIE373 20021 EXAM', 'exams/bulk/20021/mie373s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE373H1','MIE','MIE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE373H1', 63, 20031, 'MIE373 20031 EXAM', 'exams/bulk/20031/mie373s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE373H1','MIE','MIE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE373H1', 63, 20041, 'MIE373 20041 EXAM', 'exams/bulk/20041/mie373s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE373H1','MIE','MIE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE373H1', 63, 20051, 'MIE373 20051 EXAM', 'exams/bulk/20051/mie373s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 19971, 'MIE374 19971 EXAM', 'exams/bulk/19971/mie374s_1997_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 19981, 'MIE374 19981 EXAM', 'exams/bulk/19981/mie374s_1998_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 19991, 'MIE374 19991 EXAM', 'exams/bulk/19991/mie374s_1999_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 20011, 'MIE374 20011 EXAM', 'exams/bulk/20011/mie374s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 20021, 'MIE374 20021 EXAM', 'exams/bulk/20021/mie374s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 20031, 'MIE374 20031 EXAM', 'exams/bulk/20031/mie374s_2003_exam.PDF');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 20041, 'MIE374 20041 EXAM', 'exams/bulk/20041/mie374s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 20051, 'MIE374 20051 EXAM', 'exams/bulk/20051/mie374s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 63, 20071, 'MIE374 20071 EXAM', 'exams/bulk/20071/mie374s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE404H1','MIE','MIE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE404H1', 63, 20019, 'MIE404 20019 EXAM', 'exams/bulk/20019/mie404f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE404H1','MIE','MIE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE404H1', 63, 20029, 'MIE404 20029 EXAM', 'exams/bulk/20029/mie404f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE404H1','MIE','MIE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE404H1', 63, 20049, 'MIE404 20049 EXAM', 'exams/bulk/20049/mie404f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE404H1','MIE','MIE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE404H1', 63, 20069, 'MIE404 20069 EXAM', 'exams/bulk/20069/mie404f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE405H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE405H1','MIE','MIE405H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE405H1', 63, 20011, 'MIE405 20011 EXAM', 'exams/bulk/20011/mie405s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE405H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE405H1','MIE','MIE405H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE405H1', 63, 20021, 'MIE405 20021 EXAM', 'exams/bulk/20021/mie405s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE411H1','MIE','MIE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE411H1', 63, 20069, 'MIE411 20069 EXAM', 'exams/bulk/20069/mie411f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE414H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE414H1','MIE','MIE414H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE414H1', 63, 20019, 'MIE414 20019 EXAM', 'exams/bulk/20019/mie414f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE414H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE414H1','MIE','MIE414H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE414H1', 63, 20029, 'MIE414 20029 EXAM', 'exams/bulk/20029/mie414f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE414H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE414H1','MIE','MIE414H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE414H1', 63, 20049, 'MIE414 20049 EXAM', 'exams/bulk/20049/mie414f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE414H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE414H1','MIE','MIE414H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE414H1', 63, 20069, 'MIE414 20069 EXAM', 'exams/bulk/20069/mie414f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE415H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE415H1','MIE','MIE415H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE415H1', 63, 20011, 'MIE415 20011 EXAM', 'exams/bulk/20011/mie415s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE415H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE415H1','MIE','MIE415H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE415H1', 63, 20021, 'MIE415 20021 EXAM', 'exams/bulk/20021/mie415s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE415H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE415H1','MIE','MIE415H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE415H1', 63, 20041, 'MIE415 20041 EXAM', 'exams/bulk/20041/mie415s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE415H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE415H1','MIE','MIE415H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE415H1', 63, 20051, 'MIE415 20051 EXAM', 'exams/bulk/20051/mie415s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE418H1','MIE','MIE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE418H1', 63, 20011, 'MIE418 20011 EXAM', 'exams/bulk/20011/mie418s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE418H1','MIE','MIE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE418H1', 63, 20021, 'MIE418 20021 EXAM', 'exams/bulk/20021/mie418s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE418H1','MIE','MIE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE418H1', 63, 20041, 'MIE418 20041 EXAM', 'exams/bulk/20041/mie418s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE418H1','MIE','MIE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE418H1', 63, 20051, 'MIE418 20051 EXAM', 'exams/bulk/20051/mie418s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE418H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE418H1','MIE','MIE418H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE418H1', 63, 20071, 'MIE418 20071 EXAM', 'exams/bulk/20071/mie418s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE422H1','MIE','MIE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE422H1', 63, 20011, 'MIE422 20011 EXAM', 'exams/bulk/20011/mie422s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE422H1','MIE','MIE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE422H1', 63, 20021, 'MIE422 20021 EXAM', 'exams/bulk/20021/mie422s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE422H1','MIE','MIE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE422H1', 63, 20041, 'MIE422 20041 EXAM', 'exams/bulk/20041/mie422s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE422H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE422H1','MIE','MIE422H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE422H1', 63, 20051, 'MIE422 20051 EXAM', 'exams/bulk/20051/mie422s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE438H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE438H1','MIE','MIE438H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE438H1', 63, 20011, 'MIE438 20011 EXAM', 'exams/bulk/20011/mie438s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE438H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE438H1','MIE','MIE438H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE438H1', 63, 20021, 'MIE438 20021 EXAM', 'exams/bulk/20021/mie438s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE438H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE438H1','MIE','MIE438H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE438H1', 63, 20071, 'MIE438 20071 EXAM', 'exams/bulk/20071/mie438s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE439H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE439H1','MIE','MIE439H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE439H1', 63, 20011, 'MIE439 20011 EXAM', 'exams/bulk/20011/mie439s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE439H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE439H1','MIE','MIE439H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE439H1', 63, 20021, 'MIE439 20021 EXAM', 'exams/bulk/20021/mie439s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE439H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE439H1','MIE','MIE439H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE439H1', 63, 20041, 'MIE439 20041 EXAM', 'exams/bulk/20041/mie439s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE439H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE439H1','MIE','MIE439H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE439H1', 63, 20051, 'MIE439 20051 EXAM', 'exams/bulk/20051/mie439s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE439H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE439H1','MIE','MIE439H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE439H1', 63, 20071, 'MIE439 20071 EXAM', 'exams/bulk/20071/mie439s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE440H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE440H1','MIE','MIE440H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE440H1', 63, 20019, 'MIE440 20019 EXAM', 'exams/bulk/20019/mie440f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE440H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE440H1','MIE','MIE440H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE440H1', 63, 20049, 'MIE440 20049 EXAM', 'exams/bulk/20049/mie440f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE440H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE440H1','MIE','MIE440H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE440H1', 63, 20069, 'MIE440 20069 EXAM', 'exams/bulk/20069/mie440f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE440H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE440H1','MIE','MIE440H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE440H1', 63, 20041, 'MIE440 20041 EXAM', 'exams/bulk/20041/mie440s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE441H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE441H1','MIE','MIE441H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE441H1', 63, 20029, 'MIE441 20029 EXAM', 'exams/bulk/20029/mie441f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE441H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE441H1','MIE','MIE441H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE441H1', 63, 20011, 'MIE441 20011 EXAM', 'exams/bulk/20011/mie441s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE441H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE441H1','MIE','MIE441H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE441H1', 63, 20021, 'MIE441 20021 EXAM', 'exams/bulk/20021/mie441s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE441H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE441H1','MIE','MIE441H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE441H1', 63, 20041, 'MIE441 20041 EXAM', 'exams/bulk/20041/mie441s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE441H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE441H1','MIE','MIE441H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE441H1', 63, 20051, 'MIE441 20051 EXAM', 'exams/bulk/20051/mie441s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE441H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE441H1','MIE','MIE441H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE441H1', 63, 20071, 'MIE441 20071 EXAM', 'exams/bulk/20071/mie441s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE442H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE442H1','MIE','MIE442H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE442H1', 63, 20011, 'MIE442 20011 EXAM', 'exams/bulk/20011/mie442s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE442H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE442H1','MIE','MIE442H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE442H1', 63, 20021, 'MIE442 20021 EXAM', 'exams/bulk/20021/mie442s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE442H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE442H1','MIE','MIE442H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE442H1', 63, 20041, 'MIE442 20041 EXAM', 'exams/bulk/20041/mie442s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE442H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE442H1','MIE','MIE442H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE442H1', 63, 20051, 'MIE442 20051 EXAM', 'exams/bulk/20051/mie442s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE442H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE442H1','MIE','MIE442H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE442H1', 63, 20071, 'MIE442 20071 EXAM', 'exams/bulk/20071/mie442s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE444H1','MIE','MIE444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE444H1', 63, 20019, 'MIE444 20019 EXAM', 'exams/bulk/20019/mie444f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE444H1','MIE','MIE444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE444H1', 63, 20029, 'MIE444 20029 EXAM', 'exams/bulk/20029/mie444f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE444H1','MIE','MIE444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE444H1', 63, 20049, 'MIE444 20049 EXAM', 'exams/bulk/20049/mie444f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE444H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE444H1','MIE','MIE444H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE444H1', 63, 20069, 'MIE444 20069 EXAM', 'exams/bulk/20069/mie444f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE445H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE445H1','MIE','MIE445H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE445H1', 63, 20011, 'MIE445 20011 EXAM', 'exams/bulk/20011/mie445s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE448H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE448H1','MIE','MIE448H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE448H1', 63, 20019, 'MIE448 20019 EXAM', 'exams/bulk/20019/mie448f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE448H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE448H1','MIE','MIE448H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE448H1', 63, 20029, 'MIE448 20029 EXAM', 'exams/bulk/20029/mie448f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE448H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE448H1','MIE','MIE448H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE448H1', 63, 20049, 'MIE448 20049 EXAM', 'exams/bulk/20049/mie448f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE448H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE448H1','MIE','MIE448H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE448H1', 63, 20069, 'MIE448 20069 EXAM', 'exams/bulk/20069/mie448f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE449H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE449H1','MIE','MIE449H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE449H1', 63, 20011, 'MIE449 20011 EXAM', 'exams/bulk/20011/mie449s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE449H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE449H1','MIE','MIE449H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE449H1', 63, 20021, 'MIE449 20021 EXAM', 'exams/bulk/20021/mie449s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE449H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE449H1','MIE','MIE449H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE449H1', 63, 20041, 'MIE449 20041 EXAM', 'exams/bulk/20041/mie449s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE451H1','MIE','MIE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE451H1', 63, 20029, 'MIE451 20029 EXAM', 'exams/bulk/20029/mie451f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE451H1','MIE','MIE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE451H1', 63, 20049, 'MIE451 20049 EXAM', 'exams/bulk/20049/mie451f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE451H1','MIE','MIE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE451H1', 63, 20021, 'MIE451 20021 EXAM', 'exams/bulk/20021/mie451s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE451H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE451H1','MIE','MIE451H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE451H1', 63, 20071, 'MIE451 20071 EXAM', 'exams/bulk/20071/mie451s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE452H1','MIE','MIE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE452H1', 63, 20011, 'MIE452 20011 EXAM', 'exams/bulk/20011/mie452s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE452H1','MIE','MIE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE452H1', 63, 20021, 'MIE452 20021 EXAM', 'exams/bulk/20021/mie452s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE453H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE453H1','MIE','MIE453H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE453H1', 63, 20071, 'MIE453 20071 EXAM', 'exams/bulk/20071/mie453s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE456H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE456H1','MIE','MIE456H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE456H1', 63, 20049, 'MIE456 20049 EXAM', 'exams/bulk/20049/mie456f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE457H1','MIE','MIE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE457H1', 63, 20029, 'MIE457 20029 EXAM', 'exams/bulk/20029/mie457f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE457H1','MIE','MIE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE457H1', 63, 20049, 'MIE457 20049 EXAM', 'exams/bulk/20049/mie457f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE457H1','MIE','MIE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE457H1', 63, 20071, 'MIE457 20071 EXAM', 'exams/bulk/20071/mie457s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE460H1','MIE','MIE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE460H1', 63, 20011, 'MIE460 20011 EXAM', 'exams/bulk/20011/mie460s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE460H1','MIE','MIE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE460H1', 63, 20021, 'MIE460 20021 EXAM', 'exams/bulk/20021/mie460s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE460H1','MIE','MIE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE460H1', 63, 20041, 'MIE460 20041 EXAM', 'exams/bulk/20041/mie460s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE460H1','MIE','MIE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE460H1', 63, 20051, 'MIE460 20051 EXAM', 'exams/bulk/20051/mie460s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE460H1','MIE','MIE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE460H1', 63, 20071, 'MIE460 20071 EXAM', 'exams/bulk/20071/mie460s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE463H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE463H1','MIE','MIE463H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE463H1', 63, 20071, 'MIE463 20071 EXAM', 'exams/bulk/20071/mie463s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE467H1','MIE','MIE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE467H1', 63, 20019, 'MIE467 20019 EXAM', 'exams/bulk/20019/mie467f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE467H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE467H1','MIE','MIE467H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE467H1', 63, 20049, 'MIE467 20049 EXAM', 'exams/bulk/20049/mie467f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE468H1','MIE','MIE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE468H1', 63, 20029, 'MIE468 20029 EXAM', 'exams/bulk/20029/mie468f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE468H1','MIE','MIE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE468H1', 63, 20011, 'MIE468 20011 EXAM', 'exams/bulk/20011/mie468s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE468H1','MIE','MIE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE468H1', 63, 20021, 'MIE468 20021 EXAM', 'exams/bulk/20021/mie468s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE468H1','MIE','MIE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE468H1', 63, 20051, 'MIE468 20051 EXAM', 'exams/bulk/20051/mie468s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE468H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE468H1','MIE','MIE468H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE468H1', 63, 20071, 'MIE468 20071 EXAM', 'exams/bulk/20071/mie468s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE469H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE469H1','MIE','MIE469H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE469H1', 63, 20011, 'MIE469 20011 EXAM', 'exams/bulk/20011/mie469s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE469H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE469H1','MIE','MIE469H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE469H1', 63, 20021, 'MIE469 20021 EXAM', 'exams/bulk/20021/mie469s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE469H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE469H1','MIE','MIE469H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE469H1', 63, 20041, 'MIE469 20041 EXAM', 'exams/bulk/20041/mie469s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE469H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE469H1','MIE','MIE469H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE469H1', 63, 20051, 'MIE469 20051 EXAM', 'exams/bulk/20051/mie469s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE469H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE469H1','MIE','MIE469H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE469H1', 63, 20071, 'MIE469 20071 EXAM', 'exams/bulk/20071/mie469s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE475H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE475H1','MIE','MIE475H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE475H1', 63, 20011, 'MIE475 20011 EXAM', 'exams/bulk/20011/mie475s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE475H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE475H1','MIE','MIE475H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE475H1', 63, 20021, 'MIE475 20021 EXAM', 'exams/bulk/20021/mie475s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE488H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE488H1','MIE','MIE488H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE488H1', 63, 20071, 'MIE488 20071 EXAM', 'exams/bulk/20071/mie488s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE512H1','MIE','MIE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE512H1', 63, 20019, 'MIE512 20019 EXAM', 'exams/bulk/20019/mie512f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE512H1','MIE','MIE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE512H1', 63, 20049, 'MIE512 20049 EXAM', 'exams/bulk/20049/mie512f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE512H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE512H1','MIE','MIE512H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE512H1', 63, 20071, 'MIE512 20071 EXAM', 'exams/bulk/20071/mie512s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE514H1','MIE','MIE514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE514H1', 63, 20011, 'MIE514 20011 EXAM', 'exams/bulk/20011/mie514s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE514H1','MIE','MIE514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE514H1', 63, 20021, 'MIE514 20021 EXAM', 'exams/bulk/20021/mie514s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE514H1','MIE','MIE514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE514H1', 63, 20041, 'MIE514 20041 EXAM', 'exams/bulk/20041/mie514s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE514H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE514H1','MIE','MIE514H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE514H1', 63, 20051, 'MIE514 20051 EXAM', 'exams/bulk/20051/mie514s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE515H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE515H1','MIE','MIE515H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE515H1', 63, 20069, 'MIE515 20069 EXAM', 'exams/bulk/20069/mie515f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE515H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE515H1','MIE','MIE515H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE515H1', 63, 20021, 'MIE515 20021 EXAM', 'exams/bulk/20021/mie515s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE515H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE515H1','MIE','MIE515H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE515H1', 63, 20051, 'MIE515 20051 EXAM', 'exams/bulk/20051/mie515s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE540H1','MIE','MIE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE540H1', 63, 20011, 'MIE540 20011 EXAM', 'exams/bulk/20011/mie540s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE540H1','MIE','MIE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE540H1', 63, 20021, 'MIE540 20021 EXAM', 'exams/bulk/20021/mie540s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE540H1','MIE','MIE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE540H1', 63, 20051, 'MIE540 20051 EXAM', 'exams/bulk/20051/mie540s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE540H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE540H1','MIE','MIE540H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE540H1', 63, 20071, 'MIE540 20071 EXAM', 'exams/bulk/20071/mie540s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE556H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE556H1','MIE','MIE556H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE556H1', 63, 20019, 'MIE556 20019 EXAM', 'exams/bulk/20019/mie556f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE561H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE561H1','MIE','MIE561H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE561H1', 63, 20011, 'MIE561 20011 EXAM', 'exams/bulk/20011/mie561s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE561H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE561H1','MIE','MIE561H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE561H1', 63, 20021, 'MIE561 20021 EXAM', 'exams/bulk/20021/mie561s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE561H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE561H1','MIE','MIE561H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE561H1', 63, 20041, 'MIE561 20041 EXAM', 'exams/bulk/20041/mie561s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE561H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE561H1','MIE','MIE561H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE561H1', 63, 20051, 'MIE561 20051 EXAM', 'exams/bulk/20051/mie561s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIE561H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE561H1','MIE','MIE561H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE561H1', 63, 20071, 'MIE561 20071 EXAM', 'exams/bulk/20071/mie561s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIE562H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE562H1','MIE','MIE562H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE562H1', 63, 20019, 'MIE562 20019 EXAM', 'exams/bulk/20019/mie562f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIE562H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE562H1','MIE','MIE562H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE562H1', 63, 20049, 'MIE562 20049 EXAM', 'exams/bulk/20049/mie562f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE562H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE562H1','MIE','MIE562H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE562H1', 63, 20069, 'MIE562 20069 EXAM', 'exams/bulk/20069/mie562f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 19979, 'MIE566 19979 EXAM', 'exams/bulk/19979/mie566f_1997_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 19989, 'MIE566 19989 EXAM', 'exams/bulk/19989/mie566f_1998_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 19999, 'MIE566 19999 EXAM', 'exams/bulk/19999/mie566f_1999_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 20029, 'MIE566 20029 EXAM', 'exams/bulk/20029/mie566f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 20039, 'MIE566 20039 EXAM', 'exams/bulk/20039/mie566f_2003_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 20049, 'MIE566 20049 EXAM', 'exams/bulk/20049/mie566f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 63, 20069, 'MIE566 20069 EXAM', 'exams/bulk/20069/mie566f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIN185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN185H1','MIN','MIN185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN185H1', 63, 20041, 'MIN185 20041 EXAM', 'exams/bulk/20041/min185s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN185H1','MIN','MIN185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN185H1', 63, 20051, 'MIN185 20051 EXAM', 'exams/bulk/20051/min185s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIN185H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN185H1','MIN','MIN185H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN185H1', 63, 20071, 'MIN185 20071 EXAM', 'exams/bulk/20071/min185s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIN225H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN225H1','MIN','MIN225H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN225H1', 63, 20049, 'MIN225 20049 EXAM', 'exams/bulk/20049/min225f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN310H1','MIN','MIN310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN310H1', 63, 20011, 'MIN310 20011 EXAM', 'exams/bulk/20011/min310s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN310H1','MIN','MIN310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN310H1', 63, 20021, 'MIN310 20021 EXAM', 'exams/bulk/20021/min310s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN311H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN311H1','MIN','MIN311H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN311H1', 63, 20051, 'MIN311 20051 EXAM', 'exams/bulk/20051/min311s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIN320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN320H1','MIN','MIN320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN320H1', 63, 20021, 'MIN320 20021 EXAM', 'exams/bulk/20021/min320s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN320H1','MIN','MIN320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN320H1', 63, 20041, 'MIN320 20041 EXAM', 'exams/bulk/20041/min320s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN320H1','MIN','MIN320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN320H1', 63, 20051, 'MIN320 20051 EXAM', 'exams/bulk/20051/min320s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIN320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN320H1','MIN','MIN320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN320H1', 63, 20071, 'MIN320 20071 EXAM', 'exams/bulk/20071/min320s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIN325H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN325H1','MIN','MIN325H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN325H1', 63, 20021, 'MIN325 20021 EXAM', 'exams/bulk/20021/min325s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN350H1','MIN','MIN350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN350H1', 63, 20019, 'MIN350 20019 EXAM', 'exams/bulk/20019/min350f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN350H1','MIN','MIN350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN350H1', 63, 20029, 'MIN350 20029 EXAM', 'exams/bulk/20029/min350f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN350H1','MIN','MIN350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN350H1', 63, 20049, 'MIN350 20049 EXAM', 'exams/bulk/20049/min350f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN350H1','MIN','MIN350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN350H1', 63, 20011, 'MIN350 20011 EXAM', 'exams/bulk/20011/min350s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN350H1','MIN','MIN350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN350H1', 63, 20071, 'MIN350 20071 EXAM', 'exams/bulk/20071/min350s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIN401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN401H1','MIN','MIN401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN401H1', 63, 20069, 'MIN401 20069 EXAM', 'exams/bulk/20069/min401f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIN401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN401H1','MIN','MIN401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN401H1', 63, 20011, 'MIN401 20011 EXAM', 'exams/bulk/20011/min401s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN401H1','MIN','MIN401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN401H1', 63, 20051, 'MIN401 20051 EXAM', 'exams/bulk/20051/min401s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIN430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN430H1','MIN','MIN430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN430H1', 63, 20019, 'MIN430 20019 EXAM', 'exams/bulk/20019/min430f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN430H1','MIN','MIN430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN430H1', 63, 20049, 'MIN430 20049 EXAM', 'exams/bulk/20049/min430f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN430H1','MIN','MIN430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN430H1', 63, 20069, 'MIN430 20069 EXAM', 'exams/bulk/20069/min430f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIN439H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN439H1','MIN','MIN439H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN439H1', 63, 20029, 'MIN439 20029 EXAM', 'exams/bulk/20029/min439f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN450H1','MIN','MIN450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN450H1', 63, 20069, 'MIN450 20069 EXAM', 'exams/bulk/20069/min450f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIN450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN450H1','MIN','MIN450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN450H1', 63, 20011, 'MIN450 20011 EXAM', 'exams/bulk/20011/min450s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN450H1','MIN','MIN450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN450H1', 63, 20021, 'MIN450 20021 EXAM', 'exams/bulk/20021/min450s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN450H1','MIN','MIN450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN450H1', 63, 20041, 'MIN450 20041 EXAM', 'exams/bulk/20041/min450s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN450H1','MIN','MIN450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN450H1', 63, 20051, 'MIN450 20051 EXAM', 'exams/bulk/20051/min450s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MIN470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN470H1','MIN','MIN470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN470H1', 63, 20019, 'MIN470 20019 EXAM', 'exams/bulk/20019/min470f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN470H1','MIN','MIN470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN470H1', 63, 20029, 'MIN470 20029 EXAM', 'exams/bulk/20029/min470f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN470H1','MIN','MIN470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN470H1', 63, 20049, 'MIN470 20049 EXAM', 'exams/bulk/20049/min470f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN470H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN470H1','MIN','MIN470H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN470H1', 63, 20071, 'MIN470 20071 EXAM', 'exams/bulk/20071/min470s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MIN475H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN475H1','MIN','MIN475H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN475H1', 63, 20019, 'MIN475 20019 EXAM', 'exams/bulk/20019/min475f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MIN475H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN475H1','MIN','MIN475H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN475H1', 63, 20029, 'MIN475 20029 EXAM', 'exams/bulk/20029/min475f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN565H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN565H1','MIN','MIN565H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN565H1', 63, 20069, 'MIN565 20069 EXAM', 'exams/bulk/20069/min565f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MIN565H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN565H1','MIN','MIN565H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN565H1', 63, 20021, 'MIN565 20021 EXAM', 'exams/bulk/20021/min565s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MIN565H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN565H1','MIN','MIN565H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN565H1', 63, 20041, 'MIN565 20041 EXAM', 'exams/bulk/20041/min565s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MIN565H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIN565H1','MIN','MIN565H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIN565H1', 63, 20051, 'MIN565 20051 EXAM', 'exams/bulk/20051/min565s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MMS101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS101H1','MMS','MMS101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS101H1', 63, 20049, 'MMS101 20049 EXAM', 'exams/bulk/20049/mms101f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MMS101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS101H1','MMS','MMS101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS101H1', 63, 20011, 'MMS101 20011 EXAM', 'exams/bulk/20011/mms101s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS101H1','MMS','MMS101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS101H1', 63, 20021, 'MMS101 20021 EXAM', 'exams/bulk/20021/mms101s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MMS202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS202H1','MMS','MMS202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS202H1', 63, 20071, 'MMS202 20071 EXAM', 'exams/bulk/20071/mms202s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MMS203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS203H1','MMS','MMS203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS203H1', 63, 20011, 'MMS203 20011 EXAM', 'exams/bulk/20011/mms203s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS204H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS204H1','MMS','MMS204H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS204H1', 63, 20011, 'MMS204 20011 EXAM', 'exams/bulk/20011/mms204s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS217H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS217H1','MMS','MMS217H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS217H1', 63, 20051, 'MMS217 20051 EXAM', 'exams/bulk/20051/mms217s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MMS217H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS217H1','MMS','MMS217H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS217H1', 63, 20071, 'MMS217 20071 EXAM', 'exams/bulk/20071/mms217s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MMS220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS220H1','MMS','MMS220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS220H1', 63, 20011, 'MMS220 20011 EXAM', 'exams/bulk/20011/mms220s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS220H1','MMS','MMS220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS220H1', 63, 20021, 'MMS220 20021 EXAM', 'exams/bulk/20021/mms220s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MMS220H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS220H1','MMS','MMS220H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS220H1', 63, 20041, 'MMS220 20041 EXAM', 'exams/bulk/20041/mms220s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MMS241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS241H1','MMS','MMS241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS241H1', 63, 20049, 'MMS241 20049 EXAM', 'exams/bulk/20049/mms241f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MMS301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS301H1','MMS','MMS301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS301H1', 63, 20011, 'MMS301 20011 EXAM', 'exams/bulk/20011/mms301s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS315H1','MMS','MMS315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS315H1', 63, 20011, 'MMS315 20011 EXAM', 'exams/bulk/20011/mms315s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS317H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS317H1','MMS','MMS317H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS317H1', 63, 20011, 'MMS317 20011 EXAM', 'exams/bulk/20011/mms317s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS318H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS318H1','MMS','MMS318H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS318H1', 63, 20011, 'MMS318 20011 EXAM', 'exams/bulk/20011/mms318s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS319H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS319H1','MMS','MMS319H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS319H1', 63, 20011, 'MMS319 20011 EXAM', 'exams/bulk/20011/mms319s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS320H1','MMS','MMS320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS320H1', 63, 20019, 'MMS320 20019 EXAM', 'exams/bulk/20019/mms320f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS320H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS320H1','MMS','MMS320H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS320H1', 63, 20029, 'MMS320 20029 EXAM', 'exams/bulk/20029/mms320f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MMS330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS330H1','MMS','MMS330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS330H1', 63, 20011, 'MMS330 20011 EXAM', 'exams/bulk/20011/mms330s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS350H1','MMS','MMS350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS350H1', 63, 20011, 'MMS350 20011 EXAM', 'exams/bulk/20011/mms350s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS350H1','MMS','MMS350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS350H1', 63, 20021, 'MMS350 20021 EXAM', 'exams/bulk/20021/mms350s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MMS350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS350H1','MMS','MMS350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS350H1', 63, 20071, 'MMS350 20071 EXAM', 'exams/bulk/20071/mms350s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MMS351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS351H1','MMS','MMS351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS351H1', 63, 20071, 'MMS351 20071 EXAM', 'exams/bulk/20071/mms351s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MMS355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS355H1','MMS','MMS355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS355H1', 63, 20071, 'MMS355 20071 EXAM', 'exams/bulk/20071/mms355s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MMS411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS411H1','MMS','MMS411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS411H1', 63, 20011, 'MMS411 20011 EXAM', 'exams/bulk/20011/mms411s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS411H1','MMS','MMS411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS411H1', 63, 20021, 'MMS411 20021 EXAM', 'exams/bulk/20021/mms411s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MMS412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS412H1','MMS','MMS412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS412H1', 63, 20011, 'MMS412 20011 EXAM', 'exams/bulk/20011/mms412s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS430H1','MMS','MMS430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS430H1', 63, 20011, 'MMS430 20011 EXAM', 'exams/bulk/20011/mms430s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS452H1','MMS','MMS452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS452H1', 63, 19971, 'MMS452 19971 EXAM', 'exams/bulk/19971/mms452s_1997_exam.pdf');

select count(1) into courseCount from course where id ='MMS452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS452H1','MMS','MMS452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS452H1', 63, 19981, 'MMS452 19981 EXAM', 'exams/bulk/19981/mms452s_1998_exam.pdf');

select count(1) into courseCount from course where id ='MMS452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS452H1','MMS','MMS452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS452H1', 63, 19991, 'MMS452 19991 EXAM', 'exams/bulk/19991/mms452s_1999_exam.pdf');

select count(1) into courseCount from course where id ='MMS452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS452H1','MMS','MMS452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS452H1', 63, 20001, 'MMS452 20001 EXAM', 'exams/bulk/20001/mms452s_2000_exam.pdf');

select count(1) into courseCount from course where id ='MMS452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS452H1','MMS','MMS452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS452H1', 63, 20011, 'MMS452 20011 EXAM', 'exams/bulk/20011/mms452s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MMS452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS452H1','MMS','MMS452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS452H1', 63, 20021, 'MMS452 20021 EXAM', 'exams/bulk/20021/mms452s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MMS460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS460H1','MMS','MMS460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS460H1', 63, 20041, 'MMS460 20041 EXAM', 'exams/bulk/20041/mms460s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MMS460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS460H1','MMS','MMS460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS460H1', 63, 20071, 'MMS460 20071 EXAM', 'exams/bulk/20071/mms460s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MMS461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS461H1','MMS','MMS461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS461H1', 63, 20041, 'MMS461 20041 EXAM', 'exams/bulk/20041/mms461s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MMS502H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MMS502H1','MMS','MMS502H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MMS502H1', 63, 20011, 'MMS502 20011 EXAM', 'exams/bulk/20011/mms502s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20019, 'MSE101 20019 EXAM', 'exams/bulk/20019/mse101f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20029, 'MSE101 20029 EXAM', 'exams/bulk/20029/mse101f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20069, 'MSE101 20069 EXAM', 'exams/bulk/20069/mse101f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20011, 'MSE101 20011 EXAM', 'exams/bulk/20011/mse101s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20021, 'MSE101 20021 EXAM', 'exams/bulk/20021/mse101s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20031, 'MSE101 20031 EXAM', 'exams/bulk/20031/mse101s_2003_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20041, 'MSE101 20041 EXAM', 'exams/bulk/20041/mse101s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20051, 'MSE101 20051 EXAM', 'exams/bulk/20051/mse101s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE101H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE101H1','MSE','MSE101H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE101H1', 63, 20071, 'MSE101 20071 EXAM', 'exams/bulk/20071/mse101s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 63, 20019, 'MSE202 20019 EXAM', 'exams/bulk/20019/mse202f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 63, 20029, 'MSE202 20029 EXAM', 'exams/bulk/20029/mse202f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 63, 20051, 'MSE202 20051 EXAM', 'exams/bulk/20051/mse202s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE203H1','MSE','MSE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE203H1', 63, 20021, 'MSE203 20021 EXAM', 'exams/bulk/20021/mse203s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE203H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE203H1','MSE','MSE203H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE203H1', 63, 20041, 'MSE203 20041 EXAM', 'exams/bulk/20041/mse203s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE204H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE204H1','MSE','MSE204H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE204H1', 63, 20041, 'MSE204 20041 EXAM', 'exams/bulk/20041/mse204s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE207H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE207H1','MSE','MSE207H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE207H1', 63, 20019, 'MSE207 20019 EXAM', 'exams/bulk/20019/mse207f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE207H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE207H1','MSE','MSE207H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE207H1', 63, 20029, 'MSE207 20029 EXAM', 'exams/bulk/20029/mse207f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE217H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE217H1','MSE','MSE217H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE217H1', 63, 20071, 'MSE217 20071 EXAM', 'exams/bulk/20071/mse217s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE218H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE218H1','MSE','MSE218H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE218H1', 63, 20021, 'MSE218 20021 EXAM', 'exams/bulk/20021/mse218s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE231H1','MSE','MSE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE231H1', 63, 20049, 'MSE231 20049 EXAM', 'exams/bulk/20049/mse231f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE231H1','MSE','MSE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE231H1', 63, 20071, 'MSE231 20071 EXAM', 'exams/bulk/20071/mse231s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE235H1','MSE','MSE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE235H1', 63, 20049, 'MSE235 20049 EXAM', 'exams/bulk/20049/mse235f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE235H1','MSE','MSE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE235H1', 63, 20071, 'MSE235 20071 EXAM', 'exams/bulk/20071/mse235s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE241H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE241H1','MSE','MSE241H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE241H1', 63, 20071, 'MSE241 20071 EXAM', 'exams/bulk/20071/mse241s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE243H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE243H1','MSE','MSE243H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE243H1', 63, 20051, 'MSE243 20051 EXAM', 'exams/bulk/20051/mse243s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE243H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE243H1','MSE','MSE243H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE243H1', 63, 20071, 'MSE243 20071 EXAM', 'exams/bulk/20071/mse243s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE250H1','MSE','MSE250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE250H1', 63, 20051, 'MSE250 20051 EXAM', 'exams/bulk/20051/mse250s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE250H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE250H1','MSE','MSE250H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE250H1', 63, 20071, 'MSE250 20071 EXAM', 'exams/bulk/20071/mse250s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE270H1','MSE','MSE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE270H1', 63, 20019, 'MSE270 20019 EXAM', 'exams/bulk/20019/mse270f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE270H1','MSE','MSE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE270H1', 63, 20029, 'MSE270 20029 EXAM', 'exams/bulk/20029/mse270f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE270H1','MSE','MSE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE270H1', 63, 20049, 'MSE270 20049 EXAM', 'exams/bulk/20049/mse270f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE270H1','MSE','MSE270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE270H1', 63, 20069, 'MSE270 20069 EXAM', 'exams/bulk/20069/mse270f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE301H1','MSE','MSE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE301H1', 63, 20019, 'MSE301 20019 EXAM', 'exams/bulk/20019/mse301f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE301H1','MSE','MSE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE301H1', 63, 20029, 'MSE301 20029 EXAM', 'exams/bulk/20029/mse301f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE301H1','MSE','MSE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE301H1', 63, 20051, 'MSE301 20051 EXAM', 'exams/bulk/20051/mse301s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE301H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE301H1','MSE','MSE301H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE301H1', 63, 20071, 'MSE301 20071 EXAM', 'exams/bulk/20071/mse301s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE302H1','MSE','MSE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE302H1', 63, 20029, 'MSE302 20029 EXAM', 'exams/bulk/20029/mse302f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE302H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE302H1','MSE','MSE302H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE302H1', 63, 20049, 'MSE302 20049 EXAM', 'exams/bulk/20049/mse302f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE314H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE314H1','MSE','MSE314H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE314H1', 63, 20019, 'MSE314 20019 EXAM', 'exams/bulk/20019/mse314f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE314H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE314H1','MSE','MSE314H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE314H1', 63, 20029, 'MSE314 20029 EXAM', 'exams/bulk/20029/mse314f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE314H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE314H1','MSE','MSE314H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE314H1', 63, 20039, 'MSE314 20039 EXAM', 'exams/bulk/20039/mse314f_2003_exam.pdf');

select count(1) into courseCount from course where id ='MSE314H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE314H1','MSE','MSE314H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE314H1', 63, 20049, 'MSE314 20049 EXAM', 'exams/bulk/20049/mse314f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE315H1','MSE','MSE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE315H1', 63, 20019, 'MSE315 20019 EXAM', 'exams/bulk/20019/mse315f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE315H1','MSE','MSE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE315H1', 63, 20041, 'MSE315 20041 EXAM', 'exams/bulk/20041/mse315s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE315H1','MSE','MSE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE315H1', 63, 20051, 'MSE315 20051 EXAM', 'exams/bulk/20051/mse315s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE315H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE315H1','MSE','MSE315H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE315H1', 63, 20071, 'MSE315 20071 EXAM', 'exams/bulk/20071/mse315s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE316H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE316H1','MSE','MSE316H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE316H1', 63, 20029, 'MSE316 20029 EXAM', 'exams/bulk/20029/mse316f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE316H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE316H1','MSE','MSE316H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE316H1', 63, 20049, 'MSE316 20049 EXAM', 'exams/bulk/20049/mse316f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE316H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE316H1','MSE','MSE316H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE316H1', 63, 20021, 'MSE316 20021 EXAM', 'exams/bulk/20021/mse316s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE318H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE318H1','MSE','MSE318H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE318H1', 63, 20069, 'MSE318 20069 EXAM', 'exams/bulk/20069/mse318f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE318H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE318H1','MSE','MSE318H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE318H1', 63, 20051, 'MSE318 20051 EXAM', 'exams/bulk/20051/mse318s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE319H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE319H1','MSE','MSE319H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE319H1', 63, 20041, 'MSE319 20041 EXAM', 'exams/bulk/20041/mse319s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE319H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE319H1','MSE','MSE319H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE319H1', 63, 20051, 'MSE319 20051 EXAM', 'exams/bulk/20051/mse319s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE321H1','MSE','MSE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE321H1', 63, 20021, 'MSE321 20021 EXAM', 'exams/bulk/20021/mse321s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE322H1','MSE','MSE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE322H1', 63, 20021, 'MSE322 20021 EXAM', 'exams/bulk/20021/mse322s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE322H1','MSE','MSE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE322H1', 63, 20041, 'MSE322 20041 EXAM', 'exams/bulk/20041/mse322s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE322H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE322H1','MSE','MSE322H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE322H1', 63, 20051, 'MSE322 20051 EXAM', 'exams/bulk/20051/mse322s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE330H1','MSE','MSE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE330H1', 63, 20021, 'MSE330 20021 EXAM', 'exams/bulk/20021/mse330s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE330H1','MSE','MSE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE330H1', 63, 20041, 'MSE330 20041 EXAM', 'exams/bulk/20041/mse330s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE330H1','MSE','MSE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE330H1', 63, 20051, 'MSE330 20051 EXAM', 'exams/bulk/20051/mse330s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE330H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE330H1','MSE','MSE330H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE330H1', 63, 20071, 'MSE330 20071 EXAM', 'exams/bulk/20071/mse330s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE332H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE332H1','MSE','MSE332H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE332H1', 63, 20069, 'MSE332 20069 EXAM', 'exams/bulk/20069/mse332f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE342H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE342H1','MSE','MSE342H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE342H1', 63, 20069, 'MSE342 20069 EXAM', 'exams/bulk/20069/mse342f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE350H1','MSE','MSE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE350H1', 63, 20011, 'MSE350 20011 EXAM', 'exams/bulk/20011/mse350s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE350H1','MSE','MSE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE350H1', 63, 20041, 'MSE350 20041 EXAM', 'exams/bulk/20041/mse350s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE350H1','MSE','MSE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE350H1', 63, 20051, 'MSE350 20051 EXAM', 'exams/bulk/20051/mse350s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE358H1','MSE','MSE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE358H1', 63, 20021, 'MSE358 20021 EXAM', 'exams/bulk/20021/mse358s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE358H1','MSE','MSE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE358H1', 63, 20041, 'MSE358 20041 EXAM', 'exams/bulk/20041/mse358s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE358H1','MSE','MSE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE358H1', 63, 20051, 'MSE358 20051 EXAM', 'exams/bulk/20051/mse358s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE358H1','MSE','MSE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE358H1', 63, 20071, 'MSE358 20071 EXAM', 'exams/bulk/20071/mse358s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE401H1','MSE','MSE401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE401H1', 63, 20019, 'MSE401 20019 EXAM', 'exams/bulk/20019/mse401f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE401H1','MSE','MSE401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE401H1', 63, 20029, 'MSE401 20029 EXAM', 'exams/bulk/20029/mse401f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE401H1','MSE','MSE401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE401H1', 63, 20049, 'MSE401 20049 EXAM', 'exams/bulk/20049/mse401f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE401H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE401H1','MSE','MSE401H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE401H1', 63, 20069, 'MSE401 20069 EXAM', 'exams/bulk/20069/mse401f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE402H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE402H1','MSE','MSE402H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE402H1', 63, 20019, 'MSE402 20019 EXAM', 'exams/bulk/20019/mse402f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE404H1','MSE','MSE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE404H1', 63, 20029, 'MSE404 20029 EXAM', 'exams/bulk/20029/mse404f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE404H1','MSE','MSE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE404H1', 63, 20069, 'MSE404 20069 EXAM', 'exams/bulk/20069/mse404f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE404H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE404H1','MSE','MSE404H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE404H1', 63, 20051, 'MSE404 20051 EXAM', 'exams/bulk/20051/mse404s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE412H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE412H1','MSE','MSE412H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE412H1', 63, 20021, 'MSE412 20021 EXAM', 'exams/bulk/20021/mse412s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE419H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE419H1','MSE','MSE419H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE419H1', 63, 20069, 'MSE419 20069 EXAM', 'exams/bulk/20069/mse419f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE420H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE420H1','MSE','MSE420H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE420H1', 63, 20049, 'MSE420 20049 EXAM', 'exams/bulk/20049/mse420f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE421H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE421H1','MSE','MSE421H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE421H1', 63, 20051, 'MSE421 20051 EXAM', 'exams/bulk/20051/mse421s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE421H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE421H1','MSE','MSE421H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE421H1', 63, 20071, 'MSE421 20071 EXAM', 'exams/bulk/20071/mse421s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE430H1','MSE','MSE430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE430H1', 63, 20021, 'MSE430 20021 EXAM', 'exams/bulk/20021/mse430s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE430H1','MSE','MSE430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE430H1', 63, 20041, 'MSE430 20041 EXAM', 'exams/bulk/20041/mse430s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE430H1','MSE','MSE430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE430H1', 63, 20051, 'MSE430 20051 EXAM', 'exams/bulk/20051/mse430s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE430H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE430H1','MSE','MSE430H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE430H1', 63, 20071, 'MSE430 20071 EXAM', 'exams/bulk/20071/mse430s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE440H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE440H1','MSE','MSE440H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE440H1', 63, 20069, 'MSE440 20069 EXAM', 'exams/bulk/20069/mse440f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE450H1','MSE','MSE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE450H1', 63, 20019, 'MSE450 20019 EXAM', 'exams/bulk/20019/mse450f_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE450H1','MSE','MSE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE450H1', 63, 20029, 'MSE450 20029 EXAM', 'exams/bulk/20029/mse450f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE450H1','MSE','MSE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE450H1', 63, 20049, 'MSE450 20049 EXAM', 'exams/bulk/20049/mse450f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE450H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE450H1','MSE','MSE450H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE450H1', 63, 20071, 'MSE450 20071 EXAM', 'exams/bulk/20071/mse450s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 19981, 'MSE452 19981 EXAM', 'exams/bulk/19981/mse452s_1998_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 19991, 'MSE452 19991 EXAM', 'exams/bulk/19991/mse452s_1999_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 20001, 'MSE452 20001 EXAM', 'exams/bulk/20001/mse452s_2000_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 20011, 'MSE452 20011 EXAM', 'exams/bulk/20011/mse452s_2001_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 20041, 'MSE452 20041 EXAM', 'exams/bulk/20041/mse452s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 20051, 'MSE452 20051 EXAM', 'exams/bulk/20051/mse452s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 63, 20071, 'MSE452 20071 EXAM', 'exams/bulk/20071/mse452s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE455H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE455H1','MSE','MSE455H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE455H1', 63, 20071, 'MSE455 20071 EXAM', 'exams/bulk/20071/mse455s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE457H1','MSE','MSE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE457H1', 63, 20029, 'MSE457 20029 EXAM', 'exams/bulk/20029/mse457f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE457H1','MSE','MSE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE457H1', 63, 20049, 'MSE457 20049 EXAM', 'exams/bulk/20049/mse457f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE457H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE457H1','MSE','MSE457H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE457H1', 63, 20069, 'MSE457 20069 EXAM', 'exams/bulk/20069/mse457f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE458H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE458H1','MSE','MSE458H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE458H1', 63, 20051, 'MSE458 20051 EXAM', 'exams/bulk/20051/mse458s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE459H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE459H1','MSE','MSE459H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE459H1', 63, 20029, 'MSE459 20029 EXAM', 'exams/bulk/20029/mse459f_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE459H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE459H1','MSE','MSE459H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE459H1', 63, 20049, 'MSE459 20049 EXAM', 'exams/bulk/20049/mse459f_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE459H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE459H1','MSE','MSE459H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE459H1', 63, 20069, 'MSE459 20069 EXAM', 'exams/bulk/20069/mse459f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE460H1','MSE','MSE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE460H1', 63, 20051, 'MSE460 20051 EXAM', 'exams/bulk/20051/mse460s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE461H1','MSE','MSE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE461H1', 63, 20069, 'MSE461 20069 EXAM', 'exams/bulk/20069/mse461f_2006_exam.pdf');

select count(1) into courseCount from course where id ='MSE461H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE461H1','MSE','MSE461H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE461H1', 63, 20051, 'MSE461 20051 EXAM', 'exams/bulk/20051/mse461s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE488H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE488H1','MSE','MSE488H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE488H1', 63, 20071, 'MSE488 20071 EXAM', 'exams/bulk/20071/mse488s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE502H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE502H1','MSE','MSE502H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE502H1', 63, 20021, 'MSE502 20021 EXAM', 'exams/bulk/20021/mse502s_2002_exam.pdf');

select count(1) into courseCount from course where id ='MSE550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE550H1','MSE','MSE550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE550H1', 63, 20041, 'MSE550 20041 EXAM', 'exams/bulk/20041/mse550s_2004_exam.pdf');

select count(1) into courseCount from course where id ='MSE550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE550H1','MSE','MSE550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE550H1', 63, 20051, 'MSE550 20051 EXAM', 'exams/bulk/20051/mse550s_2005_exam.pdf');

select count(1) into courseCount from course where id ='MSE550H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE550H1','MSE','MSE550H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE550H1', 63, 20071, 'MSE550 20071 EXAM', 'exams/bulk/20071/mse550s_2007_exam.pdf');

select count(1) into courseCount from course where id ='MSE558H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE558H1','MSE','MSE558H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE558H1', 63, 20071, 'MSE558 20071 EXAM', 'exams/bulk/20071/mse558s_2007_exam.pdf');

select count(1) into courseCount from course where id ='PHL193H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL193H1','PHL','PHL193H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL193H1', 63, 20011, 'PHL193 20011 EXAM', 'exams/bulk/20011/phl193s_2001_exam.pdf');

select count(1) into courseCount from course where id ='PHL193H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL193H1','PHL','PHL193H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL193H1', 63, 20021, 'PHL193 20021 EXAM', 'exams/bulk/20021/phl193s_2002_exam.pdf');

select count(1) into courseCount from course where id ='PHL193H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL193H1','PHL','PHL193H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL193H1', 63, 20041, 'PHL193 20041 EXAM', 'exams/bulk/20041/phl193s_2004_exam.pdf');

select count(1) into courseCount from course where id ='PHL193H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL193H1','PHL','PHL193H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL193H1', 63, 20051, 'PHL193 20051 EXAM', 'exams/bulk/20051/phl193s_2005_exam.pdf');

select count(1) into courseCount from course where id ='PHL291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL291H1','PHL','PHL291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL291H1', 63, 20011, 'PHL291 20011 EXAM', 'exams/bulk/20011/phl291s_2001_exam.pdf');

select count(1) into courseCount from course where id ='PHL291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL291H1','PHL','PHL291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL291H1', 63, 20041, 'PHL291 20041 EXAM', 'exams/bulk/20041/phl291s_2004_exam.pdf');

select count(1) into courseCount from course where id ='PHL291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHL291H1','PHL','PHL291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHL291H1', 63, 20051, 'PHL291 20051 EXAM', 'exams/bulk/20051/phl291s_2005_exam.pdf');

select count(1) into courseCount from course where id ='PHY180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY180H1','PHY','PHY180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY180H1', 63, 20029, 'PHY180 20029 EXAM', 'exams/bulk/20029/phy180f_2002_exam.pdf');

select count(1) into courseCount from course where id ='PHY180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY180H1','PHY','PHY180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY180H1', 63, 20049, 'PHY180 20049 EXAM', 'exams/bulk/20049/phy180f_2004_exam.pdf');

select count(1) into courseCount from course where id ='PHY180H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY180H1','PHY','PHY180H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY180H1', 63, 20069, 'PHY180 20069 EXAM', 'exams/bulk/20069/phy180f_2006_exam.pdf');

select count(1) into courseCount from course where id ='PHY190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY190H1','PHY','PHY190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY190H1', 63, 20069, 'PHY190 20069 EXAM', 'exams/bulk/20069/phy190f_2006_exam.pdf');

select count(1) into courseCount from course where id ='PHY280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY280H1','PHY','PHY280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY280H1', 63, 20019, 'PHY280 20019 EXAM', 'exams/bulk/20019/phy280f_2001_exam.pdf');

select count(1) into courseCount from course where id ='PHY280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY280H1','PHY','PHY280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY280H1', 63, 20029, 'PHY280 20029 EXAM', 'exams/bulk/20029/phy280f_2002_exam.pdf');

select count(1) into courseCount from course where id ='PHY280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY280H1','PHY','PHY280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY280H1', 63, 20049, 'PHY280 20049 EXAM', 'exams/bulk/20049/phy280f_2004_exam.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 63, 19991, 'PHY281 19991 EXAM', 'exams/bulk/19991/phy281s_1999_exam.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 63, 20011, 'PHY281 20011 EXAM', 'exams/bulk/20011/phy281s_2001_exam.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 63, 20021, 'PHY281 20021 EXAM', 'exams/bulk/20021/phy281s_2002_exam.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 63, 20031, 'PHY281 20031 EXAM', 'exams/bulk/20031/phy281s_2003_exam.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 63, 20041, 'PHY281 20041 EXAM', 'exams/bulk/20041/phy281s_2004_exam.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 63, 20051, 'PHY281 20051 EXAM', 'exams/bulk/20051/phy281s_2005_exam.pdf');

select count(1) into courseCount from course where id ='PHY290H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY290H1','PHY','PHY290H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY290H1', 63, 20069, 'PHY290 20069 EXAM', 'exams/bulk/20069/phy290f_2006_exam.pdf');

select count(1) into courseCount from course where id ='PHY291H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY291H1','PHY','PHY291H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY291H1', 63, 20071, 'PHY291 20071 EXAM', 'exams/bulk/20071/phy291s_2007_exam.pdf');

select count(1) into courseCount from course where id ='STA286H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('STA286H1','STA','STA286H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('STA286H1', 63, 20071, 'STA286 20071 EXAM', 'exams/bulk/20071/sta286s_2007_exam.pdf');

select count(1) into courseCount from course where id ='STA387H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('STA387H1','STA','STA387H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('STA387H1', 63, 20011, 'STA387 20011 EXAM', 'exams/bulk/20011/sta387s_2001_exam.pdf');

select count(1) into courseCount from course where id ='STA387H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('STA387H1','STA','STA387H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('STA387H1', 63, 20021, 'STA387 20021 EXAM', 'exams/bulk/20021/sta387s_2002_exam.pdf');

select count(1) into courseCount from course where id ='STA387H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('STA387H1','STA','STA387H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('STA387H1', 63, 20041, 'STA387 20041 EXAM', 'exams/bulk/20041/sta387s_2004_exam.pdf');

select count(1) into courseCount from course where id ='STA387H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('STA387H1','STA','STA387H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('STA387H1', 63, 20051, 'STA387 20051 EXAM', 'exams/bulk/20051/sta387s_2005_exam.pdf');

select count(1) into courseCount from course where id ='STA387H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('STA387H1','STA','STA387H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('STA387H1', 63, 20071, 'STA387 20071 EXAM', 'exams/bulk/20071/sta387s_2007_exam.pdf');

end%%

call test%%
drop procedure `test`%%