SELECT 
	c.CountryCode AS CountryCode,
	COUNT(*)
	FROM Countries AS c
	JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
	WHERE c.CountryCode IN ('BG', 'US', 'RU')
	GROUP BY c.CountryCode