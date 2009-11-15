delimiter %%
create procedure `test` () begin declare courseCount int;

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 MID1', 'exams/custom/19991/aer202s_1999_mid1.jpg');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 MID2', 'exams/custom/19991/aer202s_1999_mid2.jpg');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 MIS1', 'exams/custom/19991/aer202s_1999_mis1.zip');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 MIS2', 'exams/custom/19991/aer202s_1999_mis2.zip');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 TST1', 'exams/custom/19991/aer202s_1999_tst1.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 TST2', 'exams/custom/19991/aer202s_1999_tst2.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 TST3', 'exams/custom/19991/aer202s_1999_tst3.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 19991, 'AER202 19991 TST4', 'exams/custom/19991/aer202s_1999_tst4.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20011, 'AER202 20011 QS01', 'exams/custom/20011/aer202s_2001_qs01.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QS02', 'exams/custom/20021/aer202s_2002_qs02.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QS06', 'exams/custom/20021/aer202s_2002_qs06.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QS07', 'exams/custom/20021/aer202s_2002_qs07.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QZ03', 'exams/custom/20021/aer202s_2002_qz03.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QZ04', 'exams/custom/20021/aer202s_2002_qz04.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QZ05', 'exams/custom/20021/aer202s_2002_qz05.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 61, 20021, 'AER202 20021 QZ08', 'exams/custom/20021/aer202s_2002_qz08.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20031, 'AER202 20031 TSS1', 'exams/custom/20031/aer202s_2003_tss1.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20031, 'AER202 20031 TSS2', 'exams/custom/20031/aer202s_2003_tss2.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20031, 'AER202 20031 TSS3', 'exams/custom/20031/aer202s_2003_tss3.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20031, 'AER202 20031 TSS4', 'exams/custom/20031/aer202s_2003_tss4.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20041, 'AER202 20041 TSS1', 'exams/custom/20041/aer202s_2004_tss1.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20041, 'AER202 20041 TSS2', 'exams/custom/20041/aer202s_2004_tss2.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20041, 'AER202 20041 TSS3', 'exams/custom/20041/aer202s_2004_tss3.pdf');

select count(1) into courseCount from course where id ='AER202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER202H1','AER','AER202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER202H1', 62, 20041, 'AER202 20041 TSS4', 'exams/custom/20041/aer202s_2004_tss4.pdf');

select count(1) into courseCount from course where id ='AER234H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER234H1','AER','AER234H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER234H1', 62, 20041, 'AER234 20041 MIDS', 'exams/custom/20041/aer234s_2004_mids.pdf');

select count(1) into courseCount from course where id ='AER307H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER307H1','AER','AER307H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER307H1', 62, 20039, 'AER307 20039 TST1', 'exams/custom/20039/aer307f_2003_tst1.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 62, 19979, 'AER310 19979 TST1', 'exams/custom/19979/aer310f_1997_tst1.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 62, 19979, 'AER310 19979 TST2', 'exams/custom/19979/aer310f_1997_tst2.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 62, 19979, 'AER310 19979 TST3', 'exams/custom/19979/aer310f_1997_tst3.pdf');

select count(1) into courseCount from course where id ='AER310H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER310H1','AER','AER310H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER310H1', 62, 19979, 'AER310 19979 TST4', 'exams/custom/19979/aer310f_1997_tst4.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 62, 20019, 'AER373 20019 TST1', 'exams/custom/20019/aer373f_2001_tst1.pdf');

select count(1) into courseCount from course where id ='AER373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('AER373H1','AER','AER373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('AER373H1', 62, 20019, 'AER373 20019 TST2', 'exams/custom/20019/aer373f_2001_tst2.pdf');

select count(1) into courseCount from course where id ='APM288H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM288H1','APM','APM288H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM288H1', 62, 20039, 'APM288 20039 MID2', 'exams/custom/20039/apm288f_2003_mid2.jpg');

