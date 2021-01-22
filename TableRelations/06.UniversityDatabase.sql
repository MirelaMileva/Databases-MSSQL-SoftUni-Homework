CREATE TABLE Majors
(
	MajorID INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50)
)

CREATE TABLE Students
(
	StudentID INT PRIMARY KEY IDENTITY,
	StudentNumber INT,
	StudentName VARCHAR(50) NOT NULL,
	MajorID INT FOREIGN KEY REFERENCES Majors(MajorID)
)

CREATE TABLE Payments
(
	PaymentID INT PRIMARY KEY IDENTITY,
	PaymentDate DATETIME,
	PaymentAmount DECIMAL (15,2),
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID)
)

CREATE TABLE Subjects
(
	SubjectID INT PRIMARY KEY IDENTITY,
	SubjectName VARCHAR(30)
)

CREATE TABLE Agenda
(
	StudentID INT,
	SubjectID INT

	CONSTRAINT PK_Student_Subject PRIMARY KEY(StudentID, SubjectID),
	CONSTRAINT FK_Student FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_Subject FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
)