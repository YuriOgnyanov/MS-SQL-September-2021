CREATE TABLE Users
(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	[UserName] VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARCHAR(MAX),
	LastLoginTime DATETIME,
	IsDeleted BIT
)


INSERT INTO Users (UserName,Password,ProfilePicture,LastLoginTime,IsDeleted) 
	VALUES
	(
	'Miro', '123asd','https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg','1/12/2019', 0
	),
	(
	'Micvro', '123asd','https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg','1/12/2019', 0
	),
	(
	'Miro', '123asd','https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg','1/12/2019', 0
	),
	(
	'Miro', '123asd','https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg','1/12/2019', 0
	),
	(
	'Miro', '123asd','https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg','1/12/2019', 0
	);

