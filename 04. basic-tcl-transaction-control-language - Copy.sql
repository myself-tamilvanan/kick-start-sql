--Create Database
CREATE DATABASE universities

--Get into the DB
USE universities

--Create table
CREATE TABLE students
(
name VARCHAR(255),
department VARCHAR(200),
age INTEGER,
date_of_birth DATE,
gender CHAR(1)
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