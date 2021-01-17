CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY IDENTITY,
	Username VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARCHAR(MAX),
	LastLoginTime DATETIME,
	IsDeleted BIT
)

INSERT INTO Users  
(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES
('mirela', 'strongpass123', 'https://github.com/rothja.png?size=32', '1/12/2021', 0)
('mishdh', 'strongpass1234', 'https://github.com/rothja.png?size=32', '2/4/2021', 0),
('dhdhd', 'strongpass12345', 'https://github.com/rothja.png?size=32', '12/3/2021', 0),
('dgdhs', 'strongpass123456', 'https://github.com/rothja.png?size=32', '5/1/2021', 0),
('dkhjjdhk', 'strongpass1234567', 'https://github.com/rothja.png?size=32', '6/13/2021', 0)

SELECT * FROM Users