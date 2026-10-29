CREATE database Route;
use route;
create table students(
student_id int,
student_name varchar(50),
course varchar(50),
city varchar(30),
course_fee decimal(10,2),
joined_on date
);
select*from students;
describe students;
-- create courses table
create table courses(
course_number int,
course_name varchar(50),
trainer_name varchar(30),
duration_in_weeks int,
course_fee decimal(10,2),
starting_date date);
describe courses;
-- insert 
insert into students (student_id,student_name,course,city,course_fee,joined_on)
values (1,'Femina','sql','calicut',55000,'2026-06-01');
insert into students (student_id,student_name,course,city,course_fee,joined_on)
values
 (2,'Neja','sql','Calicut',50000,'2026-06-01'),
 (3,'Soya','sql','Malappuram',60000,'2026-06-20'),
 (4,'Nihala','power bi','Vadakara',80000,'2026-06-04');
insert into students (student_id,student_name,course)
values (5,'Neha','excel');
-- showing 
select student_id,course from students;
select student_name,course_fee from students;
-- AS
select student_name as Name,course_fee as course from students;
select student_name as 'student name',course_fee as 'course fee'from students;







