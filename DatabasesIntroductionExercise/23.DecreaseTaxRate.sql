USE Hotel

SELECT * FROM Payments

UPDATE Payments
	SET TaxRate = 20
	WHERE EmployeeId = 1

UPDATE Payments
	SET TaxRate = 20
	WHERE EmployeeId = 2

UPDATE Payments
	SET TaxRate = 20
	WHERE EmployeeId = 3

UPDATE Payments
	SET TaxRate = TaxRate * 0.97
	WHERE TaxRate > 1


SELECT TaxRate FROM Payments
