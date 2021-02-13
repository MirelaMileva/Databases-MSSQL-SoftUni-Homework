CREATE OR ALTER PROC usp_SearchForFiles(@fileExtension VARCHAR(MAX))
AS
	SELECT Id, 
		   [Name], 
		   CONCAT(Size, 'KB') 
	FROM Files
	WHERE [Name] LIKE ('%' + @fileExtension)


EXEC usp_SearchForFiles 'txt'

