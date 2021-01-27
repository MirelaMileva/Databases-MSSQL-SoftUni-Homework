SELECT TOP(3)
	e.EmployeeId,
	e.FirstName
	FROM Employees AS e
	LEFT JOIN EmployeesProjects AS ep ON ep.EmployeeID = e.EmployeeID
	WHERE EP.EmployeeID IS NULL
	ORDER BY e.EmployeeID