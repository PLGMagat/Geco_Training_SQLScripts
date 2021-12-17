-- Creating a database

--CREATE DATABASE Puma

-- Deleting a database

--DROP DATABASE Puma

-- Activating a database

--USE Puma

-- Inserting table inside a database
/*
	CREATE TABLE Customer_Database(
		CustomerID INT,
		CustomerName VARCHAR(30),
		Age INT
	)
*/

-- Viewing the table

--SELECT * FROM Customer_Database

-- Select a specific column (Age) from table

--SELECT Age FROM Customer_Database

-- Inserting values inside the table

--INSERT INTO Customer_Database(CustomerID, CustomerName, Age)
--VALUES(2, 'LJ', 26) 

-- Client query
--SELECT *
--FROM Customer_Database
--WHERE Age > 25

-- Client query multiple conditions
--SELECT *
--FROM Customer_Database
--WHERE Age > 25
--	AND CustomerID > 3

--SELECT *
--FROM Customer_Database
--WHERE Age > 25
--	OR CustomerID > 3

--SELECT *
--FROM Customer_Database
--WHERE NOT CustomerName = 'Roman'

-- Altering the table ; add column
--ALTER TABLE Customer_Database
--ADD Sales FLOAT

-- Altering the table ; change datatype
--ALTER TABLE Customer_Database
--ALTER COLUMN Profit FLOAT

-- Altering the table ; drop column
--ALTER TABLE Customer_Database
--DROP COLUMN Profit

-- Update the table
--UPDATE Customer_Database
--SET Sales = 27.28
--WHERE CustomerID = 1

--UPDATE Customer_Database
--SET Sales = 29.28
--WHERE CustomerID = 2

--UPDATE Customer_Database
--SET Sales = 31.28
--WHERE CustomerID = 3

--UPDATE Customer_Database
--SET Sales = 33.28
--WHERE CustomerID = 4

--UPDATE Customer_Database
--SET Sales = 35.28
--WHERE CustomerID = 5

-------------------------------------------------------------------------------
--CREATE TABLE ProductInfo(
--	CustomerID INT,
--	ProductID INT,
--	ProductName VARCHAR(30)
--)

--INSERT INTO ProductInfo
--VALUES(1, 1, 'Boots')

--INSERT INTO ProductInfo
--VALUES(2, 2, 'Slides')

--INSERT INTO ProductInfo
--VALUES(3, 3, 'Lowtop')

--INSERT INTO ProductInfo
--VALUES(6, 4, 'Hightop')

--INSERT INTO ProductInfo
--VALUES(7, 5, 'Sports')

--SELECT *
--FROM Customer_Database a
--	LEFT OUTER JOIN ProductInfo  b ON b.CustomerID = a.CustomerID

--SELECT *
--FROM Customer_Database a
--	RIGHT OUTER JOIN ProductInfo  b ON b.CustomerID = a.CustomerID