select count(1) into courseCount from course where id ='APM288H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('APM288H1','APM','APM288H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('APM288H1', 62, 20049, 'APM288 20049 MIDT', 'exams/custom/20049/apm288f_2004_midt.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 62, 20021, 'BME205 20021 MIDS', 'exams/custom/20021/bme205s_2002_mids.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 62, 20021, 'BME205 20021 MIDT', 'exams/custom/20021/bme205s_2002_midt.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 62, 20031, 'BME205 20031 MIDS', 'exams/custom/20031/bme205s_2003_mids.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 62, 20031, 'BME205 20031 MIDT', 'exams/custom/20031/bme205s_2003_midt.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 62, 20041, 'BME205 20041 MIDS', 'exams/custom/20041/bme205s_2004_mids.pdf');

select count(1) into courseCount from course where id ='BME205H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME205H1','BME','BME205H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME205H1', 62, 20041, 'BME205 20041 MIDT', 'exams/custom/20041/bme205s_2004_midt.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 62, 19989, 'BME495 19989 MID1', 'exams/custom/19989/bme495f_1998_mid1.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 62, 19999, 'BME495 19999 MID1', 'exams/custom/19999/bme495f_1999_mid1.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 62, 20009, 'BME495 20009 MID1', 'exams/custom/20009/bme495f_2000_mid1.pdf');

select count(1) into courseCount from course where id ='BME495H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('BME495H1','BME','BME495H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('BME495H1', 62, 20009, 'BME495 20009 MID2', 'exams/custom/20009/bme495f_2000_mid2.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 19969, 'CHE150 19969 MIDS', 'exams/custom/19969/che150f_1996_mids.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 19979, 'CHE150 19979 MIDS', 'exams/custom/19979/che150f_1997_mids.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 19989, 'CHE150 19989 MIDS', 'exams/custom/19989/che150f_1998_mids.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 19989, 'CHE150 19989 MIDT', 'exams/custom/19989/che150f_1998_midt.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 19961, 'CHE150 19961 MIDS', 'exams/custom/19961/che150s_1996_mids.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 19971, 'CHE150 19971 MIDS', 'exams/custom/19971/che150s_1997_mids.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 20001, 'CHE150 20001 MIDT', 'exams/custom/20001/che150s_2000_midt.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS1A', 'exams/custom/20001/che150s_2000_qs1a.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS1B', 'exams/custom/20001/che150s_2000_qs1b.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS1C', 'exams/custom/20001/che150s_2000_qs1c.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS1D', 'exams/custom/20001/che150s_2000_qs1d.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS2A', 'exams/custom/20001/che150s_2000_qs2a.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS2B', 'exams/custom/20001/che150s_2000_qs2b.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS2C', 'exams/custom/20001/che150s_2000_qs2c.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS2D', 'exams/custom/20001/che150s_2000_qs2d.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS3A', 'exams/custom/20001/che150s_2000_qs3a.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS3B', 'exams/custom/20001/che150s_2000_qs3b.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS3C', 'exams/custom/20001/che150s_2000_qs3c.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS3D', 'exams/custom/20001/che150s_2000_qs3d.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS4A', 'exams/custom/20001/che150s_2000_qs4a.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS4B', 'exams/custom/20001/che150s_2000_qs4b.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS4C', 'exams/custom/20001/che150s_2000_qs4c.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 61, 20001, 'CHE150 20001 QS4D', 'exams/custom/20001/che150s_2000_qs4d.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 20021, 'CHE150 20021 MIDS', 'exams/custom/20021/che150s_2002_mids.pdf');

select count(1) into courseCount from course where id ='CHE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE150H1','CHE','CHE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE150H1', 62, 20041, 'CHE150 20041 MIDS', 'exams/custom/20041/che150s_2004_mids.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 62, 19981, 'CHE391 19981 MIDT', 'exams/custom/19981/che391s_1998_midt.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 62, 19991, 'CHE391 19991 MIDT', 'exams/custom/19991/che391s_1999_midt.pdf');

select count(1) into courseCount from course where id ='CHE391H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CHE391H1','CHE','CHE391H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CHE391H1', 62, 20001, 'CHE391 20001 MIDT', 'exams/custom/20001/che391s_2000_midt.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 62, 19969, 'CSC181 19969 MID', 'exams/custom/19969/csc181f_1996_mid.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 62, 19979, 'CSC181 19979 MID', 'exams/custom/19979/csc181f_1997_mid.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 62, 19989, 'CSC181 19989 MID', 'exams/custom/19989/csc181f_1998_mid.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 62, 19999, 'CSC181 19999 MID1', 'exams/custom/19999/csc181f_1999_mid1.pdf');

select count(1) into courseCount from course where id ='CSC181H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC181H1','CSC','CSC181H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC181H1', 62, 19999, 'CSC181 19999 MID2', 'exams/custom/19999/csc181f_1999_mid2.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 62, 20001, 'CSC190 20001 MIDT', 'exams/custom/20001/csc190s_2000_midt.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 62, 20011, 'CSC190 20011 MIDT', 'exams/custom/20011/csc190s_2001_midt.pdf');

