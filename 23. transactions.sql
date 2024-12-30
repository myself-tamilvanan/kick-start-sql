-- Create BankAccount table
CREATE TABLE BankAccount (
    AccountID INT PRIMARY KEY IDENTITY(1,1),
    AccountNumber VARCHAR(20) NOT NULL,
    Balance DECIMAL(10, 2) NOT NULL
);

-- Insert records into BankAccount table
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('1234567890', 6000.50);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('2345678901', 7000.75);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('3456789012', 8000.60);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('4567890123', 9000.45);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('5678901234', 10000.30);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('6789012345', 11000.25);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('7890123456', 12000.20);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('8901234567', 13000.15);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('9012345678', 14000.10);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('0123456789', 15000.05);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('1122334455', 16000.00);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('2233445566', 17000.95);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('3344556677', 18000.90);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('4455667788', 19000.85);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('5566778899', 20000.80);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('6677889900', 21000.75);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('7788990011', 22000.70);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('8899001122', 23000.65);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('9900112233', 24000.60);
INSERT INTO BankAccount (AccountNumber, Balance) VALUES ('0011223344', 25000.55);

SELECT * FROM BankAccount


---------------------------------------------

SELECT * FROM BankAccount WHERE AccountNumber IN ('1122334455', '3456789012')

BEGIN TRANSACTION
UPDATE BankAccount SET Balance = Balance - 1000 WHERE AccountNumber = '1122334455'

--SELECT 1/0

UPDATE BankAccount SET Balance = Balance + 1000 WHERE AccountNumber = '3456789012'

IF @@ERROR <> 0
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

----------------------------------------------------------

SELECT * FROM employees

BEGIN TRANSACTION

INSERT INTO employees
VALUES(208,'Anitha','Ram',30000,101,90)

SAVE TRANSACTION FIRST_INSERT

INSERT INTO employees
VALUES(209,'Murali','Vijay',28000,122,50)

SELECT (1/0)

IF @@ERROR <> 0
	ROLLBACK TRANSACTION FIRST_INSERT
ELSE
	COMMIT TRANSACTION

-------------------------------