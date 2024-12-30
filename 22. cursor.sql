CREATE TABLE SalesData (
    ID INT PRIMARY KEY,
    Value INT,
    RunningTotal INT
);


INSERT INTO SalesData (ID, Value)
VALUES (1, 10), (2, 20), (3, 15), (4, 25), (5, 30);

SELECT * FROM SalesData;

DECLARE @Id INT;
DECLARE @value INT;
DECLARE @runningTotal INT = 0;

DECLARE RunningTotalCursor Cursor FOR
SELECT ID, Value from SalesData
ORDER BY ID;

OPEN RunningTotalCursor
FETCH NEXT FROM RunningTotalCursor INTO @Id, @value

WHILE @@FETCH_STATUS = 0
BEGIN
	SET @runningTotal = @runningTotal + @value
	Update SalesData set RunningTotal = @runningTotal where Id = @Id
	FETCH NEXT FROM RunningTotalCursor INTO @Id, @value
END
CLOSE RunningTotalCursor
DEALLOCATE RunningTotalCursor


SELECT * FROM SalesData;


----------------------------------------------

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    SubscriptionExpired bit
);


INSERT INTO Users (UserID, FirstName, LastName, Email,SubscriptionExpired)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com',1),
(2, 'Jane', 'Smith', 'jane.smith@example.com',0),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com',1);

SELECT * FROM Users;


DECLARE @userid INT
DECLARE @emailID VARCHAR(50)
DECLARE @subject VARCHAR(50)
DECLARE @message VARCHAR(200)

DECLARE UserCursor CURSOR FOR
SELECT UserID, Email from Users WHERE SubscriptionExpired = 1

OPEN UserCursor
FETCH NEXT FROM UserCursor INTO @userid,@emailID

WHILE @@FETCH_STATUS = 0
BEGIN
	SET @subject = 'Subscription Expiry Notification'
	SET @message = 'Hi User, Your subscription has been expired. Please renew to continue the services'

	EXEC msdb.dbo.sp_send_dbmail 
	@profile_name = 'Notifications',
	@recipients = @emailID,
	@subject = @subject,
	@body = @message
	FETCH NEXT FROM UserCursor INTO @userid,@emailID
END

CLOSE UserCursor
DEALLOCATE UserCursor