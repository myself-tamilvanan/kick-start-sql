WITH generate_numbers AS (
SELECT 1 AS number

UNION ALL

SELECT number + 1
FROM generate_numbers
WHERE number < 50
)

SELECT * FROM generate_numbers

--------------------------------------------------------

WITH generate_numbers AS (
SELECT 1 AS number

UNION ALL

SELECT number + 1
FROM generate_numbers
WHERE number < 200
)

SELECT * FROM generate_numbers
OPTION (MAXRECURSION 250)

----------------------------------------------------------
WITH generate_date AS (
SELECT CAST('2024-01-01' AS date) AS dateCreated

UNION ALL

SELECT DATEADD(day,1,dateCreated)
FROM generate_date
WHERE dateCreated < '2024-03-01'
)

SELECT * FROM generate_date
-------------------------------------------------------------

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(50),
    ManagerID INT,
    CONSTRAINT FK_Manager FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

-- Insert sample data with at least four levels of hierarchy
INSERT INTO Employee (EmployeeID, EmployeeName, ManagerID) VALUES
    (1, 'CEO', NULL),
    (2, 'Manager1', 1),
    (3, 'Manager2', 1),
    (4, 'Manager3', 1),
    (5, 'Employee1-1', 2),
    (6, 'Employee1-2', 2),
    (7, 'Employee2-1', 3),
    (8, 'Employee2-2', 3),
    (9, 'Employee3-1', 4),
    (10, 'Employee3-2', 4),
    (11, 'Employee1-1-1', 5),
    (12, 'Employee1-1-2', 5),
    (13, 'Employee2-2-1', 8),
    (14, 'Employee2-2-2', 8),
    (15, 'Employee3-2-1', 10),
    (16, 'Employee3-2-2', 10);

------------------------------------------------------------------

WITH EmployeeHierarchy AS (

SELECT *,
1 AS Level
FROM Employee
WHERE ManagerID IS NULL

UNION ALL

SELECT 
e.EmployeeID,
e.EmployeeName,
e.ManagerID,
level + 1
FROM Employee e
JOIN EmployeeHierarchy eh
ON e.ManagerID = eh.EmployeeID
)

SELECT * FROM EmployeeHierarchy
ORDER BY Level,EmployeeID

-------------------------------------------

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(50),
    ComponentID INT,
    Quantity INT,
    CONSTRAINT FK_Component FOREIGN KEY (ComponentID) REFERENCES Product(ProductID)
);


INSERT INTO Product (ProductID, ProductName, ComponentID, Quantity) VALUES
    (1, 'Product A', NULL, NULL),      
    (2, 'Sub-Component A1', 1, 2),
    (3, 'Sub-Component A2', 1, 3),
    (4, 'Product B', NULL, NULL),      
    (5, 'Sub-Component B1', 4, 2),
    (6, 'Sub-Component B2', 4, 1),
    (7, 'Sub-Sub-Component B2.1', 6, 3),
    (8, 'Product C', NULL, NULL);    

-------------------------------------------

WITH ProductHierarchy AS (
SELECT *, 1 AS level FROM Product
WHERE ComponentID IS NULL
UNION ALL

SELECT
p.ProductID,
p.ProductName,
p.ComponentID,
p.Quantity,
level + 1
FROM Product p
JOIN ProductHierarchy ph
ON p.ComponentID = ph.ProductID
)

SELECT * FROM ProductHierarchy
ORDER BY level,ProductID