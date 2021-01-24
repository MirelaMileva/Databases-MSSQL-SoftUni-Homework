SELECT TOP (1000) [Id]
      ,[Name]
      ,[Quantity]
      ,[BoxCapacity]
      ,[PalletCapacity]
	  , BoxCapacity * PalletCapacity AS TotalCapacity
	  ,CEILING(1.0 * Quantity / (BoxCapacity * PalletCapacity)) AS [NumberOfPallets]
  FROM [Demo].[dbo].[Products]