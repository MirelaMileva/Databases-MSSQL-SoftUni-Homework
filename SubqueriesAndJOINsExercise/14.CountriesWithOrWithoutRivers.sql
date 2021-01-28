SELECT TOP(5)
	c.CountryName,
	r.RiverName
	FROM Countries AS c
	LEFT JOIN CountriesRivers AS cr ON Cr.CountryCode = c.CountryCode
	LEFT JOIN Rivers AS r ON r.Id = cr.RiverId
	WHERE c.ContinentCode IN ('AF')
	ORDER BY c.CountryName ASC