CREATE DATABASE CarRental

CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName VARCHAR(30),
	DailyRate DECIMAL,
	WeeklyRate DECIMAL,
	MonthlyRate DECIMAL,
	WeekendRate DECIMAL
)

CREATE TABLE Cars
(
	Id INT PRIMARY KEY IDENTITY,
	PlateNumber VARCHAR(10),
	Manufacturer VARCHAR(30),
	Model VARCHAR(30),
	CarYear DATE,
	CategoryId INT,
	Doors INT,
	Picture VARCHAR(MAX),
	Condition VARCHAR(20),
	Available CHAR(1)
)

CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(15),
	LastName VARCHAR(25),
	Title VARCHAR(5),
	Notes VARCHAR(MAX)
)

CREATE TABLE Customers
(
	Id INT PRIMARY KEY IDENTITY,
	DriverLicenceNumber VARCHAR(30),
	FullName VARCHAR(50),
	[Address] VARCHAR(50),
	City VARCHAR(20),
	ZIPCode VARCHAR(20),
	Notes VARCHAR(MAX)
)

CREATE TABLE RentalOrders
(
	Id INT PRIMARY KEY IDENTITY,
	EmployeeId INT,
	CustomerId INT,
	CarId INT,
	TankLevel INT,
	KilometrageStart FLOAT(2),
	KilometrageEnd FLOAT(2),
	TotalKilometrage FLOAT(2),
	StartDate DATETIME,
	EndDate DATETIME,
	TotalDays INT,
	RateApplied DECIMAL,
	TaxRate DECIMAL,
	OrderStatus BIT,
	Notes VARCHAR(MAX)
)

INSERT INTO Categories
(CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES
('Normal', 20.20, 140.40, 606, 50),
('Sport', 30.50, 213.50, 915.00, 70),
('Luxury', 50, 350.50, 1000.100, 122.50)

INSERT INTO Cars
(PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
VALUES
('CNV6879KL', 'Toyota', 'Auris', '2015-12-15', 1, 4, 'https://m.atcdn.co.uk/vms/media/w900/27d7ec3f72aa4e4789e5729ad0ec7d4e.jpg', 'Used', 'Y'),
('KLM567WE', 'Bugatti', 'Chiron', '2016-10-10', 2, 2, 'https://upload.wikimedia.org/wikipedia/commons/6/63/FoS20162016_0624_132444AA_%2827785299372%29.jpg', 'New', 'Y'),
('WER3456KY', 'Mercedes', 'S Class', '2018-02-18', 3, 4, 'https://www.daimler.com/bilder/produkte/pkw/mercedes-benz/s-klasse/2020/s-klasse-wp-fahrzeug-20c0417-003-w768xh384-cutout.jpg', 'New', 'N')

INSERT INTO Employees
(FirstName, LastName, Title, Notes)
VALUES
('Ivan', ' Ivanov', 'Mr', 'Manager Sales'),
('Stoyanka', 'Petkova', 'Mrs', 'Assistent'),
('Gosho', 'Goshov', 'Mr', 'Cleaner')

INSERT INTO Customers
(DriverLicenceNumber, FullName, [Address], City, ZIPCode, Notes)
VALUES
('VAS123456789KL', 'Vasil Kolev', 'Pozitano 20', 'Sofia', 'PS2056L', 'Correct customer'),
('YOR987654321BS', 'Yordanka Besheva', 'Makedonska 50', 'Pleven', 'PL6754IL', 'New customer'),
('VIL92837453535TS', 'Vili Tsvetkova', 'Bacho Kiro 1', 'Varna', 'VR9087K', 'Excellent customer')

INSERT INTO RentalOrders
(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
VALUES
(1, 2, 1, 100, 5050.100, 5150, 100.10, '2021-01-10', '2021-01-13', 3, 20.20, 5, 0, 'Car is prepared for customer'),
(2, 1, 3, 150, 15000.00, 15350.100, 350.100, '2020-12-12', '2020-12-14', 2, 50, 20, 1, 'Order completed'),
(3, 3, 2, 70, 12900.90, 13100, 200, '2021-01-05', '2021-01-10', 5, 30.50, 10, 1, 'Order completed')