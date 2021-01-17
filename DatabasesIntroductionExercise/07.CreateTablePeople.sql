CREATE TABLE People
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(200) NOT NULL,
	Picture VARCHAR(MAX),
	Height FLOAT(2),
	[Weight] FLOAT(2),
	Gender CHAR(1) NOT NULL,
	Birthdate DATE NOT NULL,
	Biography VARCHAR(MAX)
)

INSERT INTO People
([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
VALUES
('Mirela', 'https://github.com/rothja.png?size=32', 1.60, 50.1, 'F', '1990-12-01', 'Student'),
('Anri', 'https://github.com/rothja.png?size=32', 1.70, 60.5, 'M', '1991-06-05', 'Student'),
('Lyusi', 'https://github.com/rothja.png?size=32', 1.80, 66.1, 'M', '1985-09-10', 'Worker'),
('Vili', 'https://github.com/rothja.png?size=32', 1.58, 55.6, 'F', '1970-11-23', 'Worker'),
('Ani', 'https://github.com/rothja.png?size=32', 1.20, 19.5, 'F', '2010-11-24', 'Child')