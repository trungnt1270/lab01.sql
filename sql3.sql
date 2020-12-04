USE AdventureWorks2014

SELECT * FROM HumanResources.Employee

DECLARE @deptId int
SELECT @deptId=1
SELECT Name,GroupName FROM HumanResources.Department WHERE DepartmentID = @deptId
GO

SELECT @@LANGUAGE -- ngon ngu
SELECT @@VERSION -- phien ban
SELECT @@IDENTITY
GO

SELECT * FROM Production.ProductPhoto
SELECT COUNT(*) FROM Production.ProductPhoto

SELECT GETDATE()  -- lay ngay gio he thong

SELECT DATEPART(hh,GETDATE()) -- lay gio he thong

SELECT CONVERT(varchar(50),GETDATE(), 103)

SELECT DB_ID('AdventureWorks2014')

SELECT HOST_ID()
SELECT HOST_NAME()

CREATE DATABASE EXAMPLE3

USE EXAMPLE3

CREATE TABLE Contacts
(MailId VARCHAR(20),
Name NTEXT,
TelephoneNumber INT)

ALTER TABLE Contacts ADD Address NVARCHAR(50)

INSERT INTO Contacts VALUES ('test1@gmail.com',N'Nguyen Van A',0941989,N'Ha Noi')
INSERT INTO Contacts VALUES ('test2@gmail.com',N'Nguyen Van B',0999689,N'Ha Noi')
INSERT INTO Contacts VALUES ('test3@gmail.com',N'Nguyen Van C',0994289,N'Ha Noi')
INSERT INTO Contacts VALUES ('test4@gmail.com',N'Nguyen Van D',0995389,N'Ha Noi')

SELECT * FROM Contacts

DELETE FROM Contacts WHERE MailId='test4@gmail.com'

UPDATE Contacts SET Name=N'Nguyen Van E' WHERE MailId='test3@gmail.com'

CREATE LOGIN example3 WITH PASSWORD='123456' -- tao login acctount

CREATE USER example3 FROM LOGIN example3 -- tao user tu login account vua tao

REVOKE ALL ON Contacts FROM example3 -- xoa toan bo quyen cua user example3 tren bang contacts

GRANT SELECT ON Contacts TO example3 -- gan quyen SELECT cho example3 tren bang Contacts