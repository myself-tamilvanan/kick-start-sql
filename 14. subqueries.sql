CREATE TABLE Salesman
(
salesman_id INTEGER PRIMARY KEY,
name VARCHAR(100),
city VARCHAR(50),
commission FLOAT
)

INSERT INTO Salesman
VALUES(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5003,'Lauson Hen','San Jose',0.12),
(5004,'Paul Adam','Rome',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Mary Nicol','London',0.13)

SELECT * FROM Salesman

CREATE TABLE Orders
(
ord_no INTEGER PRIMARY KEY,
purch_amt FLOAT,
ord_date DATE,
customer_id INTEGER,
salesman_id INTEGER
)

INSERT INTO Orders
VALUES(70001,150.5,'2022-10-05',3005,5002),
(70009,270.65,'2022-09-10',3001,5005),
(70002,65.26,'2022-10-05',3002,5001),
(70004,110.5,'2022-08-17',3009,5003),
(70007,948.5,'2022-09-10',3005,5002),
(70005,2400.6,'2022-07-27',3007,5004),
(70008,5760,'2022-09-10',3002,5001),
(70010,1983.43,'2022-10-10',3004,5006),
(70003,2480.4,'2022-10-10',3009,5003),
(70012,250.45,'2022-06-27',3008,5004),
(70011,75.29,'2022-08-17',3003,5007),
(70013,3045.6,'2022-04-25',3002,5001)

SELECT * FROM Orders

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

CREATE TABLE departments
(
DEPARTMENT_ID INTEGER,
DEPARTMENT_NAME VARCHAR(100),
MANAGER_ID INTEGER,
LOCATION_ID INTEGER
)

INSERT INTO departments
VALUES(10,'Administration',200,1700),
(20,'Marketing',201,1800),
(30,'Purchasing',114,1700),
(40,'Human Resources',203,2400),
(50,'Shipping',121,1500),
(60,'IT',103,1400),
(70,'Public Relations',204,2700),
(80,'Sales',145,2500),
(90,'Executive',100,1700),
(100,'Finance',108,1700),
(110,'Accounting',205,1700),
(120,'Treasury',0,1700),
(130,'Corporate Tax',0,1700),
(140,'Control And Credit',0,1700),
(150,'Shareholder Services',0,1700),
(160,'Benefits',0,1700),
(170,'Manufacturing',0,1700),
(180,'Construction',0,1700),
(190,'Contracting',0,1700),
(200,'Operations',0,1700),
(210,'IT Support',0,1700),
(220,'NOC',0,1700),
(230,'IT Helpdesk',0,1700),
(240,'Government Sales',0,1700),
(250,'Retail Sales',0,1700),
(260,'Recruiting',0,1700),
(270,'Payroll',0,1700)

SELECT * FROM departments

CREATE TABLE locations
(
LOCATION_ID INTEGER,
STREET_ADDRESS VARCHAR(200),
POSTAL_CODE VARCHAR(20),
CITY VARCHAR(100),
STATE_PROVINCE VARCHAR(50)
)

INSERT INTO locations
VALUES(1000,'1297 Via Cola di Rie','989','Roma',''),
(1100,'93091 Calle della Testa','10934','Venice',''),
(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture'),
(1300,'9450 Kamiya-cho','6823','Hiroshima',''),
(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas'),
(1500,'2011 Interiors Blvd','99236','South San Francisco','California'),
(1600,'2007 Zagora St','50090','South Brunswick','New Jersey'),
(1700,'2004 Charade Rd','98199','Seattle','Washington'),
(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario'),
(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon'),
(2000,'40-5-12 Laogianggen','190518','Beijing',''),
(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra'),
(2200,'12-98 Victoria Street','2901','Sydney','New South Wales'),
(2300,'198 Clementi North','540198','Singapore',''),
(2400,'8204 Arthur St','','London',''),
(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford'),
(2600,'9702 Chester Road','9629850293','Stretford','Manchester'),
(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria'),
(2800,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo'),
(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve'),
(3000,'Murtenstrasse 921','3095','Bern','BE'),
(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht'),
(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal')


SELECT * FROM locations


-----------------------------------------------------------------------------------------------------------------------------------------------------

--SELECT ALL THE ORDERS ISSUED BY 'Paul Adam'

SELECT * FROM Salesman WHERE name = 'Paul Adam'

SELECT * FROM Orders WHERE salesman_id = 5004

SELECT * FROM Orders WHERE salesman_id = (SELECT salesman_id FROM Salesman WHERE name = 'Paul Adam')

--SELECT ALL THE ORDERS ISSUED BY THE SALESMEN IN LONDON

SELECT salesman_id FROM Salesman WHERE city = 'London'

SELECT * FROM Orders WHERE salesman_id IN (5005,5007)

SELECT * FROM Orders WHERE salesman_id in (SELECT salesman_id FROM Salesman WHERE city = 'London')

--SELECT ALL THE EMPLOYEES WHOSE SALARY IS GREATER THAN AVERAGE SALARY OF ALL
--THE EMPLOYEES

SELECT * FROM employees 

SELECT AVG(SALARY) FROM employees

SELECT * FROM employees WHERE SALARY > 6461.83177570093

SELECT * FROM employees WHERE SALARY > (SELECT AVG(SALARY) FROM employees)
ORDER BY SALARY

SELECT * FROM employees WHERE SALARY < (SELECT AVG(SALARY) FROM employees)
ORDER BY SALARY

--SELECT ALL THE EMPLOYEES WHOSE DEPARTMENT IS LOCATED AT TORONTO

SELECT * FROM employees 

SELECT * FROM departments

SELECT * FROM locations

SELECT * FROM employees WHERE DEPARTMENT_ID IN (
SELECT DEPARTMENT_ID FROM departments WHERE LOCATION_ID IN (
SELECT LOCATION_ID FROM locations WHERE CITY = 'Toronto'))

--CREATE A NEW TABLE CALLED employees_Toronto AND INSERT ALL THE 
--EMPLOYEES FROM TORONTO

SELECT * INTO employees_Toronto FROM employees
WHERE 1=0

SELECT * FROM employees_Toronto

INSERT INTO employees_Toronto
SELECT * FROM employees WHERE DEPARTMENT_ID IN (
SELECT DEPARTMENT_ID FROM departments WHERE LOCATION_ID IN (
SELECT LOCATION_ID FROM locations WHERE CITY = 'Toronto'))

--UPDATE THE SALARY OF ALL THE EMPLOYEES WHOSE SALARY IS LESS THAN THE AVERAGE 
--SALARY TO AVERAGE SALARY

UPDATE employees
SET SALARY = (SELECT AVG(SALARY) FROM employees)
WHERE SALARY < (SELECT AVG(SALARY) FROM employees)

SELECT MIN(SALARY) FROM employees


--DELETE ALL THE EMPLOYEES WHOSE DEPARTMENT IS EITHER 'Administration'
--OR 'Marketing'

DELETE FROM employees
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments 
WHERE DEPARTMENT_NAME IN ('Administration','Marketing'))

SELECT * FROM employees

SELECT * FROM employees WHERE SALARY < (SELECT AVG(salary) FROM employees)

----CORRELATED SUBQUERY

/* LIST ALL EMPLOYEES WHOSE SALARY IS LESS
THAN THE AVG SALARY IN THAT DEPARTMENT */

SELECT * FROM employees e1 WHERE SALARY < ( SELECT AVG(salary) FROM employees e2 WHERE e2.DEPARTMENT = e1.DEPARTMENT)

SELECT * FROM employees e2 WHERE e2.DEPARTMENT_ID = 30

-- This file contains SQL queries that demonstrate the use of subqueries.
-- Subqueries are queries nested inside another query, often used to perform
-- complex filtering, aggregation, or to retrieve data that will be used in 
-- the main query.
SELECT AVG(salary) FROM employees e2 WHERE e2.DEPARTMENT_ID = 30
SELECT * FROM employees e1 WHERE SALARY < ( SELECT AVG(salary) FROM employees e2 WHERE e2.DEPARTMENT_ID = 30 ) AND e1.DEPARTMENT_ID = 30

-- EXISTS AND NOT EXISTS
DELETE FROM Orders WHERE salesman_id IN (5004,5007)
/*
This SQL query retrieves the names and email addresses of all users
from the 'users' table who have registered within the last 30 days.

The query performs the following steps:
1. Selects the 'name' and 'email' columns from the 'users' table.
2. Filters the results to include only those users whose 'registration_date'
  is within the last 30 days from the current date.

Columns:
- name: The name of the user.
- email: The email address of the user.

Table:
- users: Contains user information including name, email, and registration date.

Conditions:
- registration_date: The date when the user registered, filtered to be within
  the last 30 days from the current date.
*/
SELECT * FROM Salesman s WHERE EXISTS 
(SELECT 1 FROM orders o WHERE s.salesman_id = o.salesman_id)

-- This query selects all columns from the Salesman table (aliased as 's')
-- where there are no corresponding rows in a related subquery.
-- The NOT EXISTS condition is used to filter out rows where the subquery returns any results.
SELECT * FROM Salesman s WHERE NOT EXISTS 
(SELECT 1 FROM orders o WHERE s.salesman_id = o.salesman_id)