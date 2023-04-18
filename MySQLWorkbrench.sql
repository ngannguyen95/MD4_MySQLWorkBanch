 -- taoj co so du lieu
create database demoQLSV;
-- xoa cosoduieu
--  drop database demoqlsv;

-- chon CSDL MUON TAO BANG 
use demoqlsv;
-- tao bang 
create table Class(
classId int primary key auto_increment,-- khoa chinh cua bang
className varchar(255)unique not null,-- unique laf khong duoc trung lap 
total int not null -- khog duoc de trong 
);

create table ClassStudent(
StudentId int primary key auto_increment ,
StudentName varchar(255),
DateOfBirth date,
Sex tinyint default(0),
birthPlace varchar(255)
);

 

create table ClassSubject(
SubjectId int primary key auto_increment,
SubjectName varchar(255),
coefficient float
);
-- nhap du lieu cho bang
insert into class(classname,total) values
("JAVA-10",13),
("JAVA-11",20),
("JAVA-12",6);

-- chefn 1 barn ghi hoac nhieu ban ghi vao bang
insert into class (classname,total)values
("JAVA-13",25),
("JAVA-14",60),
("JAVA-15",10),
("JAVA-16",12),
("JAVA-17",13),
("JAVA-18",14),
("JAVA-19",15),
("JAVA-20",16);
insert into classstudent(studentname,dateofbirth,sex,birthplace) values
("ngan","1995-11-20",0,"thanhhoa"),
("theanh","2023-4-10",0,"hanoi");
insert into classstudent(studentname,dateofbirth,sex,birthplace) values
("hoang anh","2006-2-20",0,"hoian"),
("nguyn van a","1996-2-03",0,"nghe an"),
("hoang thai","2002-1-23",0,"ninh binh");
insert into classsubject(subjectname,coefficient) values
("toan",2.0),
("van",1),
("hoa",3),
("tieng anh",4);

-- sua duoc 1 hoac nhieu ban ghi( update tenbang set ..truong can sua... where ..dieu kienclass
 update classstudent set dateOfbirth="2000-11-20",birthplace="ha nam" where studentId=4;
-- xoa du lieu cua bang
delete from classstudent where studentid=1;
-- xoa toan bo ban ghi
delete from class;
-- truy van dơn gian 1 bang
select*from class;
-- reset dữ liệu 
truncate class;









