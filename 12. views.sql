
CREATE TABLE employee
(
EmployeeID INTEGER PRIMARY KEY,
FirstName VARCHAR(200),
LastName VARCHAR(200),
DateOfBirth DATE,
Gender CHAR(1),
DepartmentID INTEGER
)

INSERT INTO employee
VALUES(1001,'Aishwarya','Jayaram','2005-04-24','F',11),
(1002,'Anand','Venkat','2005-05-22','M',12),
(1003,'Bala','Sundaram','2004-11-02','M',13),
(1004,'Deepa','Mani','2004-12-09','F',11),
(1005,'Deepa','Mahesh','2005-05-29','F',14),
(1006,'Gokul','Ram','2004-11-27','M',13),
(1007,'Shreya','Gopi','2005-06-20','F',17),
(1008,'Abdul','Rahman','2005-07-30','M',18)

SELECT * FROM department

CREATE TABLE department
(
DepartmentID INTEGER,
DepartmentName VARCHAR(100)
)

INSERT INTO department
VALUES(11,'Engineering'),
(12,'Finance'),
(13,'Sales'),
(14,'Marketing'),
(15,'Human Resources'),
(16,'IT'),
(17,'Operations'),
(18,'Admin')

SELECT * FROM department

SELECT * FROM employee

-- CREATE VIEW
CREATE VIEW employee_details AS
SELECT EmployeeID,FirstName,LastName,DepartmentID
FROM employee 

SELECT * FROM employee_details

-- CREATE VIEW WITH JOINING MORE THAN ONE TABLE
CREATE VIEW employee_dept_details AS
SELECT e.EmployeeID,e.FirstName,e.LastName,e.DepartmentID,
d.DepartmentName 
FROM employee e
JOIN department d
ON e.DepartmentID = d.DepartmentID

SELECT * FROM employee_dept_details

-- ALTER VIEW WITH MORE THAN ONE TABLE
ALTER VIEW employee_dept_details AS
SELECT e.EmployeeID,e.FirstName,e.LastName,e.DateOfBirth, e.DepartmentID,
d.DepartmentName 
FROM employee e
LEFT JOIN department d
ON e.DepartmentID = d.DepartmentID

-- THIS WILL WORK SINCE VIEW IS FROM SAME TABLE
INSERT INTO employee_details
VALUES(1009,'Alice','Robert',15)

SELECT * FROM employee_details

SELECT * FROM employee

SELECT * FROM department

-- THIS WILL WORK SINCE VIEW IS FROM SAME TABLE
UPDATE employee_details
SET lastname = 'Rahmann'
WHERE employeeid = 1008

-- THIS WILL NOT WORK SINCE VIEW IS FROM MORE THAN ONE TABLE
INSERT INTO employee_dept_details
VALUES(1010,'Ashwin','Nambi',16,'IT')

SELECT * FROM employee_dept_details

-- THIS WILL NOT WORK SINCE VIEW IS FROM MORE THAN ONE TABLE
UPDATE employee_dept_details
SET DepartmentName = 'IT'
WHERE employeeid = 1001

-- THIS WILL NOT WORK SINCE VIEW IS FROM MORE THAN ONE TABLE
DELETE FROM employee_dept_details
WHERE employeeid = 1001

-- THIS WILL WORK SINCE VIEW IS FROM SAME TABLE
DELETE FROM employee_details
WHERE employeeid = 1001


-- THIS WILL WORK
ALTER VIEW employee_dept_details AS
SELECT d.DepartmentName, count(*) AS no_of_employees
FROM employee e
JOIN department d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

-- THIS WILL NOT WORK SINCE VIEW IS FROM MORE THAN ONE TABLE
UPDATE employee_dept_details
SET no_of_employees = 3
WHERE DepartmentName = 'IT'

-- THIS WILL NOT WORK SINCE VIEW IS FROM MORE THAN ONE TABLE
ALTER VIEW employee_dept_details AS
SELECT DISTINCT e.FirstName, d.DepartmentName
FROM employee e
JOIN department d
ON e.DepartmentID = d.DepartmentID

SELECT * FROM employee_dept_details

-- THIS WILL NOT WORK SINCE VIEW IS FROM MORE THAN ONE TABLE
UPDATE employee_dept_details
SET DepartmentName = 'IT'
WHERE FirstName = 'Gokul'

-- THIS WILL WORK
DROP VIEW employee_dept_details