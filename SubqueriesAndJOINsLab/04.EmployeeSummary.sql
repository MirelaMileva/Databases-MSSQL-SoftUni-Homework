SELECT TOP(50)
	e.EmployeeId, 
	e.FirstName + ' ' + e.LastName AS [Employee Name],
	m.FirstName + ' ' + m.LastName AS ManagerName,
	d.[Name] AS DepartmentName
	FROM Employees AS e
	LEFT JOIN Employees AS m ON m.EmployeeID = e.ManagerID
	LEFT JOIN Departments AS d ON d.DepartmentID = e.DepartmentID