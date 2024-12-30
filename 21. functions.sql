CREATE FUNCTION dbo.udf_addNumbers(@a INT, @b INT)
RETURNS INT
BEGIN
RETURN @a + @b
END

SELECT dbo.udf_addNumbers(3,4)

 CREATE TABLE StudentMarks
  (
  StudentID INTEGER,
  Name VARCHAR(50),
  Tamil INT,
  Physics INT,
  Chemistry INT,
  English INT,
  Biology INT,
  Maths INT,
  Total INT
  )

INSERT INTO StudentMarks values(1001,'Shreya',55,45,56,87,21,65,329);
INSERT INTO StudentMarks values(1002,'Suresh',75,96,78,64,90,82,485);
INSERT INTO StudentMarks values(1003,'Ramesh',25,54,89,76,95,74,413);
INSERT INTO StudentMarks values(1004,'Swetha',78,96,86,63,54,45,422);
INSERT INTO StudentMarks values(1005,'Jennifer',58,96,78,46,96,53,427);
INSERT INTO StudentMarks values(1006,'Anu',45,87,52,89,55,52,380);
INSERT INTO StudentMarks values(1007,'Pooja',55,64,61,58,75,61,374);
INSERT INTO StudentMarks values(1008,'Ritesh',54,76,87,56,25,87,385);
INSERT INTO StudentMarks values(1009,'Hiba',55,63,89,75,78,89,449);
INSERT INTO StudentMarks values(1010,'Mukesh',96,46,77,83,58,77,437);

SELECT * FROM StudentMarks

CREATE FUNCTION dbo.udf_PassOrFail(@marks INT)
RETURNS CHAR(1)
AS
BEGIN
DECLARE @grade CHAR(1)
IF (@marks >= 35)
	SET @grade = 'P'
ELSE
	SET @grade = 'F'
RETURN @grade
END

SELECT dbo.udf_PassOrFail(30)

SELECT StudentID,Name, 
  dbo.udf_PassOrFail(Tamil) AS Tamil,
  dbo.udf_PassOrFail(Physics) AS Physics,
  dbo.udf_PassOrFail(Chemistry) AS Chemistry,
  dbo.udf_PassOrFail(English) AS English,
  dbo.udf_PassOrFail(Biology) AS Biology,
  dbo.udf_PassOrFail(Maths) AS Maths
  FROM StudentMarks


select * FROM employees

CREATE FUNCTION dbo.udf_EmpByDept(@deptID INT)
RETURNS TABLE
AS
RETURN SELECT * FROM employees WHERE DEPARTMENT_ID = @deptID

CREATE FUNCTION dbo.udf_Persons()
RETURNS @persondata TABLE(ID INT, PersonName VARCHAR(100))
AS
BEGIN
INSERT INTO @persondata
SELECT EMPLOYEE_ID,FIRST_NAME FROM employees
INSERT INTO @persondata
SELECT StudentID, Name FROM StudentMarks
RETURN;
END

SELECT * FROM dbo.udf_Persons()
