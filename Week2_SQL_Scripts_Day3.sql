USE [Puma]

--CREATE TABLE Customer_Database_Dup(
--	CustomerID INT,
--	CustomerName VARCHAR(30),
--	Age INT
--)


--INSERT INTO Customer_Database_Dup(CustomerID, CustomerName, Age)
--VALUES(1, 'Sam', 23),
--	(1, 'Sam', 23),
--	(1, 'Sam', 23),
--	(2, 'LJ', 22),
--	(2, 'LJ', 22),
--	(3, 'Timothy', 24),
--	(3, 'Timothy', 24),
--	(3, 'Timothy', 24),
--	(3, 'Timothy', 24),
--	(3, 'Timothy', 24),
--	(4, 'Roman', 25),
--	(4, 'Roman', 25),
--	(4, 'Roman', 25),
--	(4, 'Roman', 25)

-------------------------------------------------------------------------------
-- Advanced functions

--Select CURRENT_TIMESTAMP -- Current laptop / desktop time
--Select DAY ('2020-12-05')
--Select GETDATE ()
--Select GETUTCDATE ()
--Select ISDATE ('2020-12-05')
--Select MONTH ('2020-12-05')
--Select SYSDATETIME ()
--Select YEAR ('2020-12-05')
--Select COALESCE (null,null,null,'sneha','Besant')    --takes first non null value
--Select CONVERT (int,26.85)      
--Select SESSION_USER -- current working on the session
--Select SYSTEM_USER
--Select USER_NAME ()

-- String Functions

--SELECT CHAR (75)
--SELECT CONCAT ('Patrick Lawrence',' ','Magat')
--SELECT DATALENGTH ('SURESH U')
--SELECT LEFT('SURESH',2)
--select LEN('SURESH')
--SELECT LOWER('SURESH')
--SELECT LTRIM('   SURESH')
--select REPLACE('SURESH','S','R')
--SELECT REPLICATE('SURESH ',5)    
--select REVERSE('SURESH')
--SELECT RIGHT('SURESH',2)
--SELECT RTRIM('SURESH   ')
--SELECT SUBSTRING('SURESH',3,2)
--select UNICODE('A')                  -- Reverse of Char
--select UPPER('suresh unnikrishnan')

--**Numeric functions
 
/**ABS Returns the absolute value of a number**/
Select ABS(-18)
 
/**ACOS Returns the arc cosine of a number**/
Select Acos (0.5)
 
/**ASIN Returns the arc sine of a number**/
Select ASIN(0.5)
 
/**ATAN Returns the arc tangent of one or two numbers**/
Select ATAN(0.5)
 
/**CEILING Returns the smallest integer value that is >= to a number**/
Select CEILING(26.10)

/**COS Returns the cosine of a number**/
Select Cos(90)

/**COT Returns the cotangent of a number**/
Select Cot(90)

/**DEGREES Converts a value in radians to degrees**/
Select DEGREES(1)
 
/**EXP Returns e raised to the power of a specified number**/
Select EXP(1)
 
/**FLOOR Returns the largest integer value that is <= to a number**/
Select FLOOR(25.90)
 
/**LOG Returns the natural logarithm of a number, or the logarithm of a number to a specified base**/
Select Log(2)
 
/**LOG10 Returns the natural logarithm of a number to base 10**/
Select LOG10(10)
 
/**PI Returns the value of PI**/
Select PI()
 
/**POWER Returns the value of a number raised to the power of another number**/
Select POWER(2,3)
 
/**RADIANS Converts a degree value into radians**/
Select Radians(90)
 
/**RAND Returns a random number**/
Select Rand()
 
/**ROUND Rounds a number to a specified number of decimal places**/
Select ROUND(25.68,1)
 
/**SIGN Returns the sign of a number**/
Select sign (-9)
 

/**SIN Returns the sine of a number**/
Select sin (45)
 
/**SQRT Returns the square root of a number**/
Select sqrt (64)
 
/**TAN Returns the tangent of a number**/
Select TAN(90)

-- ----------------------------------------------------------------------------
--Create table tb4
--(
-- ID int,
-- FirstName nvarchar(50),
-- LastName nvarchar(50),
-- Gender nvarchar(50),
-- Salary int
--)
--GO

