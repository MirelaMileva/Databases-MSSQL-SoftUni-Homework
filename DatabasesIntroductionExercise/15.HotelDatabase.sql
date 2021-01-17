CREATE DATABASE Hotel

USE Hotel

CREATE TABLE Employees
(
	Id INT PRIMARY KEY,
	FirstName VARCHAR(90),
	LastName VARCHAR(90),
	Title VARCHAR(50),
	Notes VARCHAR(MAX)
)

CREATE TABLE Customers
(
	AccountNumber INT
)