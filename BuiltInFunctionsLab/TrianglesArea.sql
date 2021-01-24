SELECT TOP (1000) [Id]
      ,[A]
      ,[H]
	  ,0.5 * A * H AS Area
  FROM [Demo].[dbo].[Triangles2]