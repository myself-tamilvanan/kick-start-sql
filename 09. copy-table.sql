--Copy the Whole TABLE into another TABLE
SELECT * INTO Person.Address_Sample FROM Person.Address WHERE City = 'BOthell'

SELECT * FROM Person.Address_Sample

DROP TABLE Person.Address_Sample

--Copy Particular values into another TABLE
SELECT AddressLine1, City, PostalCode INTO Person.Address_Sample FROM Person.Address WHERE City = 'Bothell'

--Copy Particular values into another TABLE
INSERT INTO Person.Address_Sample SELECT AddressLine1, City, PostalCode FROM Person.Address WHERE City = 'Melbourne'

--Copy the Whole TABLE into another DB Engine's TABLE
SELECT * INTO universities.dbo.Address_Sample FROM Person.Address WHERE City = 'BOthell'

SELECT * FROM universities.dbo.Address_Sample

DROP TABLE universities.dbo.Address_Sample