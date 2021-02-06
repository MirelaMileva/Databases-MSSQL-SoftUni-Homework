CREATE PROC usp_CalculateFutureValueForAccount(@AccountId INT, @InterestRate DECIMAL(15,2))
AS
SELECT a.Id AS [Account Id], 
	   ah.FirstName, ah.LastName, 
	   a.Balance, 
	   dbo.ufn_CalculateFutureValue(Balance, @InterestRate, 5)
	FROM AccountHolders AS ah
	JOIN Accounts AS a ON a.AccountHolderId = ah.Id
	WHERE a.Id = @AccountId

EXEC usp_CalculateFutureValueForAccount 1, 0.1