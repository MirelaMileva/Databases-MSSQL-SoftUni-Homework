CREATE PROCEDURE usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS 
BEGIN
--First Delete all record from EmployeesProjects where EmployeeID is in to-be-delete Id's
	DELETE FROM EmployeesProjects
	WHERE EmployeeID IN (	
							SELECT  EmployeeID FROM Employees
							WHERE DepartmentID = @departmentId
						)
--Set ManagerID to NULL where Manager is Employee who is going to be deleted
	UPDATE Employees
	SET ManagerID = NULL
	WHERE ManagerID IN (	
							SELECT  EmployeeID FROM Employees
							WHERE DepartmentID = @departmentId
						)
--Alter column ManagerID in Departments table - make it NULLABLE
	ALTER TABLE Departments
	ALTER COLUMN ManagerID INT
--Set ManagerID to NULL where Manager is an Employee who is going to be deleted
	UPDATE Departments
	SET ManagerID = NULL
	WHERE ManagerID IN (	
							SELECT  EmployeeID FROM Employees
							WHERE DepartmentID = @departmentId
						)

	DELETE FROM Employees
	WHERE DepartmentID = @departmentId

	DELETE FROM Departments
	WHERE DepartmentID = @departmentId

	SELECT COUNT(*) FROM Employees
	WHERE DepartmentID = @departmentId

END

EXEC usp_DeleteEmployeesFromDepartment 1