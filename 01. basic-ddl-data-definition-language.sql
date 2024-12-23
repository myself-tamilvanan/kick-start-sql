--Create Database
create database universities

--Get into the DB
use universities

--Create table
create table students
(
rollno int,
name varchar(255),
department varchar(200),
age integer,
date_of_birth date,
gender char(1),
gpa float
)

--Create new records
insert into students
values(100, 'Tamilvanan', 'ME', 29, '1995-06-22', 'M')

insert into students
values(101, 'Shakila', 'B.Sc.', 28, '1996-12-22', 'F')

--Read data from the table
select * from students

-- Update table record
update students
set gpa = 8.4
where rollno = 100

--Modify the table column
alter table students add gpa float

alter table students drop column age

--Delete the table rows without removing the table data structure
truncate table students

--Delte the table and data structure
drop table students