

Create  table ParallelDemo
GO


CREATE TABLE ParallelDemo
( ID INT IDENTITY (1,1) PRIMARY KEY,
  FirstName NVARCHAR (200),
  LastName NVARCHAR (200),
  PhoneNumber VARCHAR(50),
  BirthDate DATETIME,
  Address NVARCHAR(MAX)
 )
GO

INSERT INTO ParallelDemo VALUES ('John','Horold','+96255889955','1987-01-08','Jordan - Amman - Mecca Street - Building 77')
GO 50000 
INSERT INTO ParallelDemo VALUES ('Michel','Anglo','+96255776655','1985-06-02','Jordan - Amman - Mecca Street - Building 74')
GO 50000

SELECT [ID]
      ,[FirstName]
      ,[LastName]
      ,[PhoneNumber]
      ,[BirthDate]
      ,[Address]
  FROM [dbo].[ParallelDemo]
  WHERE Address LIKE '%AMM%'
  ORDER BY BirthDate desc
  GO


