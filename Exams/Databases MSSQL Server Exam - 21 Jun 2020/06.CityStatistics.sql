SELECT c.[Name], COUNT(*) AS Hotels
	FROM Hotels AS h
	JOIN Cities AS c ON c.Id = h.CityId
	GROUP BY C.[Name]
	ORDER BY Hotels DESC, C.[Name] ASC