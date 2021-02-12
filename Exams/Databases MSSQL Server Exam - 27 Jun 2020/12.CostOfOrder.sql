CREATE FUNCTION udf_GetCost(@JobId INT)
RETURNS DECIMAL(15,2)
AS
BEGIN
DECLARE @Result DECIMAL(15,2)
SET @Result = 
	(SELECT SUM(p.Price * op.Quantity) AS Result
		FROM Jobs AS j
		JOIN Orders AS o ON o.JobId = j.JobId
		JOIN OrderParts AS op ON op.OrderId = o.OrderId
		JOIN Parts AS p ON p.PartId = op.PartId
	WHERE j.JobId = @JobId
	GROUP BY j.JobId)

IF(@Result IS NULL)
SET @Result = 0
RETURN @Result
END