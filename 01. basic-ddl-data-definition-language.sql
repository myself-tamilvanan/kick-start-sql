--Create Database
CREATE DATABASE universities

--Get into the DB
USE universities

--Create table
CREATE TABLE students
(
rollno INT,
name VARCHAR(255),
department VARCHAR(200),
age INTEGER,
date_of_birth DATE,
gender CHAR(1),
gpa FLOAT
)

--Create new records
INSERT INTO students
VALUES(100, 'Tamilvanan', 'ME', 29, '1995-06-22', 'M')

INSERT INTO students
VALUES(101, 'Shakila', 'B.Sc.', 28, '1996-12-22', 'F')

--Read data from the table
SELECT * FROM students

-- Update table record
UPDATE students
SET gpa = 8.4
WHERE rollno = 100

--Modify the table column
ALTER TABLE students ADD gpa FLOAT

ALTER TABLE students DROP COLUMN age

--Delete the table rows without removing the table data structure
TRUNCATE TABLE students

--Delte the table and data structure
DROP TABLE students