SELECT 
	mc.CountryCode AS CountryCode,
	m.MountainRange AS MountainRange,
	p.PeakName,
	p.Elevation
	FROM Peaks AS p
	JOIN Mountains AS m ON m.Id = p.MountainId
	JOIN MountainsCountries AS mc ON mc.MountainId = m.Id
	WHERE mc.CountryCode = 'BG' AND Elevation > 2835
	ORDER BY Elevation DESC