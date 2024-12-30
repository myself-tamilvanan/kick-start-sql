CREATE TABLE EmployeeA (
    ID INT,
    Name VARCHAR(255),
    DeptID INT
);


INSERT INTO EmployeeA (ID, Name, DeptID) VALUES
(1, 'John', 10),
(2, 'Alice', 20),
(3, 'Bob', 30),
(4, 'Eve', 40),
(5, 'Charlie', 50);

DROP TABLE EmployeeB

CREATE TABLE EmployeeB (
    ID INT,
    Name VARCHAR(255),
    DeptID INT
);

INSERT INTO EmployeeB (ID, Name, DeptID) VALUES
(3, 'Bob', 30),
(4, 'Eve', 40),
(5, 'Charlie', 50),
(6, 'David', 60),
(7, 'Frank', 70);

CREATE TABLE EmployeeC (
    ID INT,
    Name VARCHAR(255),
    DeptID INT
);

INSERT INTO EmployeeC (ID, Name, DeptID) VALUES
(6, 'David', 60),
(7, 'Frank', 70),
(8, 'Charlie', 50),
(9, 'David', 60),
(10, 'Frank', 70);


SELECT * FROM EmployeeA
UNION
SELECT * FROM EmployeeB

SELECT * FROM EmployeeA
UNION ALL
SELECT * FROM EmployeeB

SELECT * FROM EmployeeA
INTERSECT
SELECT * FROM EmployeeB

SELECT * FROM EmployeeA
EXCEPT
SELECT * FROM EmployeeB

ALTER TABLE EmployeeB
ADD gender CHAR(1)

SELECT * FROM EmployeeA
EXCEPT
SELECT ID,Name,DeptID FROM EmployeeB

SELECT * FROM EmployeeA
EXCEPT
SELECT Name,ID,DeptID FROM EmployeeB

SELECT * FROM EmployeeA
UNION
SELECT * FROM EmployeeB
UNION
SELECT * FROM EmployeeC

SELECT * FROM EmployeeA
UNION
SELECT * FROM EmployeeB
INTERSECT
SELECT * FROM EmployeeC

(SELECT * FROM EmployeeA
UNION
SELECT * FROM EmployeeB)
INTERSECT
SELECT * FROM EmployeeC

WITH empA AS 
(
SELECT * FROM EmployeeA)
, empC AS (SELECT * FROM EmployeeC)

SELECT * FROM empA
UNION
SELECT * FROM empC