delimiter %%
create procedure `test` () begin declare courseCount int;

select count(1) into courseCount from course where id ='EDC230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('EDC230H1','EDC','EDC230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('EDC230H1', 63, 20079, 'EDC230 20079 EXAM', 'exams/bulk/20079/edc230f_2007_exam.pdf');

select count(1) into courseCount from course where id ='JVM270H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('JVM270H1','JVM','JVM270H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('JVM270H1', 63, 20059, 'JVM270 20059 EXAM', 'exams/bulk/20059/jvm270f_2005_exam.pdf');

select count(1) into courseCount from course where id ='PHY280H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY280H1','PHY','PHY280H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY280H1', 63, 20059, 'PHY280 20059 EXAM', 'exams/bulk/20059/phy280f_2005_exam.pdf');

end%%

call test%%
drop procedure `test`%%