select count(1) into courseCount from course where id ='CSC190H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC190H1','CSC','CSC190H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC190H1', 62, 20021, 'CSC190 20021 MIDS', 'exams/custom/20021/csc190s_2002_mids.pdf');

select count(1) into courseCount from course where id ='CSC191H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC191H1','CSC','CSC191H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC191H1', 62, 20001, 'CSC191 20001 MIDT', 'exams/custom/20001/csc191s_2000_midt.pdf');

select count(1) into courseCount from course where id ='CSC245H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC245H1','CSC','CSC245H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC245H1', 62, 20039, 'CSC245 20039 MIDT', 'exams/custom/20039/csc245f_2003_midt.pdf');

select count(1) into courseCount from course where id ='CSC343H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC343H1','CSC','CSC343H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC343H1', 62, 20039, 'CSC343 20039 MID1', 'exams/custom/20039/csc343f_2003_mid1.pdf');

select count(1) into courseCount from course where id ='CSC343H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('CSC343H1','CSC','CSC343H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('CSC343H1', 62, 20039, 'CSC343 20039 MID2', 'exams/custom/20039/csc343f_2003_mid2.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 62, 20011, 'ECE115 20011 MID1', 'exams/custom/20011/ece115s_2001_mid1.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 62, 20011, 'ECE115 20011 MID2', 'exams/custom/20011/ece115s_2001_mid2.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 62, 20021, 'ECE115 20021 MID1', 'exams/custom/20021/ece115s_2002_mid1.pdf');

select count(1) into courseCount from course where id ='ECE115H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE115H1','ECE','ECE115H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE115H1', 62, 20021, 'ECE115 20021 MID2', 'exams/custom/20021/ece115s_2002_mid2.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 62, 20001, 'ECE150 20001 MID1', 'exams/custom/20001/ece150s_2000_mid1.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS01', 'exams/custom/20021/ece159s_2002_qs01.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS02', 'exams/custom/20021/ece159s_2002_qs02.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS03', 'exams/custom/20021/ece159s_2002_qs03.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS04', 'exams/custom/20021/ece159s_2002_qs04.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS05', 'exams/custom/20021/ece159s_2002_qs05.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS06', 'exams/custom/20021/ece159s_2002_qs06.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS07', 'exams/custom/20021/ece159s_2002_qs07.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS08', 'exams/custom/20021/ece159s_2002_qs08.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS09', 'exams/custom/20021/ece159s_2002_qs09.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20021, 'ECE159 20021 QS10', 'exams/custom/20021/ece159s_2002_qs10.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS01', 'exams/custom/20031/ece159s_2003_qs01.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS02', 'exams/custom/20031/ece159s_2003_qs02.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS03', 'exams/custom/20031/ece159s_2003_qs03.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS04', 'exams/custom/20031/ece159s_2003_qs04.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS05', 'exams/custom/20031/ece159s_2003_qs05.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS06', 'exams/custom/20031/ece159s_2003_qs06.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS07', 'exams/custom/20031/ece159s_2003_qs07.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS08', 'exams/custom/20031/ece159s_2003_qs08.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS09', 'exams/custom/20031/ece159s_2003_qs09.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20031, 'ECE159 20031 QS10', 'exams/custom/20031/ece159s_2003_qs10.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20041, 'ECE159 20041 QS01', 'exams/custom/20041/ece159s_2004_qs01.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20041, 'ECE159 20041 QS02', 'exams/custom/20041/ece159s_2004_qs02.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20041, 'ECE159 20041 QS03', 'exams/custom/20041/ece159s_2004_qs03.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20041, 'ECE159 20041 QS04', 'exams/custom/20041/ece159s_2004_qs04.pdf');

select count(1) into courseCount from course where id ='ECE159H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE159H1','ECE','ECE159H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE159H1', 61, 20041, 'ECE159 20041 QS05', 'exams/custom/20041/ece159s_2004_qs05.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 62, 19941, 'ECE150 19941 MID1', 'exams/custom/19941/ece150s_1994_mid1.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 62, 19951, 'ECE150 19951 MID1', 'exams/custom/19951/ece150s_1995_mid1.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 62, 19971, 'ECE150 19971 MID1', 'exams/custom/19971/ece150s_1997_mid1.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 62, 19981, 'ECE150 19981 MID1', 'exams/custom/19981/ece150s_1998_mid1.pdf');

