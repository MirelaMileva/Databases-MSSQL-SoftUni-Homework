CREATE DATABASE Movies

CREATE TABLE Directors
(
	Id INT PRIMARY KEY IDENTITY,
	DirectorName VARCHAR(50),
	Notes VARCHAR(MAX)
)

CREATE TABLE Genres
(
	Id INT PRIMARY KEY IDENTITY,
	GenreName VARCHAR(50),
	Notes VARCHAR(MAX)
)

CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName VARCHAR(50),
	Notes VARCHAR(MAX)
)

CREATE TABLE Movies
(
	Id INT PRIMARY KEY IDENTITY,
	Title VARCHAR(20),
	DirectorId INT,
	CopyrightYear DATE,
	[Length] INT,
	GenreId INT,
	CategoryId INT,
	Rating INT,
	Notes VARCHAR(MAX)
)

INSERT INTO Directors
(DirectorName, Notes)
VALUES
('Jonsons', 'Work notes'),
('Robinson', 'Work notes'),
('Petrov', 'Work notes'),
('Ivanon', 'Work notes'),
('Stoyanov', 'Work notes')

INSERT INTO Genres
(GenreName, Notes)
VALUES
('Petrov', 'Impostant notes'),
('Tsvetanov', 'Some notes'),
('Milev', 'Another notes'),
('Petkov', 'Very important notes'),
('Vasilov', 'Another very important notes')

INSERT INTO Categories
(CategoryName, Notes)
VALUES
('Projects', 'Project notes'),
('Salary', 'Salary notes'),
('Departments', 'Departments notes'),
('Documents', 'Documents notes'),
('Products', 'Products notes')

INSERT INTO Movies
(Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes)
VALUES
('Mr', 1, '2000', 1000, 1, 1, 5, 'Notes for first movie'),
('Mr', 2, '2001', 2000, 2, 2, 6, 'Notes for second movie'),
('Mr', 3, '2002', 3000, 3, 3, 8, 'Notes for third movie'),
('Mr', 4, '2003', 4000, 4, 4, 9, 'Notes for fourth movie'),
('Mr', 5, '2005', 6000, 5, 5, 10, 'Notes for fifth movie')