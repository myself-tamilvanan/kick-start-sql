CREATE PROCEDURE GetEmployeeData
AS
BEGIN
SELECT * FROM employees 
END

EXEC GetEmployeeData

CREATE PROCEDURE GetEmployeeDataByDept @deptID INT
AS
BEGIN
SELECT * FROM employees WHERE DEPARTMENT_ID = @deptID
END


EXEC GetEmployeeDataByDept 50

ALTER PROCEDURE GetEmployeeDataByDept @deptID INT = 100
AS
BEGIN
SELECT * FROM employees WHERE DEPARTMENT_ID = @deptID
END


EXEC GetEmployeeDataByDept


ALTER PROCEDURE GetEmployeeDataByDept @deptID INT = 100, @EmpCount INT OUT
AS
BEGIN
SELECT @EmpCount = COUNT(*) FROM employees WHERE DEPARTMENT_ID = @deptID
END

DECLARE @count INT
EXEC GetEmployeeDataByDept 50, @count OUT
SELECT @count


CREATE PROCEDURE UpdateProductDetails
AS
BEGIN
DECLARE @ModifiedDate Date
SELECT @ModifiedDate = MAX(ModifiedDate) FROM Production.Product

CREATE TABLE #Products
(
ProductID INT
)

INSERT INTO #Products
SELECT ProductID FROM Production.ProductCostHistory WHERE ModifiedDate >= @ModifiedDate

UPDATE PI
SET Quantity = PI.Quantity + 10, ModifiedDate = GETDATE()
FROM
Production.ProductInventory PI
JOIN #Products P
ON PI.ProductID = P.ProductID

DROP TABLE #Products

END