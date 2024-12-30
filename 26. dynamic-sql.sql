SELECT * FROM employees

EXEC sp_executesql N'SELECT * FROM employees'

DECLARE @sql NVARCHAR(MAX)
SET @sql = 'SELECT * FROM employees'
EXEC sp_executesql @sql

DECLARE @sql NVARCHAR(MAX)
DECLARE @dept_id INT
SET @dept_id = 90
SET @sql = 'SELECT * FROM employees WHERE Department_ID = ' + CAST(@dept_id AS VARCHAR)
SELECT @sql
EXEC sp_executesql @sql

DECLARE @sql NVARCHAR(MAX)
DECLARE @dept_id NVARCHAR(MAX)
SET @dept_id = '90'
SET @sql = 'SELECT * FROM employees WHERE Department_ID = ' + @dept_id
SELECT @sql
EXEC sp_executesql @sql

DECLARE @sql NVARCHAR(MAX)
DECLARE @first_name NVARCHAR(MAX)
SET @first_name = '''Steven'''
SET @sql = 'SELECT * FROM employees WHERE First_Name = ' + @first_name 
SELECT @sql
EXEC sp_executesql @sql

DECLARE @sql NVARCHAR(MAX)
DECLARE @dept_id INT
SET @dept_id = 90
DECLARE @columns NVARCHAR(MAX)
SET @columns = 'Employee_ID, First_Name, Last_Name '
SET @sql = 'SELECT ' + @columns + 'FROM employees WHERE Department_ID = ' + CAST(@dept_id AS VARCHAR)
SELECT @sql
EXEC sp_executesql @sql

----------------------------------------------------------------------------

CREATE PROCEDURE dynamic_Employees(@manager_id INT, @dept_id INT)
AS
DECLARE @sql NVARCHAR(MAX)
DECLARE @columns NVARCHAR(MAX)
SET @columns = 'Employee_ID, First_Name, Last_Name '
SET @sql = 'SELECT ' + @columns + 'FROM employees '

IF @manager_id IS NOT NULL
  SET @sql = @sql + 'WHERE Manager_ID = ' + CAST(@manager_id AS VARCHAR)
ELSE IF @dept_id IS NOT NULL
  SET @sql = @sql + 'WHERE Department_ID = ' + CAST(@dept_id AS VARCHAR)

EXEC sp_executesql @sql

EXEC dynamic_Employees NULL, NULL
EXEC dynamic_Employees 103, NULL
EXEC dynamic_Employees 103, 90
EXEC dynamic_Employees NULL, 90

------------------------------------------------------------------------

-- Drop the Sales table if it exists
DROP TABLE Sales

CREATE TABLE Sales (
    Product NVARCHAR(50),
    Region NVARCHAR(50),
    SalesAmount DECIMAL(10, 2)
);

-- Insert sample data into Sales table
INSERT INTO Sales VALUES
('ProductA', 'North', 100.00),
('ProductA', 'South', 150.00),
('ProductB', 'North', 200.00),
('ProductB', 'South', 120.00),
('ProductA', 'East', 180.00),
('ProductB', 'East', 220.00),
('ProductC', 'North', 80.00),
('ProductC', 'South', 110.00),
('ProductC', 'East', 90.00),
('ProductC', 'West', 130.00);

SELECT * FROM Sales

-- Pivot the Sales table to transform rows into columns
SELECT *
FROM (
    SELECT Product, Region, SalesAmount
    FROM Sales
) AS SourceTable
PIVOT (
    SUM(SalesAmount) FOR Region IN ([North], [South], [East], [West])
) AS PivotTable;

----------------------------------------------------------------

-- Drop the Sales_sub table if it exists
DROP TABLE Sales_sub

CREATE TABLE Sales_sub (
    Product NVARCHAR(50),
    SubProduct NVARCHAR(50),
    Region NVARCHAR(50),
    SalesAmount DECIMAL(10, 2)
);

-- Insert sample data into Sales_sub table
INSERT INTO Sales_sub VALUES
('ProductA','Sub1', 'North', 100.00),
('ProductA','Sub2', 'North', 50.00),
('ProductA','Sub1', 'South', 150.00),
('ProductB', 'Sub1','North', 200.00),
('ProductB', 'Sub1','South', 120.00),
('ProductB', 'Sub2','South', 40.00),
('ProductA','Sub1', 'East', 180.00),
('ProductB','Sub1', 'East', 220.00),
('ProductC','Sub1', 'North', 80.00),
('ProductC','Sub1', 'South', 110.00),
('ProductC','Sub1', 'East', 90.00),
('ProductC','Sub1', 'West', 130.00);

SELECT * FROM Sales_sub

-- Pivot the Sales_sub table to transform rows into columns
SELECT * FROM
(
    SELECT PRODUCT, Region, SalesAmount FROM Sales_sub
) AS SOURCE
PIVOT (
    SUM(SalesAmount) FOR Region IN ([North], [South], [East], [West])
) AS PIVOT_TABLE

------------------------------------------------------------------------------------------
-- Unpivot the Sales_pivot table to transform columns back into rows

SELECT * INTO Sales_pivot FROM (
    SELECT * FROM
    (
        SELECT PRODUCT, Region, SalesAmount FROM Sales
    ) AS SOURCE
    PIVOT (
        SUM(SalesAmount) FOR Region IN ([North], [South], [East], [West])
    ) AS PIVOT_TABLE
) AS p

SELECT * FROM Sales_pivot

SELECT * FROM
(
    SELECT * FROM Sales_pivot
) AS source
UNPIVOT (
    SalesAmount FOR Region IN ([North], [South], [East], [West])
) AS unpivot_table

---------------------------------------------------------------------------------------------

-- Pivot using dynamic SQL

DECLARE @sql NVARCHAR(MAX)
DECLARE @columns NVARCHAR(MAX)

-- Generate the list of columns for the pivot dynamically
SELECT @columns = COALESCE(@columns + ' ,','') + QUOTENAME(Region) FROM (
    SELECT DISTINCT Region FROM Sales
) AS regions

-- Construct the dynamic SQL query
SET @sql = '
SELECT * FROM
(
    SELECT PRODUCT, Region, SalesAmount FROM Sales
) AS SOURCE
PIVOT (
    SUM(SalesAmount) FOR Region IN (' + @columns + ')
) AS PIVOT_TABLE'

-- Execute the dynamic SQL query
EXEC sp_executesql @sql