select count(1) into courseCount from course where id ='ECE150H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE150H1','ECE','ECE150H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE150H1', 62, 19991, 'ECE150 19991 MIDT', 'exams/custom/19991/ece150s_1999_midt.pdf');

select count(1) into courseCount from course where id ='ECE259H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE259H1','ECE','ECE259H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE259H1', 62, 20041, 'ECE259 20041 MIDT', 'exams/custom/20041/ece259s_2004_midt.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 62, 19979, 'ECE350 19979 MIDT', 'exams/custom/19979/ece350f_1997_midt.pdf');

select count(1) into courseCount from course where id ='ECE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE350H1','ECE','ECE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE350H1', 62, 19999, 'ECE350 19999 MIDT', 'exams/custom/19999/ece350f_1999_midt.pdf');

select count(1) into courseCount from course where id ='ECE351H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE351H1','ECE','ECE351H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE351H1', 62, 19981, 'ECE351 19981 MIDT', 'exams/custom/19981/ece351s_1998_midt.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 62, 19979, 'ECE352 19979 MIDT', 'exams/custom/19979/ece352f_1997_midt.pdf');

select count(1) into courseCount from course where id ='ECE352H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE352H1','ECE','ECE352H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE352H1', 62, 19989, 'ECE352 19989 MIDT', 'exams/custom/19989/ece352f_1998_midt.pdf');

select count(1) into courseCount from course where id ='ECE354H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE354H1','ECE','ECE354H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE354H1', 62, 19981, 'ECE354 19981 MIDT', 'exams/custom/19981/ece354s_1998_midt.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 62, 19979, 'ECE355 19979 MIDT', 'exams/custom/19979/ece355f_1997_midt.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 62, 19989, 'ECE355 19989 MIDT', 'exams/custom/19989/ece355f_1998_midt.pdf');

select count(1) into courseCount from course where id ='ECE355H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE355H1','ECE','ECE355H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE355H1', 62, 20009, 'ECE355 20009 MIDT', 'exams/custom/20009/ece355f_2000_midt.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 19951, 'ECE356 19951 MID1', 'exams/custom/19951/ece356s_1995_mid1.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 19961, 'ECE356 19961 MID1', 'exams/custom/19961/ece356s_1996_mid1.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 19991, 'ECE356 19991 MIDT', 'exams/custom/19991/ece356s_1999_midt.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 20011, 'ECE356 20011 MID1', 'exams/custom/20011/ece356s_2001_mid1.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 20011, 'ECE356 20011 MID2', 'exams/custom/20011/ece356s_2001_mid2.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 20021, 'ECE356 20021 MID1', 'exams/custom/20021/ece356s_2002_mid1.pdf');

select count(1) into courseCount from course where id ='ECE356H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE356H1','ECE','ECE356H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE356H1', 62, 20021, 'ECE356 20021 MID2', 'exams/custom/20021/ece356s_2002_mid2.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 62, 19981, 'ECE357 19981 MID1', 'exams/custom/19981/ece357s_1998_mid1.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 62, 19981, 'ECE357 19981 MID2', 'exams/custom/19981/ece357s_1998_mid2.pdf');

select count(1) into courseCount from course where id ='ECE357H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE357H1','ECE','ECE357H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE357H1', 62, 19981, 'ECE357 19981 MID3', 'exams/custom/19981/ece357s_1998_mid3.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 62, 19989, 'ECE359 19989 MID1', 'exams/custom/19989/ece359f_1998_mid1.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 62, 19989, 'ECE359 19989 MID2', 'exams/custom/19989/ece359f_1998_mid2.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 62, 19989, 'ECE359 19989 MID3', 'exams/custom/19989/ece359f_1998_mid3.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 62, 20009, 'ECE359 20009 MID1', 'exams/custom/20009/ece359f_2000_mid1.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 62, 20009, 'ECE359 20009 MID2', 'exams/custom/20009/ece359f_2000_mid2.pdf');

select count(1) into courseCount from course where id ='ECE359H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE359H1','ECE','ECE359H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE359H1', 62, 20009, 'ECE359 20009 MID3', 'exams/custom/20009/ece359f_2000_mid3.pdf');

