CREATE TABLE employee
(
EmployeeID INTEGER PRIMARY KEY,
FirstName VARCHAR(200),
LastName VARCHAR(200) UNIQUE,
DateOfBirth DATE,
Gender CHAR(1),
DepartmentID INTEGER
)

SELECT * INTO employee_testIndex FROM employee

CREATE INDEX idx_lastname
ON employee_testIndex(LastName)

CREATE INDEX idx_firstname
ON employee_testIndex(FirstName)

ALTER TABLE employee_testIndex
ADD CONSTRAINT PK_EmployeeID PRIMARY KEY(EmployeeID)

DROP INDEX employee_testIndex.idx_firstname

CREATE INDEX idx_firstname
ON employee_testIndex(FirstName, LastName)