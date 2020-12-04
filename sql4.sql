CREATE DATABASE Example4
ON PRIMARY
(
	NAME = N'Example4_DB',
	FILENAME = N'C:\Temp\Example4.mdf'
)
LOG ON
(
	NAME =N'Example4_DB_Log',
	FILENAME = N'C:\Temp\Example4_DB_Log.ldf'
)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO

USE Example4
GO
EXECUTE sp_changedbowner @loginame='sa'

DROP DATABASE EXAMPLE4


USE master
GO
IF(DB_ID('Example5') IS NOT NULL)
	DROP DATABSE Example5

CREATE DATABASE Example5
ON PRIMARY
(
	NAME = N'Example5_DB',
	FILENAME = N'C:\Temp\Example5.mdf'
)
LOG ON
(
	NAME =N'Example5_DB_Log',
	FILENAME = N'C:\Temp\Example5_DB_Log.ldf'
)
GO

ALTER DATABASE Example4 MODIFY NAME = Example4Test

USE Example4Test
EXECUTE sp_changedbowner @loginame = 'sa'


CREATE DATABASE Example6
ON PRIMARY
(
	NAME = N'Example6_DB',
	FILENAME = N'C:\Temp\Example6.mdf'
	SIZE=4MB,
	MAXSIZE=10MB,
	FILEGROWTH=1MB
),
FILEGROUP Example6_FG1
(
	NAME = N'Example6_FG1_Dat1',
	FILENAME = N'C:\Temp\Example6_FG1_1.ndf'
	SIZE=1MB,
	MAXSIZE=10MB,
	FILEGROWTH=1MB),
(
	NAME = N'Example6_FG1_Dat2',
	FILENAME = N'C:\Temp\Example6_FG1_2.ndf'
	SIZE=1MB,
	MAXSIZE=10MB,
	FILEGROWTH=1MB
)
LOG ON
(
	NAME =N'Example6_DB_Log',
	FILENAME = N'C:\Temp\Example6_DB_Log.ldf'
	SIZE=1MB,
	MAXSIZE=10MB,
	FILEGROWTH=1MB
)
GO


CREATE DATABASE Example4_Snapshot
AS SNAPSHOT OF Example4