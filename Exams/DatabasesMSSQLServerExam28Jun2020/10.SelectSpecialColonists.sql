SELECT * FROM 
(
SELECT 
	tc.JobDuringJourney,
	c.FirstName + ' ' + c.LastName AS FullName,
	DENSE_RANK() OVER (PARTITION BY tc.JobDuringJourney ORDER BY c.BirthDate) AS JobRank
	FROM Colonists AS c
	JOIN TravelCards AS tc ON tc.ColonistId = c.Id 
) AS Result
	WHERE JobRank = 2
