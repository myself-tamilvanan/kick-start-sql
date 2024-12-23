
SELECT * FROM Production.Product WHERE ProductNumber like 'FC%'

SELECT * FROM Production.Product WHERE Name like '%Cage'

SELECT * FROM Production.Product WHERE Name like '%Frame%'

SELECT * FROM Production.Product WHERE ProductNumber like 'FR%R38%2'

SELECT * FROM Production.Product WHERE ProductNumber like 'FR-R38B-_2'

SELECT * FROM Production.Product WHERE ProductNumber like '_R%'

SELECT * FROM Person.Person WHERE FirstName like 'A[ab]%'

SELECT * FROM Person.Address WHERE AddressLine1 like '[a-z]%' 

SELECT * FROM Person.Address WHERE AddressLine1 like '[0-9]%' 

SELECT * FROM Person.Address WHERE AddressLine1 like '[a-z0-9]%' 

SELECT * FROM Person.Address WHERE AddressLine1 like '[a-z0-9#$]%' 

SELECT * FROM Person.Address WHERE PostalCode like '[0-9][0-9][0-9][0-9][0-9]'

SELECT * FROM Production.Product WHERE ProductNumber like 'FR-R92%'

SELECT * FROM Production.Product WHERE ProductNumber like 'FR-R92[^B]%'

SELECT * FROM Person.Address WHERE AddressLine1 like '[^a-z0-9]%'

SELECT * FROM Person.Address WHERE AddressLine1 like '%_%'

SELECT * FROM Person.Address WHERE AddressLine1 like '%[_]%'

SELECT * FROM Person.Address WHERE AddressLine1 like '%[0-9][0-9][0-9][0-9]%St.'

SELECT * FROM Person.Address WHERE AddressLine1 like '[^0-9]%' and PostalCode like '4[0-9][0-9][0-9]' and City like '_o%'