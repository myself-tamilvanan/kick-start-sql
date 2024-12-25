SELECT ProductID FROM Production.Product

-- Aggregate - COUNT
SELECT COUNT(ProductID) AS no_of_products FROM Production.Product

-- Aggregate - SUM
SELECT SUM(ListPrice) AS total_price FROM Production.Product

-- Aggregate - MIN
SELECT MIN(ListPrice) AS min_price FROM Production.Product

-- Aggregate - MAX
SELECT MAX(ListPrice) AS max_Price FROM Production.Product

-- Aggregate - AVG
SELECT AVG(ListPrice) AS avg_price FROM Production.Product

-- Aggregate - GROUP BY
SELECT Color, COUNT(ProductID) FROM Production.Product 
WHERE Color IS NOT NULL 
GROUP BY Color

-- Aggregate - GROUP BY multiple column
SELECT Color, Size, COUNT(ListPrice) AS no_of_list_price FROM Production.Product 
WHERE Color IS NOT NULL AND Size IS NOT NULL 
GROUP BY Color, Size

SELECT Color, Size, AVG(ListPrice) AS avg_list_price FROM Production.Product 
WHERE Color IS NOT NULL AND Size IS NOT NULL 
GROUP BY Color, Size

-- Aggregate - ORDER BY multiple column
SELECT Color, Size, AVG(ListPrice) AS avg_list_price FROM Production.Product 
WHERE Color IS NOT NULL AND Size IS NOT NULL 
GROUP BY Color, Size 
ORDER BY Color, Size

-- Aggregate - HAVING
SELECT Color, COUNT(ProductID) AS num_of_products FROM Production.Product 
WHERE Color IS NOT NULL
GROUP BY Color
HAVING COUNT(ProductID) > 10

SELECT Color, COUNT(ProductID) AS num_of_products FROM Production.Product 
WHERE Color IS NOT NULL
GROUP BY Color
HAVING SUM(ListPrice) > 300

-- Aggregate - DISTINCTION
SELECT DISTINCT Color FROM Production.Product

SELECT DISTINCT Color, Size FROM Production.Product
WHERE Color IS NOT NULL AND Size IS NOT NULL 
ORDER BY Color, Size