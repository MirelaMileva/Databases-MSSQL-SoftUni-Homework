CREATE FUNCTION dbo.udf_GetColonistsCount(@PlanetName VARCHAR (30))
RETURNS INT 
AS
BEGIN
DECLARE @count INT =
		(SELECT COUNT(*) AS [Count]
		FROM Colonists AS c
		JOIN TravelCards AS tc ON tc.ColonistId = c.Id
		JOIN Journeys AS j ON j.Id = tc.JourneyId
		JOIN Spaceports AS s ON s.Id = j.DestinationSpaceportId
		JOIN  Planets AS p ON p.Id = s.PlanetId
		WHERE p.Name = @PlanetName)
	RETURN @count
END
