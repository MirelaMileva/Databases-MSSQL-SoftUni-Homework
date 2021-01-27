SELECT TOP(5)
	e.EmployeeID,
	e.FirstName,
	p.[Name] AS ProjectName
	FROM Employees AS e
	JOIN EmployeesProjects AS ep ON ep.EmployeeID = e.EmployeeID
	JOIN Projects AS p ON p.ProjectID = ep.ProjectID
	WHERE ep.EmployeeID IS NOT NULL AND p.StartDate > '2002-08-13' AND P.EndDate IS NULL
	ORDER BY e.EmployeeID ASC