--Insert into tb4 values (1, 'Mark', 'Hastings', 'Male', 60000)
--Insert into tb4 values (1, 'Mark', 'Hastings', 'Male', 60000)
--Insert into tb4 values (1, 'Mark', 'Hastings', 'Male', 60000)
--Insert into tb4 values (2, 'Mary', 'Lambeth', 'Female', 30000)
--Insert into tb4 values (2, 'Mary', 'Lambeth', 'Female', 30000)
--Insert into tb4 values (3, 'Ben', 'Hoskins', 'Male', 70000)
--Insert into tb4 values (3, 'Ben', 'Hoskins', 'Male', 70000)
--Insert into tb4 values (3, 'Ben', 'Hoskins', 'Male', 70000)

--SELECT *
--	, RANK() OVER(ORDER BY ID DESC) AS [Rank]
--FROM tb4

---- Explanation: Suppose three people are top of the class all are Rank 1 etc, since there are 3 rank 1 next will be 4 etc.

--SELECT *
--	, DENSE_RANK() OVER(ORDER BY ID DESC) AS [DenseRank]
--FROM tb4

--SELECT *
--	, ROW_NUMBER() OVER(ORDER BY ID DESC) AS [RowNumber]
--FROM tb4

----select top salary--
 
--SELECT TOP 1 Salary
--FROM (
--      SELECT DISTINCT TOP 3 Salary
--      FROM TB4
--      ORDER BY Salary DESC
--      ) RESULT
--ORDER BY Salary desc

----second highest salary--

--WITH [Output] AS(
--	SELECT *
--		, DENSE_RANK() OVER(ORDER BY Salary DESC) AS [DenseRank]
--	FROM tb4
--)

--SELECT TOP 1 *
--FROM [Output]
--WHERE DenseRank = 2

---- Get 5th record

--WITH [Output] AS(
--	SELECT *
--		, ROW_NUMBER() OVER(ORDER BY Salary DESC) AS [RN]
--	FROM tb4
--)

--SELECT *
--FROM [Output]
--WHERE RN = 5

---- Deletion of Duplicates
--WITH RESULT AS
--(
--   SELECT *, ROW_NUMBER()OVER(PARTITION BY ID ORDER BY ID) AS RowNumber
--   FROM tb4
--)
--DELETE FROM RESULT WHERE RowNumber > 1

-------------------------------------------------------------------------------
--if statement--
--Create table Employees
--(
-- Id int primary key identity,
-- Name nvarchar(10),
-- GenderId int
--)
--Go
--select * from Employees
 
--Insert into Employees values ('Mark', 1)
--Insert into Employees values ('John', 1)
--Insert into Employees values ('Amy', 2)
--Insert into Employees values ('Ben', 1)
--Insert into Employees values ('Sara', 2)
--Insert into Employees values ('David', 1)
 
----Using CASE statement--
--SELECT Name, GenderId, 
--CASE WHEN GenderId = 1
--THEN 'Male'
--ELSE 'Female'
--END AS Gender
--FROM Employees
 
----Using iif statement
--SELECT Name, GenderId, IIF(GenderId = 1, 'Male', 'Female') AS Gender
--FROM Employees

-- SQL If Else Example--
 
--Declaring Number and Total Variables
--DECLARE @Marks INT = 49 ;
 
--IF @marks > = 50
--BEGIN
--   PRINT ' Congratulations ';
--   PRINT ' You pass the Examination ';
--END
--ELSE
--BEGIN
--   PRINT ' You Failed ';
--   PRINT ' Better Luck Next Time ';
--END
 

-- SQL Else If Example--
 
--Declaring Total Marks Out of 1000
--DECLARE @Total_Marks INT = 800 ;
 
--IF @Total_Marks > = 900
--BEGIN
--   PRINT ' Congratulations ';
--   PRINT ' You are eligible for Full Scholarship ';
--END
--ELSE IF @Total_Marks > = 800
--BEGIN
--   PRINT ' Congratulations ';
--   PRINT ' You are eligible for 50 Percent Scholarship ';
--END
--ELSE IF @Total_Marks > = 750
--BEGIN
--   PRINT ' Congratulations ';
--   PRINT ' You are eligible for 10 Percent Scholarship ';
--END
--ELSE
--BEGIN

--   PRINT ' You are Not eligible for Scholarship ';
--   PRINT ' We are really Sorry for You ';
--END

-------------------------------------------------------------------------------
--go to statement--
 
--DECLARE @TotalMaarks INT
--SET @TotalMaarks = 52
 
--IF @TotalMaarks >= 50
--    GOTO Pass
--IF @TotalMaarks < 50
--    GOTO Fail
 
