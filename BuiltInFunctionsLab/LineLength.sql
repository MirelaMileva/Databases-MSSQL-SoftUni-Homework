SELECT TOP (1000) [Id]
      ,[X1]
      ,[Y1]
      ,[X2]
      ,[Y2]
	  ,SQRT(SQUARE(X1-X2) + SQUARE(Y1-Y2)) AS Length
  FROM [Demo].[dbo].[Lines]