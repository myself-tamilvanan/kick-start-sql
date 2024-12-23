--Create Database
create database universities

--Get into the DB
use universities

--Create table
create table students
(
name varchar(255),
department varchar(200),
age integer,
date_of_birth date,
gender char(1)
)

--Create new records
insert into students
values('AAAAAA', 'ME', 12, '1995-06-22', 'M')

--Modify the table column
alter table students add gpa float

--Delete the table rows without removing the table data structure
truncate table students

--Delte the table and data structure
drop table students