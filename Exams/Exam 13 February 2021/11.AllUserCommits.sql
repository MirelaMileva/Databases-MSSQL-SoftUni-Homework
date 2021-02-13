CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(20))
RETURNS INT
AS
BEGIN
DECLARE @result INT =
		(SELECT COUNT(*) FROM Commits AS c
		JOIN Users AS u ON u.Id = c.ContributorId
		WHERE Username = @username)
	RETURN @result
END

SELECT dbo.udf_AllUserCommits('UnderSinduxrein')




