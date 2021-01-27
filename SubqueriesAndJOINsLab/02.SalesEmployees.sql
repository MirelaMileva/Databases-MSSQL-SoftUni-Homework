SELECT 
	e.EmployeeID, 
	e.FirstName AS [First Name], 
	e.LastName AS [Last Name], 
	d.[Name] AS DepartmentName
	FROM Employees e
	JOIN Departments d ON e.DepartmentID = d.DepartmentID
	WHERE d.[Name] = 'Sales'
	ORDER BY e.EmployeeID