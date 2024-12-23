-- PRIMARY KEY Constraints
CREATE TABLE students
(
StudentID integer primary key,
FirstName varchar(200),
LastName varchar(200),
DateOfBirth Date,
Gender char(1)
)

INSERT INTO students
values (1001, 'Aishwarya', 'Jayaram', '2005-04-24', 'F'), 
(1002, 'Anand', 'Venkat', '2005-05-22', 'M'), 
(1003, 'Bala', 'Sundaram', '2004-11-02', 'M'), 
(1004, 'Deepa', 'Mani', '2004-12-09', 'F'), 
(1005, 'Deepa', 'Mahesh', '2005-05-29', 'F'), 
(1006, 'Gokul', 'Ram', '2004-11-27', 'M')

SELECT * FROM students

INSERT INTO students
values (1006, 'Gayathri', 'Vinoth', '2004-12-31', 'F')


DROP TABLE students

-- PRIMARY KEY Constraints
CREATE TABLE students
(
StudentID integer not null,
FirstName varchar(200),
LastName varchar(200),
DateOfBirth Date,
Gender char(1),
constraint pk_students primary key(StudentID)
)


INSERT INTO students
values (1001, 'Aishwarya', 'Jayaram', '2005-04-24', 'F'), 
(1002, 'Anand', 'Venkat', '2005-05-22', 'M'), 
(1003, 'Bala', 'Sundaram', '2004-11-02', 'M'), 
(1004, 'Deepa', 'Mani', '2004-12-09', 'F'), 
(1005, 'Deepa', 'Mahesh', '2005-05-29', 'F'), 
(1006, 'Gokul', 'Ram', '2004-11-27', 'M')

INSERT INTO students
values (1006, 'Gayathri', 'Vinoth', '2004-12-31', 'F')

DROP TABLE students

-- ALTER TABLE
CREATE TABLE students
(
StudentID integer not null,
FirstName varchar(200),
LastName varchar(200),
DateOfBirth Date,
Gender char(1)
)

ALTER TABLE students add primary key(StudentID)

ALTER TABLE students add constraint pk_students primary key(StudentID)

-- COMPOSITE KEY

CREATE TABLE orders(
order_id integer,
product_id integer,
date_of_purchase date,
price float,
constraint pk_order primary key(order_id, product_id)
)

DROP TABLE orders


CREATE TABLE orders(
order_id integer not null,
product_id integer not null,
date_of_purchase date,
price float,
)

ALTER TABLE orders add constraint pk_order primary key(order_id, product_id)

-- UNIQUE KEY CONSTRAINT

CREATE TABLE kyc (
kyc_id INTEGER PRIMARY KEY,
kyc_no VARCHAR(250) UNIQUE,
email VARCHAR(250) UNIQUE,
)

DROP TABLE kyc

CREATE TABLE kyc(
kyc_id INTEGER PRIMARY KEY,
kyc_no VARCHAR(250),
email VARCHAR(250),
CONSTRAINT uc_kyc UNIQUE(kyc_no, email)
)

TRUNCATE TABLE kyc

DROP TABLE kyc

CREATE TABLE kyc(
kyc_id INTEGER PRIMARY KEY,
kyc_no VARCHAR(250),
email VARCHAR(250),
)

ALTER TABLE kyc ADD CONSTRAINT uc_kyc UNIQUE(kyc_no, email)

INSERT INTO kyc 
values (100, '1111111111', 'test@gmail.com'), 
(101, '1111111112', 'test1@gmail.com'),
(102, '1111111113', 'test2@gmail.com'), 
(103, '1111111114', 'test3@gmail.com') 

SELECT * FROM kyc

-- CHECK CONSTRAINT

CREATE TABLE employee(
employee_id INTEGER PRIMARY KEY,
first_name VARCHAR(250),
last_name VARCHAR(250),
date_of_birth date CHECK (date_of_birth > '1980-01-01'),
gender CHAR(1),
salary INTEGER CHECK (salary >= 5000),
country VARCHAR(100) DEFAULT 'India'
)

INSERT INTO employee(employee_id, first_name, last_name, date_of_birth, gender, salary)
VALUES (100, 'Tamilvanan', 'Rasappan', '1975-06-22', 'M', 5600)

INSERT INTO employee(employee_id, first_name, last_name, date_of_birth, gender, salary)
VALUES (101, 'Shakila', 'Samidurai', '1985-12-22', 'F', 4600)

INSERT INTO employee(employee_id, first_name, last_name, date_of_birth, gender, salary)
VALUES (102, 'Sai Hrithik', 'Prabakaran', '2018-10-04', 'M', 9600)

SELECT * FROM employee

TRUNCATE TABLE employee

DROP TABLE employee

CREATE TABLE employee(
employee_id INTEGER PRIMARY KEY,
first_name VARCHAR(250),
last_name VARCHAR(250),
date_of_birth DATE,
gender CHAR(1),
salary INTEGER,
country VARCHAR(100),
CONSTRAINT ck_employee CHECK (salary >= 5000 AND date_of_birth > '1980-01-01')
)

DROP TABLE employee

CREATE TABLE employee(
employee_id INTEGER PRIMARY KEY,
first_name VARCHAR(250),
last_name VARCHAR(250),
date_of_birth DATE,
gender CHAR(1),
salary INTEGER,
)

ALTER TABLE employee ADD CONSTRAINT ck_employee CHECK (salary >= 5000 AND date_of_birth > '1980-01-01')

ALTER TABLE employee DROP CONSTRAINT ck_employee

ALTER TABLE employee ADD country VARCHAR(100)

ALTER TABLE employee ADD CONSTRAINT df_students DEFAULT 'India' FOR country

-- FOREIGN KEY

CREATE TABLE course(
 course_id INTEGER PRIMARY KEY,
 course_name VARCHAR(250),
 staff_name VARCHAR(250)
)

INSERT INTO course
values (401, 'Bachelor of Engg', 'Tamilvanan'), (402, 'B.Sc.', 'Shakila'), (403, 'B.C.A.', 'Sarguna')

CREATE TABLE student(
sudent_id INTEGER PRIMARY KEY,
first_name VARCHAR(250),
last_name VARCHAR(250),
date_of_birth DATE,
gender CHAR(1),
course_id INTEGER FOREIGN KEY REFERENCES course(course_id)
)

INSERT INTO student
VALUES (100, 'Tamilvanan', 'Rasappan', '1975-06-22', 'M', 401)

INSERT INTO student
VALUES (101, 'Shakila', 'Samidurai', '1985-12-22', 'F', 402)

INSERT INTO student
VALUES (102, 'Sai Hrithik', 'Prabakaran', '2018-10-04', 'M', 404)

SELECT * FROM student

DROP TABLE student

CREATE TABLE student(
sudent_id INTEGER PRIMARY KEY,
first_name VARCHAR(250),
last_name VARCHAR(250),
date_of_birth DATE,
gender CHAR(1),
course_id INTEGER
CONSTRAINT fk_student FOREIGN KEY(course_id) REFERENCES course(course_id)
)

DROP TABLE student

CREATE TABLE student(
sudent_id INTEGER PRIMARY KEY,
first_name VARCHAR(250),
last_name VARCHAR(250),
date_of_birth DATE,
gender CHAR(1),
course_id INTEGER
)

ALTER TABLE student
ADD CONSTRAINT fk_student FOREIGN KEY(course_id) REFERENCES course(course_id)
