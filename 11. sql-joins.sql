USE universities

CREATE TABLE employee(
employee_id INTEGER PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
date_of_birth DATE,
gender CHAR(1),
department_id INTEGER)

CREATE TABLE department(
department_id INTEGER PRIMARY KEY,
department_name VARCHAR(250)
)

-- Insert data into department table
INSERT INTO department VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing'),
(6, 'Finance'),
(7, 'Sales');

-- Insert data into employee table
INSERT INTO employee VALUES
(1, 'Alice', 'Smith', '1990-05-15', 'F', 1),
(2, 'Bob', 'Johnson', '1985-08-20', 'M', 2),
(3, 'Charlie', 'Brown', '1992-12-05', 'M', 2),
(4, 'Diana', 'Miller', '1988-07-25', 'F', 3),
(5, 'Eve', 'Davis', '1995-03-10', 'F', 5),
(6, 'Frank', 'Wilson', '1980-11-11', 'M', 4),
(7, 'Grace', 'Taylor', '1993-09-19', 'F', 2),
(8, 'Hank', 'Anderson', '1991-01-29', 'M', 5),
(9, 'Ivy', 'Martinez', '1997-06-30', 'F', 3),
(10, 'Jack', 'Thomas', '1989-10-17', 'M', 1);

SELECT * FROM employee
SELECT * FROM department

-- INNER JOIN
SELECT * FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id

-- OUTER JOIN
-- LEFT OUTER JOIN
SELECT * FROM employee e
LEFT JOIN department d
ON e.department_id = d.department_id

SELECT * FROM employee e
LEFT OUTER JOIN department d
ON e.department_id = d.department_id

-- RIGHT OUTER JOIN
SELECT * FROM employee e
RIGHT JOIN department d
ON e.department_id = d.department_id

SELECT * FROM employee e
RIGHT OUTER JOIN department d
ON e.department_id = d.department_id

-- FULL OUTER JOIN
SELECT * FROM employee e
FULL JOIN department d
ON e.department_id = d.department_id

SELECT * FROM employee e
FULL OUTER JOIN department d
ON e.department_id = d.department_id

DROP TABLE employee

CREATE TABLE employee(
employee_id INTEGER PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
date_of_birth DATE,
gender CHAR(1),
manager_id INTEGER)

INSERT INTO employee (employee_id, first_name, last_name, date_of_birth, gender, manager_id) VALUES
(1, 'Alice', 'Smith', '1980-05-15', 'F', NULL),
(2, 'Bob', 'Johnson', '1985-08-20', 'M', 1),
(3, 'Charlie', 'Brown', '1992-12-05', 'M', 2),
(4, 'Diana', 'Miller', '1988-07-25', 'F', 2),
(5, 'Eve', 'Davis', '1995-03-10', 'F', 1),
(6, 'Frank', 'Wilson', '1990-11-11', 'M', 5),
(7, 'Grace', 'Taylor', '1993-09-19', 'F', 5),
(8, 'Hank', 'Anderson', '1991-01-29', 'M', 3),
(9, 'Ivy', 'Martinez', '1997-06-30', 'F', 4),
(10, 'Jack', 'Thomas', '1989-10-17', 'M', 4);

-- SELF JOIN
SELECT e.employee_id, e.first_name, e.last_name, e.manager_id, m.first_name + ' ' + m.last_name AS manager_name FROM employee e
JOIN employee m
ON m.employee_id = e.employee_id
ORDER BY manager_id

DROP TABLE department

--CROSS JOIN
SELECT e1.first_name + ' ' + e1.last_name as Employee_1, e2.first_name + ' ' + e2.last_name as Employee_2 FROM employee e1
CROSS JOIN employee e2
WHERE e1.employee_id <> e2.employee_id
ORDER BY e1.first_name