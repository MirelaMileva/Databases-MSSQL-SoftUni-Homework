SELECT TOP(5)
	   k.Country, 
	   k.[Highest Peak Name], 
	   k.[Highest Peak Elevation], 
	   k.Mountain	
FROM (SELECT 
	   CountryName AS Country,
	   ISNULL(p.PeakName, '(no highest peak)') AS [Highest Peak Name],
	   ISNULL(MAX(p.Elevation), 0) AS [Highest Peak Elevation],
	   ISNULL(m.MountainRange, '(no mountain)') AS Mountain,
	   DENSE_RANK() OVER (PARTITION BY CountryName ORDER BY MAX(p.Elevation) DESC ) AS Ranked
	   FROM Countries AS c
	LEFT JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
	LEFT JOIN Mountains AS m ON m.Id = mc.MountainId
	LEFT JOIN Peaks AS p ON p.MountainId = m.Id
	GROUP BY CountryName, p.PeakName, M.MountainRange) AS k
WHERE Ranked = 1
ORDER BY Country, [Highest Peak Name]