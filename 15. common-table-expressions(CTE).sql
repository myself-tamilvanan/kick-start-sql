USE AdventureWorks2022

SELECT * FROM [Production].[Product]

select * from [Purchasing].[Vendor]

SELECT * FROM [Production].[ProductInventory]

SELECT PI.ProductID,P.Name AS ProductName,PV.StandardPrice, PV.BusinessEntityID,
V.Name AS VendorName,V.CreditRating FROM
(SELECT ProductID,SUM(QUANTITY) AS Total_Quantity
FROM [Production].[ProductInventory]
GROUP BY ProductID
HAVING SUM(QUANTITY) < 100) PI
JOIN [Purchasing].[ProductVendor] PV
ON PI.ProductID = PV.ProductID
JOIN [Production].[Product] P
ON PV.ProductID = P.ProductID
JOIN [Purchasing].[Vendor] V
ON PV.BusinessEntityID = V.BusinessEntityID


WITH low_quantity_products AS
(SELECT ProductID,SUM(QUANTITY) AS Total_Quantity
FROM [Production].[ProductInventory]
GROUP BY ProductID
HAVING SUM(QUANTITY) < 100),

get_price as (
SELECT QP.ProductID,Total_Quantity,PV.StandardPrice, PV.BusinessEntityID 
FROM low_quantity_products QP
JOIN [Purchasing].[ProductVendor] PV
ON QP.ProductID = PV.ProductID)

SELECT GP.ProductID,P.Name AS ProductName,GP.StandardPrice, GP.BusinessEntityID,
V.Name AS VendorName,V.CreditRating FROM get_price GP
JOIN [Production].[Product] P
ON GP.ProductID = P.ProductID
JOIN [Purchasing].[Vendor] V
ON GP.BusinessEntityID = V.BusinessEntityID