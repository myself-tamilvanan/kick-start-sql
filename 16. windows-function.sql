
CREATE TABLE employees
(
EMPLOYEE_ID INTEGER PRIMARY KEY,
FIRST_NAME VARCHAR(100),
LAST_NAME VARCHAR(100),
SALARY FLOAT,
MANAGER_ID INTEGER,
DEPARTMENT_ID INTEGER
)

INSERT INTO employees
VALUES(100,'Steven','King',24000,0,90),
(101,'Neena','Kochhar',17000,100,90),
(102,'Lex','De Haan',17000,100,90),
(103,'Alexander','Hunold',9000,102,60),
(104,'Bruce','Ernst',6000,103,60),
(105,'David','Austin',4800,103,60),
(106,'Valli','Pataballa',4800,103,60),
(107,'Diana','Lorentz',4200,103,60),
(108,'Nancy','Greenberg',12008,101,100),
(109,'Daniel','Faviet',9000,108,100),
(110,'John','Chen',8200,108,100),
(111,'Ismael','Sciarra',7700,108,100),
(112,'Jose Manuel','Urman',7800,108,100),
(113,'Luis','Popp',6900,108,100),
(114,'Den','Raphaely',11000,100,30),
(115,'Alexander','Khoo',3100,114,30),
(116,'Shelli','Baida',2900,114,30),
(117,'Sigal','Tobias',2800,114,30),
(118,'Guy','Himuro',2600,114,30),
(119,'Karen','Colmenares',2500,114,30),
(120,'Matthew','Weiss',8000,100,50),
(121,'Adam','Fripp',8200,100,50),
(122,'Payam','Kaufling',7900,100,50),
(123,'Shanta','Vollman',6500,100,50),
(124,'Kevin','Mourgos',5800,100,50),
(125,'Julia','Nayer',3200,120,50),
(126,'Irene','Mikkilineni',2700,120,50),
(127,'James','Landry',2400,120,50),
(128,'Steven','Markle',2200,120,50),
(129,'Laura','Bissot',3300,121,50),
(130,'Mozhe','Atkinson',2800,121,50),
(131,'James','Marlow',2500,121,50),
(132,'TJ','Olson',2100,121,50),
(133,'Jason','Mallin',3300,122,50),
(134,'Michael','Rogers',2900,122,50),
(135,'Ki','Gee',2400,122,50),
(136,'Hazel','Philtanker',2200,122,50),
(137,'Renske','Ladwig',3600,123,50),
(138,'Stephen','Stiles',3200,123,50),
(139,'John','Seo',2700,123,50),
(140,'Joshua','Patel',2500,123,50),
(141,'Trenna','Rajs',3500,124,50),
(142,'Curtis','Davies',3100,124,50),
(143,'Randall','Matos',2600,124,50),
(144,'Peter','Vargas',2500,124,50),
(145,'John','Russell',14000,100,80),
(146,'Karen','Partners',13500,100,80),
(147,'Alberto','Errazuriz',12000,100,80),
(148,'Gerald','Cambrault',11000,100,80),
(149,'Eleni','Zlotkey',10500,100,80),
(150,'Peter','Tucker',10000,145,80),
(151,'David','Bernstein',9500,145,80),
(152,'Peter','Hall',9000,145,80),
(153,'Christopher','Olsen',8000,145,80),
(154,'Nanette','Cambrault',7500,145,80),
(155,'Oliver','Tuvault',7000,145,80),
(156,'Janette','King',10000,146,80),
(157,'Patrick','Sully',9500,146,80),
(158,'Allan','McEwen',9000,146,80),
(159,'Lindsey','Smith',8000,146,80),
(160,'Louise','Doran',7500,146,80),
(161,'Sarath','Sewall',7000,146,80),
(162,'Clara','Vishney',10500,147,80),
(163,'Danielle','Greene',9500,147,80),
(164,'Mattea','Marvins',7200,147,80),
(165,'David','Lee',6800,147,80),
(166,'Sundar','Ande',6400,147,80),
(167,'Amit','Banda',6200,147,80),
(168,'Lisa','Ozer',11500,148,80),
(169,'Harrison','Bloom',10000,148,80),
(170,'Tayler','Fox',9600,148,80),
(171,'William','Smith',7400,148,80),
(172,'Elizabeth','Bates',7300,148,80),
(173,'Sundita','Kumar',6100,148,80),
(174,'Ellen','Abel',11000,149,80),
(175,'Alyssa','Hutton',8800,149,80),
(176,'Jonathon','Taylor',8600,149,80),
(177,'Jack','Livingston',8400,149,80),
(178,'Kimberely','Grant',7000,149,0),
(179,'Charles','Johnson',6200,149,80),
(180,'Winston','Taylor',3200,120,50),
(181,'Jean','Fleaur',3100,120,50),
(182,'Martha','Sullivan',2500,120,50),
(183,'Girard','Geoni',2800,120,50),
(184,'Nandita','Sarchand',4200,121,50),
(185,'Alexis','Bull',4100,121,50),
(186,'Julia','Dellinger',3400,121,50),
(187,'Anthony','Cabrio',3000,121,50),
(188,'Kelly','Chung',3800,122,50),
(189,'Jennifer','Dilly',3600,122,50),
(190,'Timothy','Gates',2900,122,50),
(191,'Randall','Perkins',2500,122,50),
(192,'Sarah','Bell',4000,123,50),
(193,'Britney','Everett',3900,123,50),
(194,'Samuel','McCain',3200,123,50),
(195,'Vance','Jones',2800,123,50),
(196,'Alana','Walsh',3100,124,50),
(197,'Kevin','Feeney',3000,124,50),
(198,'Donald','OConnell',2600,124,50),
(199,'Douglas','Grant',2600,124,50),
(200,'Jennifer','Whalen',4400,101,10),
(201,'Michael','Hartstein',13000,100,20),
(202,'Pat','Fay',6000,201,20),
(203,'Susan','Mavris',6500,101,40),
(204,'Hermann','Baer',10000,101,70),
(205,'Shelley','Higgins',12008,101,110),
(206,'William','Gietz',8300,205,110)

