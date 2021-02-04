CREATE PROC usp_GetEmployeesSalaryAboveNumber(@EmpSalary DECIMAL(18,4))
AS
	SELECT FirstName, LastName
	FROM Employees
	WHERE Salary >= @EmpSalary

EXEC usp_GetEmployeesSalaryAboveNumber 48100