select count(1) into courseCount from course where id ='ECE411H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE411H1','ECE','ECE411H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE411H1', 62, 20031, 'ECE411 20031 MIDT', 'exams/custom/20031/ece411S_2003_MIDT.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 62, 19989, 'ECE416 19989 MIDT', 'exams/custom/19989/ece416f_1998_midt.pdf');

select count(1) into courseCount from course where id ='ECE416H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE416H1','ECE','ECE416H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE416H1', 62, 20009, 'ECE416 20009 MIDT', 'exams/custom/20009/ece416f_2000_midt.pdf');

select count(1) into courseCount from course where id ='ECE426H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE426H1','ECE','ECE426H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE426H1', 62, 20039, 'ECE426 20039 MIDS', 'exams/custom/20039/ece426f_2003_mids.pdf');

select count(1) into courseCount from course where id ='ECE426H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE426H1','ECE','ECE426H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE426H1', 62, 20049, 'ECE426 20049 MIDS', 'exams/custom/20049/ece426f_2004_mids.pdf');

select count(1) into courseCount from course where id ='ECE460H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE460H1','ECE','ECE460H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE460H1', 62, 20029, 'ECE460 20029 MIDT', 'exams/custom/20029/ece460f_2002_midt.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 62, 20039, 'ECE533 20039 MIDS', 'exams/custom/20039/ece533f_2003_mids.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 61, 20039, 'ECE533 20039 QS01', 'exams/custom/20039/ece533f_2003_qs01.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 61, 20039, 'ECE533 20039 QS02', 'exams/custom/20039/ece533f_2003_qs02.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 62, 20049, 'ECE533 20049 MIDS', 'exams/custom/20049/ece533f_2004_mids.pdf');

select count(1) into courseCount from course where id ='ECE533H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('ECE533H1','ECE','ECE533H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('ECE533H1', 61, 20049, 'ECE533 20049 QS01', 'exams/custom/20049/ece533f_2004_qs01.pdf');

select count(1) into courseCount from course where id ='MAT194H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT194H1','MAT','MAT194H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT194H1', 62, 20041, 'MAT194 20041 MIDS', 'exams/custom/20041/mat194s_2004_mids.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 62, 19981, 'MAT195 19981 MID1', 'exams/custom/19981/mat195s_1998_mid1.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 62, 19981, 'MAT195 19981 MID2', 'exams/custom/19981/mat195s_1998_mid2.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 62, 20031, 'MAT195 20031 MIS1', 'exams/custom/20031/mat195s_2003_mis1.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 62, 20031, 'MAT195 20031 MIS2', 'exams/custom/20031/mat195s_2003_mis2.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS01', 'exams/custom/20031/mat195s_2003_qs01.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS02', 'exams/custom/20031/mat195s_2003_qs02.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS03', 'exams/custom/20031/mat195s_2003_qs03.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS04', 'exams/custom/20031/mat195s_2003_qs04.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS05', 'exams/custom/20031/mat195s_2003_qs05.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS06', 'exams/custom/20031/mat195s_2003_qs06.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS07', 'exams/custom/20031/mat195s_2003_qs07.pdf');

select count(1) into courseCount from course where id ='MAT195H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT195H1','MAT','MAT195H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT195H1', 61, 20031, 'MAT195 20031 QS08', 'exams/custom/20031/mat195s_2003_qs08.pdf');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 62, 19999, 'MAT196 19999 MIDT', 'exams/custom/19999/mat196f_1999_midt.jpg');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 61, 19999, 'MAT196 19999 QZ01', 'exams/custom/19999/mat196f_1999_qz01.pdf');

select count(1) into courseCount from course where id ='MAT196H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT196H1','MAT','MAT196H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT196H1', 62, 20039, 'MAT196 20039 MIDT', 'exams/custom/20039/mat196f_2003_midt.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 61, 20001, 'MAT197 20001 QZ01', 'exams/custom/20001/mat197s_2000_qz01.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 61, 20011, 'MAT197 20011 QZ02', 'exams/custom/20011/mat197s_2001_qz02.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 62, 20021, 'MAT197 20021 MIDT', 'exams/custom/20021/mat197s_2002_midt.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 61, 20021, 'MAT197 20021 QZ03', 'exams/custom/20021/mat197s_2002_qz03.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 61, 20031, 'MAT197 20031 QZ01', 'exams/custom/20031/mat197s_2003_qz01.pdf');

