CREATE TABLE People
	(
		Id BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
		[Name] VARCHAR(200) NOT NULL,
		Picture varchar(MAX) NULL,
		Height DECIMAL(2) NULL,
		[Weight] DECIMAL(2) NULL,
		Gender CHAR NOT NULL,
		Birthdate DATE NOT NULL,
		Biography NVARCHAR(MAX),
	)

INSERT INTO People ([Name], Picture, Height, Weight, Gender, Birthdate, Biography)
	VALUES 
	('Aleksander', NULL, 5, 5, 'm', '2018-11-09', null),
	('Aleksander', NULL, 0.85, 13, 'm', '2018-11-09', 'Sashko'),
	('Aleksander', NULL, 0.85, 13, 'm', '2018-11-09', 'Sashko'),
	('Aleksander', NULL, 0.85, 13, 'm', '2018-11-09', 'Sashko'),
	('Aleksander', NULL, 0.85, 13, 'm', '2018-11-09', 'Sashko');