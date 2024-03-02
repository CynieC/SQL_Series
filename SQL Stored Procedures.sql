SELECT TOP (1000) [ProductID]
      ,[StartDate]
      ,[EndDate]
      ,[StandardCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductCostHistory]


  --Create Stored Procedure
CREATE PROCEDURE HighestStandardCost
  AS 
  BEGIN
  SELECT MAX(StandardCost) AS HighestStandardCost
  FROM  [AdventureWorks2019].[Production].[ProductCostHistory]
  END;
  GO


  EXECUTE HighestStandardCost
  
  
--Modifying the stored procedure
  ALTER PROCEDURE HighestStandardCost
  AS 
  BEGIN
  SELECT MAX(StandardCost) AS HighestStandardCost
  FROM  [AdventureWorks2019].[Production].[ProductCostHistory]
  END;
  GO


  EXECUTE HighestStandardCost