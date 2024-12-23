--WHERE CLAUSE for NUMBER
-- USING 

USE AdventureWorks2022

SELECT * FROM Production.Product WHERE ProductID = 322

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE ProductID >= 350

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE ProductID <= 900

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE ProductID >= 350 and ProductID <= 900

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE ProductID between 350 and 900

--WHERE CLAUSE for STRING

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color = 'Red'

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color <> 'Red'

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color in ('Silver', 'Gold', 'Red')

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color not in ('Silver', 'Gold', 'Red')

--WHERE CLAUSE for MULTIPLE CONDITIONS

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color = 'Silver' and ProductID >=900

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color = 'Red' or ProductID >=900

--WHERE CLAUSE for NULL

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color is null

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color is not null

--WHERE CLAUSE FOR DATE RANGE

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE SellStartDate = '2008-11-20'

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE SellStartDate between '2012-09-01' and '2013-11-30'

--WHERE CLAUSE EXERCISE

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE Color in ('Black', 'YELLOW') and Size = 'S' and SellEndDate is NULL

SELECT ProductID, Color, SellStartDate, SellEndDate, ListPrice FROM Production.Product WHERE ProductID between 800 and 900 and Color = 'Silver' and ListPrice > 100