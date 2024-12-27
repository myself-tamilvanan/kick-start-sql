SELECT ProductID INTO #Products FROM Production.Product
WHERE ModifiedDate >= '2014-02-08'

SELECT * FROM #Products

CREATE TABLE #Products2
(
ProductID integer
)

INSERT INTO #Products2
SELECT ProductID FROM Production.Product
WHERE ModifiedDate >= '2014-02-08'

SELECT * FROM #Products2

SELECT PI.* FROM [Production].[ProductInventory] PI
JOIN #Products P
ON PI.ProductID = P.ProductID

SELECT PI.* FROM [Production].ProductCostHistory PI
JOIN #Products P
ON PI.ProductID = P.ProductID

-- This SQL script creates a temporary table named ##Products and populates it 
-- with data from the Production.Product table. The data selected includes 
-- only those rows where the ModifiedDate is on or after '2014-02-08'.
-- The double hash (##) indicates that the temporary table is a global temporary table.
SELECT ProductID INTO ##Products FROM Production.Product
WHERE ModifiedDate >= '2014-02-08'

SELECT * FROM ##Products