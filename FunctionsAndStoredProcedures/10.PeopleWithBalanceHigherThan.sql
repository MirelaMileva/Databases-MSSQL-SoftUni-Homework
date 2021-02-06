CREATE PROC usp_GetHoldersWithBalanceHigherThan(@money DECIMAL(15,2))
AS
SELECT FirstName, LastName
	FROM AccountHolders AS acchol
	JOIN Accounts AS acc ON acc.AccountHolderId = acchol.Id
	GROUP BY FirstName, LastName
	HAVING SUM(Balance) > @money
	ORDER BY FirstName, LastName