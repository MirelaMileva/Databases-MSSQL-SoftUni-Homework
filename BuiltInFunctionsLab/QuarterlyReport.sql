SELECT [FirstName] + ' ' + [LastName] AS FullName,
	[HireDate],
	DATEPART(QUARTER, HireDate) AS Quarter,
	DATEPART(MONTH, HireDate) AS Month,
	DATEPART(YEAR, HireDate) AS Year,
	DATEPART(Day, HireDate) AS Day
FROM Employees