SELECT * FROM employees

SELECT SUM(SALARY) AS total_salary FROM employees

SELECT DEPARTMENT_ID, AVG(SALARY) as avg_salary FROM employees GROUP BY DEPARTMENT_ID

SELECT *, SUM(SALARY) OVER() AS TOTAL_SALARY FROM employees

SELECT *, SUM(SALARY) OVER(PARTITION BY DEPARTMENT_ID) AS TOTAL_SALARY FROM employees

SELECT *, AVG(SALARY) OVER(PARTITION BY DEPARTMENT_ID) AS AVG_SALARY FROM employees

SELECT *, SUM(SALARY) OVER(PARTITION BY DEPARTMENT_ID ORDER BY FIRST_NAME) AS TOTAL_SALARY FROM employees

SELECT *, MIN(SALARY) OVER(PARTITION BY DEPARTMENT_ID ORDER BY EMPLOYEE_ID) AS MIN_SALARY FROM employees

USE AdventureWorks2022

SELECT ProductID,StandardCost,ModifiedDate
FROM Production.ProductCostHistory
ORDER BY ProductID,ModifiedDate

-- This query retrieves the ProductID, StandardCost, and ModifiedDate from the Production.ProductCostHistory table.
-- It also calculates the initial and final values of StandardCost for each ProductID using window functions.
-- The FIRST_VALUE function is used to get the initial StandardCost for each ProductID based on the earliest ModifiedDate.
-- The LAST_VALUE function is used to get the final StandardCost for each ProductID based on the latest ModifiedDate.
-- The results are partitioned by ProductID and ordered by ModifiedDate.
-- The final result set is ordered by ProductID and ModifiedDate.
SELECT ProductID, StandardCost, ModifiedDate,
FIRST_VALUE(StandardCost) OVER(PARTITION BY ProductID ORDER BY ModifiedDate) AS Initial_value,
LAST_VALUE(StandardCost) OVER(PARTITION BY ProductID ORDER BY ModifiedDate
RANGE BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING) AS Final_value
FROM Production.ProductCostHistory
ORDER BY ProductID, ModifiedDate


-- This query retrieves the ProductID, StandardCost, and ModifiedDate from the Production.ProductCostHistory table.
-- It also calculates the previous and next StandardCost values for each product using window functions.
-- The LAG function is used to get the previous StandardCost value, with a default of 0 if there is no previous value.
-- The LEAD function is used to get the next StandardCost value.
-- The results are partitioned by ProductID and ordered by ModifiedDate.
-- Finally, the results are ordered by ProductID and ModifiedDate.
SELECT ProductID, StandardCost, ModifiedDate,
LAG(StandardCost, 1, 0) OVER(PARTITION BY ProductID ORDER BY ModifiedDate) AS Previous_value,
LEAD(StandardCost) OVER(PARTITION BY ProductID ORDER BY ModifiedDate) AS Next_value
FROM Production.ProductCostHistory
ORDER BY ProductID, ModifiedDate

-- This Common Table Expression (CTE) named 'Latest_data' retrieves the latest cost data for each product.
-- It selects the ProductID, StandardCost, and ModifiedDate from the Production.ProductCostHistory table.
-- The ROW_NUMBER() window function is used to assign a unique row number to each row within a partition of ProductID,
-- ordered by ModifiedDate in descending order. This ensures that the most recent cost data for each product is given a row number of 1.
WITH Latest_data as (
SELECT ProductID,StandardCost,ModifiedDate,
ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY ModifiedDate DESC) AS Rno
FROM Production.ProductCostHistory)

SELECT * FROM Latest_data WHERE Rno = 1

USE universities

-- This SQL query selects all columns from the 'employees' table and calculates two ranking values:
-- 1. Rank: The rank of each employee within their department based on their salary in descending order.
--    Ties in salary will result in the same rank, but the next rank will be skipped (e.g., 1, 2, 2, 4).
-- 2. DenseRank: Similar to Rank, but ties in salary will not result in skipped ranks (e.g., 1, 2, 2, 3).
-- The results are partitioned by 'DEPARTMENT_ID', meaning the ranking is calculated separately for each department.
SELECT *,
RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS Rank,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DenseRank
FROM employees

-- This query selects all columns from the 'employees' table and adds an additional column 'BUCKET'.
-- The 'BUCKET' column is generated using the NTILE window function, which divides the result set into 10 approximately equal parts (buckets).
-- The rows are ordered by the 'SALARY' column in descending order before being divided into buckets.
SELECT *,
NTILE(10) OVER(ORDER BY SALARY DESC) AS BUCKET
FROM employees

-- This query selects all columns from the employees table and adds two additional columns:
-- Rank: The rank of each employee's salary within their department, with gaps in the ranking.
-- DenseRank: The rank of each employee's salary within their department, without gaps in the ranking.
-- The WINDOW clause defines a window named 'Win' that partitions the data by DEPARTMENT_ID and orders it by SALARY in descending order.
SELECT *,
RANK() OVER Win AS Rank,
DENSE_RANK() OVER Win AS DenseRank
FROM employees
WINDOW Win as (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC)