--Pass:
--    PRINT ' Congratulations '
--    PRINT ' You pass the Examination '
--    RETURN
 
--Fail:
--    PRINT ' You Failed! '
--    PRINT ' Better Luck Next Time '
--    RETURN
--GO
 
--5 lang in sql DDL,DML,DCL,DQL,TCL--
--DDL- data definition lang 
--it holds the command 
--create,drop,alter,truncate
 
--DQL- data query lang
--it holds select command
 
--DML- data manipulation lang
--insert, update,delete
 
--DCL-data control lang
--it holds the command grant and revoke 
 
--TCL- transcation control lang
--it holds the command 
--commit,rollback,safepoint,set transcation
 
--normalisation
--normalisation is breaking down a historical table into 5 diff segements
--they are 5 rules of normalisation
 
--for the version
--SELECT @@VERSION AS 'SQL Server Version'
 
----username--
--SELECT @@VERSION AS 'SQL Server Version'
--SELECT @@SPID AS 'SP ID', 
--       SYSTEM_USER AS 'Login Name', 
--       USER AS 'User Name';
 
----lang name--
--SELECT @@LANGUAGE AS 'Language Name'
 
----lang Id--
--SELECT @@LANGID AS 'Language ID Number'
 
----max/min connections--
--SELECT @@MAX_CONNECTIONS AS 'Maximum Connections'
 
----precision--
--SELECT @@MAX_PRECISION AS 'Maximum Precision Value'
 
----server name--
--SELECT @@SERVERNAME AS 'Server Name'
 
----service name--
--SELECT @@SERVICENAME AS 'Service Name'
 
----choose command--
--SELECT CHOOSE(3, 'Apple', 'Orange', 'Kiwi', 'Cherry') AS Result2;
 
--select * from Orders$


---------------------------------------------------------------------------------
----concat--

--select * , CONCAT( [Customer Name],',',[Ship Mode])

--as 'First name' from Orders$

-------------------------------------------------------------------------------
--creating store procedure--
create procedure P1 as 
BEGIN select [dbo].[Orders$].[Region],[Sales] from [dbo].[Orders$]
full outer join [dbo].[Returns$] on [dbo].[Orders$].[Order ID] = [dbo].[Returns$].[Order ID]
full outer join [dbo].[Users$] on [dbo].[Orders$].[Region] = [dbo].[Users$].[Region] END
 
select * from Result
 
where [Region]='West'
 
execute P1
 
create procedure P3 as
truncate table Employees
Insert into Employees values ('Mark', 1)
Insert into Employees values ('John', 1)
Insert into Employees values ('Amy', 2)
Insert into Employees values ('Ben', 1)
Insert into Employees values ('Sara', 2)
Insert into Employees values ('David', 1)
 
SELECT Name, GenderId, IIF(GenderId = 1, 'Male', 'Female') AS Gender
FROM Employees
 
execute P3
 
--trigger--
CREATE TABLE Employee_Test
(
Emp_ID INT Identity,
Emp_name Varchar(100),
Emp_Sal Decimal (10,2)
)
 
INSERT INTO Employee_Test VALUES ('Rohit',10000);
INSERT INTO Employee_Test VALUES ('Vikas',12000);
INSERT INTO Employee_Test VALUES ('Alen',110000);
INSERT INTO Employee_Test VALUES ('Vickey',130000);
INSERT INTO Employee_Test VALUES ('Maria',10000);
 

CREATE TABLE Employee_Test_Audit
(
Emp_ID int,
Emp_name varchar(100),
Emp_Sal decimal (10,2),
Audit_Action varchar(100),
Audit_Timestamp datetime
)
select * from Employee_Test
select * from Employee_Test_Audit
 
CREATE TRIGGER trgAfterInsert ON [dbo].[Employee_Test] 
FOR INSERT
AS
    declare @empid int;
    declare @empname varchar(100);
    declare @empsal decimal(10,2);
    declare @audit_action varchar(100);
 
    select @empid=i.Emp_ID from inserted i;    
    select @empname=i.Emp_Name from inserted i;    
    select @empsal=i.Emp_Sal from inserted i;    
    set @audit_action='Inserted Record -- After Insert Trigger.';
 
    insert into Employee_Test_Audit
           (Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp) 

values(@empid,@empname,@empsal,@audit_action,getdate());
 
    PRINT 'AFTER INSERT trigger fired.'
GO
 
insert into Employee_Test values('tom',9000);
insert into Employee_Test values('someone',111);
