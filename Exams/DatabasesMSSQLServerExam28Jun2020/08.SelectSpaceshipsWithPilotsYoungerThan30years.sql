SELECT s.[Name], s.Manufacturer
	FROM Colonists AS c
	JOIN TravelCards AS tc ON tc.ColonistId = c.Id
	JOIN Journeys AS j ON j.Id = tc.JourneyId
	JOIN Spaceships AS s ON s.Id = j.SpaceshipId
	WHERE tc.JobDuringJourney = 'Pilot' AND DATEDIFF(YEAR, c.BirthDate, '2019/01/01') <= 30
	ORDER BY s.[Name] ASC