CREATE FUNCTION ufn_CalculateFutureValue(@sum DECIMAL(15,2), @yearlyInterestRate FLOAT, @numberOfYears INT)
RETURNS DECIMAL(15, 4)
AS
BEGIN
	DECLARE @futureValue DECIMAL(15,4);
	SET @futureValue = @sum * (POWER((1 + @yearlyInterestRate), @numberOfYears))
	RETURN @futureValue
END

SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)