select count(1) into courseCount from course where id ='MAT197H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT197H1','MAT','MAT197H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT197H1', 61, 20041, 'MAT197 20041 QZ02', 'exams/custom/20041/mat197s_2004_qz02.pdf');

select count(1) into courseCount from course where id ='MAT298H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT298H1','MAT','MAT298H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT298H1', 62, 20049, 'MAT298 20049 MIDS', 'exams/custom/20049/mat298f_2004_mids.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 62, 19979, 'MAT389 19979 MID1', 'exams/custom/19979/mat389f_1997_mid1.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 62, 19979, 'MAT389 19979 MID2', 'exams/custom/19979/mat389f_1997_mid2.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 62, 19989, 'MAT389 19989 MID1', 'exams/custom/19989/mat389f_1998_mid1.pdf');

select count(1) into courseCount from course where id ='MAT389H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MAT389H1','MAT','MAT389H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MAT389H1', 62, 19989, 'MAT389 19989 MID2', 'exams/custom/19989/mat389f_1998_mid2.pdf');

select count(1) into courseCount from course where id ='MIE313H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE313H1','MIE','MIE313H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE313H1', 62, 20011, 'MIE313 20011 MIDT', 'exams/custom/20011/mie313s_2001_midt.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 62, 20011, 'MIE321 20011 MIDT', 'exams/custom/20011/mie321s_2001_midt.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 62, 20031, 'MIE321 20031 MIDS', 'exams/custom/20031/mie321s_2003_mids.pdf');

select count(1) into courseCount from course where id ='MIE321H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE321H1','MIE','MIE321H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE321H1', 62, 20031, 'MIE321 20031 MIDT', 'exams/custom/20031/mie321s_2003_midt.pdf');

select count(1) into courseCount from course where id ='MIE358H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE358H1','MIE','MIE358H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE358H1', 62, 20039, 'MIE358 20039 MIDT', 'exams/custom/20039/mie358f_2003_midt.doc');

select count(1) into courseCount from course where id ='MIE372H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE372H1','MIE','MIE372H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE372H1', 62, 20009, 'MIE372 20009 MIDT', 'exams/custom/20009/mie372f_2000_midt.pdf');

select count(1) into courseCount from course where id ='MIE373H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE373H1','MIE','MIE373H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE373H1', 62, 20011, 'MIE373 20011 MIDT', 'exams/custom/20011/mie373s_2001_midt.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 62, 19981, 'MIE374 19981 MIDT', 'exams/custom/19981/mie374s_1998_midt.pdf');

select count(1) into courseCount from course where id ='MIE374H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE374H1','MIE','MIE374H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE374H1', 62, 19991, 'MIE374 19991 MIDT', 'exams/custom/19991/mie374s_1999_midt.pdf');

select count(1) into courseCount from course where id ='MIE440H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE440H1','MIE','MIE440H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE440H1', 62, 20009, 'MIE440 20009 MIDT', 'exams/custom/20009/mie440f_2000_midt.pdf');

select count(1) into courseCount from course where id ='MIE448H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE448H1','MIE','MIE448H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE448H1', 62, 20009, 'MIE448 20009 MIDT', 'exams/custom/20009/mie448f_2000_midt.pdf');

select count(1) into courseCount from course where id ='MIE448H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE448H1','MIE','MIE448H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE448H1', 62, 20029, 'MIE448 20029 MIDT', 'exams/custom/20029/mie448f_2002_midt.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 62, 19979, 'MIE566 19979 MIDT', 'exams/custom/19979/mie566f_1997_midt.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 62, 19989, 'MIE566 19989 MIDT', 'exams/custom/19989/mie566f_1998_midt.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 62, 19999, 'MIE566 19999 MIDT', 'exams/custom/19999/mie566f_1999_midt.pdf');

select count(1) into courseCount from course where id ='MIE566H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MIE566H1','MIE','MIE566H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MIE566H1', 62, 20009, 'MIE566 20009 MIDT', 'exams/custom/20009/mie566f_2000_midt.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 61, 20051, 'MSE202 20051 QS01', 'exams/custom/20051/mse202s_2005_qs01.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 61, 20051, 'MSE202 20051 QS02', 'exams/custom/20051/mse202s_2005_qs02.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 61, 20051, 'MSE202 20051 QS03', 'exams/custom/20051/mse202s_2005_qs03.doc');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 61, 20051, 'MSE202 20051 QS04', 'exams/custom/20051/mse202s_2005_qs04.pdf');

