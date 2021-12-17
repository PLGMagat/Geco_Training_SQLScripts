-- Joining 2 tables
-- Key = CustomerID
/*
	SELECT *
	FROM ParentTable
		INNER JOIN ChildTable ON ParentTable.PrimaryKey = ChildTable.PrimaryKey
*/

-- INNER JOIN
--SELECT *
--FROM Customer_Database
--	INNER JOIN ProductInfo ON Customer_Database.CustomerID = ProductInfo.CustomerID

-- FULL OUTER JOIN
--SELECT *
--FROM Customer_Database
--	FULL OUTER JOIN ProductInfo ON Customer_Database.CustomerID = ProductInfo.CustomerID

-- LEFT JOIN
--SELECT *
--FROM Customer_Database
--	LEFT JOIN ProductInfo ON Customer_Database.CustomerID = ProductInfo.CustomerID

-- RIGHT JOIN
--SELECT *
--FROM Customer_Database
--	RIGHT JOIN ProductInfo ON Customer_Database.CustomerID = ProductInfo.CustomerID

-------------------------------------------------------------------------------
--CREATE TABLE Customer_Database_2(
--	CustomerID INT,
--	CustomerName VARCHAR(30),
--	Age INT
--)

--INSERT INTO Customer_Database_2(CustomerID, CustomerName, Age)
--VALUES(7, 'Ben', 30)
--INSERT INTO Customer_Database_2(CustomerID, CustomerName, Age)
--VALUES(8, 'Dell', 31) 
--INSERT INTO Customer_Database_2(CustomerID, CustomerName, Age)
--VALUES(9, 'Lenovo', 32) 
--INSERT INTO Customer_Database_2(CustomerID, CustomerName, Age)
--VALUES(10, 'HP', 33) 
--INSERT INTO Customer_Database_2(CustomerID, CustomerName, Age)
--VALUES(11, 'MSI', 34) 

--ALTER TABLE Customer_Database_2
--ADD Sales FLOAT

-------------------------------------------------------------------------------

-- UNION
/*
SELECT *
FROM Customer_Database

UNION ALL

SELECT *
FROM Customer_Database_2
*/

-------------------------------------------------------------------------------

--SELECT *
--FROM [dbo].[Orders$]

--SELECT *
--FROM [dbo].[Users$]

--SELECT *
--FROM [dbo].[Returns$]

--SELECT *
--FROM [dbo].[Orders$]
--	INNER JOIN [dbo].[Users$] ON [dbo].[Users$].Region = [dbo].[Orders$].Region
--	INNER JOIN [dbo].[Returns$] ON [dbo].[Returns$].[Order ID] = [dbo].[Orders$].[Order ID]

-- Sorting

--SELECT *
--FROM [dbo].[Orders$]
--ORDER BY [ROW ID] DESC

-- Wildcard

--SELECT *
--FROM [dbo].[Orders$]
--WHERE [Customer Name] LIKE '%k'

-- Aggregate Functions
--SELECT SUM(Sales) FROM [dbo].[Orders$]
--SELECT MIN(Sales) FROM [dbo].[Orders$]
--SELECT MAX(Sales) FROM [dbo].[Orders$]
--SELECT AVG(Sales) FROM [dbo].[Orders$]
--SELECT COUNT(Sales) FROM [dbo].[Orders$]

-- Aliasing
--SELECT SUM(Sales) AS [Sum] FROM [dbo].[Orders$]
--SELECT MIN(Sales) AS [Min] FROM [dbo].[Orders$]
--SELECT MAX(Sales) AS [Max] FROM [dbo].[Orders$]
--SELECT AVG(Sales) AS [Average] FROM [dbo].[Orders$]
--SELECT COUNT(Sales) AS [Count] FROM [dbo].[Orders$]

-- Group By
--SELECT SUM(Sales) AS [SumOfSales], Region
--FROM [dbo].[Orders$]
--GROUP BY Region

-- Having Operator (WHERE for aggregate)
--SELECT SUM(Sales) AS [SumOfSales], Region
--FROM [dbo].[Orders$]
--GROUP BY Region
--HAVING Region = 'East'

-- Creating a View
--CREATE VIEW Group_By_Table AS(
--	SELECT SUM(Sales) AS [SumOfSales], Region
--	FROM [dbo].[Orders$]
--	GROUP BY Region
--)

-- Selecting a View
--SELECT *
--FROM [dbo].Group_By_Table
--WHERE Region = 'West'

-------------------------------------------------------------------------------
-- Window Functions

-- RANK
--SELECT *, RANK() OVER(ORDER BY Sales DESC) AS [Rank]
--FROM [dbo].[Orders$]

-- DENSE_RANK
--SELECT *, DENSE_RANK() OVER(ORDER BY Sales DESC) AS [DenseRank]
--FROM [dbo].[Orders$]

/*
1. Create a table with identical duplicates, column names (CustomerID, CustomerName, Sales)
2. 10 Records minimum


Example:
	CustomerID, CustomerName, Sales
	1, Sam, 23
	1, Sam, 23
	1, Sam, 23
	2, LJ, 22
	2, LJ, 22
	3, Timothy, 24
	3, Timothy, 24
	3, Timothy, 24
	3, Timothy, 24
	3, Timothy, 24
	4, Roman, 25
	4, Roman, 25
	4, Roman, 25
	4, Roman, 25
*/

/*
Tomorrow topics

Advance Functions
Windows Functions
If-Else Statement
Case Statement
Numeric Functions
String Functions
Stored Procedures
Triggers
Deployment in GitHub
Connecting SQL Server to PowerBI
*/