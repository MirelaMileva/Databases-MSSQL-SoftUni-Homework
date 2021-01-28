SELECT COUNT(*) 
	FROM Countries AS c
	LEFT JOIN MountainsCountries AS mc ON MC.CountryCode = c.CountryCode
	WHERE mc.MountainId IS NULL