CREATE TABLE Clients
(
	ClientId INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Phone CHAR(12) CHECK((LEN(Phone) = 12))
)

CREATE TABLE Mechanics
(
	MechanicId INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	[Address] VARCHAR(255) NOT NULL
)

CREATE TABLE Models
(
	ModelId INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) UNIQUE
)

CREATE TABLE Jobs
(
	JobId INT PRIMARY KEY IDENTITY,
	ModelId INT REFERENCES Models(ModelId) NOT NULL,
	[Status] VARCHAR(11) DEFAULT('Pending') CHECK([Status] IN('Pending', 'In Progress', 'Finished')) NOT NULL,
	ClientId INT FOREIGN KEY REFERENCES Clients(ClientId) NOT NULL,
	MechanicId INT FOREIGN KEY REFERENCES Mechanics(MechanicId),
	IssueDate DATE NOT NULL,
	FinishDate DATE
)

CREATE TABLE Orders
(
	OrderId INT PRIMARY KEY IDENTITY,
	JobId INT REFERENCES Jobs(JobId) NOT NULL,
	IssueDate DATE,
	Delivered BIT DEFAULT 0
)

CREATE TABLE Vendors
(
	VendorId INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) UNIQUE
)

CREATE TABLE Parts
(
	PartId INT PRIMARY KEY IDENTITY,
	SerialNumber VARCHAR(50) UNIQUE NOT NULL,
	[Description] VARCHAR(255),
	Price DECIMAL(18,2) CHECK(Price > 0 AND Price <= 9999.99) NOT NULL,
	VendorId INT REFERENCES Vendors(VendorId),
	StockQty INT DEFAULT 0 CHECK(StockQty >= 0)
)

CREATE TABLE OrderParts
(
	OrderId INT REFERENCES Orders(OrderId) NOT NULL,
	PartId INT REFERENCES Parts(PartId) NOT NULL,
	CONSTRAINT PK_OrderIdPartId PRIMARY KEY (OrderId, PartId),
	Quantity INT DEFAULT 1 CHECK(Quantity > 0)
)

CREATE TABLE PartsNeeded
(
	JobId INT REFERENCES Jobs(JobId) NOT NULL,
	PartId INT REFERENCES Parts(PartId) NOT NULL,
	CONSTRAINT PK_JobIdPartId PRIMARY KEY (JobId, PartId),
	Quantity INT DEFAULT 1 CHECK(Quantity > 0)
)