select count(1) into courseCount from course where id ='MSE202H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE202H1','MSE','MSE202H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE202H1', 61, 20051, 'MSE202 20051 QS05', 'exams/custom/20051/mse202s_2005_qs05.pdf');

select count(1) into courseCount from course where id ='MSE230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE230H1','MSE','MSE230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE230H1', 61, 20049, 'MSE230 20049 QZ01', 'exams/custom/20049/mse230f_2004_qz01.pdf');

select count(1) into courseCount from course where id ='MSE230H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE230H1','MSE','MSE230H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE230H1', 61, 20049, 'MSE230 20049 QZ02', 'exams/custom/20049/mse230f_2004_qz02.pdf');

select count(1) into courseCount from course where id ='MSE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE231H1','MSE','MSE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE231H1', 61, 20049, 'MSE231 20049 QZ01', 'exams/custom/20049/mse231f_2004_qz01.doc');

select count(1) into courseCount from course where id ='MSE231H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE231H1','MSE','MSE231H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE231H1', 61, 20049, 'MSE231 20049 QZ02', 'exams/custom/20049/mse231f_2004_qz02.doc');

select count(1) into courseCount from course where id ='MSE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE235H1','MSE','MSE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE235H1', 62, 20049, 'MSE235 20049 MIS1', 'exams/custom/20049/mse235f_2004_mis1.pdf');

select count(1) into courseCount from course where id ='MSE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE235H1','MSE','MSE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE235H1', 62, 20049, 'MSE235 20049 MIS2', 'exams/custom/20049/mse235f_2004_mis2.pdf');

select count(1) into courseCount from course where id ='MSE235H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE235H1','MSE','MSE235H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE235H1', 62, 20049, 'MSE235 20049 MIS3', 'exams/custom/20049/mse235f_2004_mis3.pdf');

select count(1) into courseCount from course where id ='MSE238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE238H1','MSE','MSE238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE238H1', 61, 20051, 'MSE238 20051 QZ01', 'exams/custom/20051/mse238s_2005_qz01.doc');

select count(1) into courseCount from course where id ='MSE238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE238H1','MSE','MSE238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE238H1', 61, 20051, 'MSE238 20051 QZ02', 'exams/custom/20051/mse238s_2005_qz02.doc');

select count(1) into courseCount from course where id ='MSE238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE238H1','MSE','MSE238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE238H1', 61, 20051, 'MSE238 20051 QZ03', 'exams/custom/20051/mse238s_2005_qz03.doc');

select count(1) into courseCount from course where id ='MSE238H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE238H1','MSE','MSE238H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE238H1', 61, 20051, 'MSE238 20051 QZ04', 'exams/custom/20051/mse238s_2005_qz04.doc');

select count(1) into courseCount from course where id ='MSE240H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE240H1','MSE','MSE240H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE240H1', 62, 20049, 'MSE240 20049 MIS1', 'exams/custom/20049/mse240f_2004_mis1.pdf');

select count(1) into courseCount from course where id ='MSE240H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE240H1','MSE','MSE240H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE240H1', 61, 20049, 'MSE240 20049 QS01', 'exams/custom/20049/mse240f_2004_qs01.pdf');

select count(1) into courseCount from course where id ='MSE350H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE350H1','MSE','MSE350H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE350H1', 62, 20011, 'MSE350 20011 MIDT', 'exams/custom/20011/mse350s_2001_midt.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 62, 19991, 'MSE452 19991 MIDT', 'exams/custom/19991/mse452s_1999_midt.pdf');

select count(1) into courseCount from course where id ='MSE452H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('MSE452H1','MSE','MSE452H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('MSE452H1', 62, 20001, 'MSE452 20001 MIDT', 'exams/custom/20001/mse452s_2000_midt.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 62, 19991, 'PHY281 19991 MIDT', 'exams/custom/19991/phy281s_1999_midt.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 62, 20041, 'PHY281 20041 MIDT', 'exams/custom/20041/phy281s_2004_midt.pdf');

select count(1) into courseCount from course where id ='PHY281H1';
if courseCount = 0 then
insert into `course` (id,dept_id, descr, is_eng) values ('PHY281H1','PHY','PHY281H1',1);
end if;
insert into `exam` (course_id, type, year, descr, file_path) values ('PHY281H1', 62, 20051, 'PHY281 20051 MIDS', 'exams/custom/20051/phy281s_2005_mids.pdf');

end%%

call test%%
drop procedure `test`%%