

CREATE TABLE Manufacturers
(
	ManufacturerID INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	EstablishedOn DATE
)

CREATE TABLE Models
(
	ModelID INT PRIMARY KEY NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	ManufacturerID INT NOT NULL
	FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
)

INSERT INTO Manufacturers
	(Name,EstablishedOn)
	VALUES
	('BMW','07/03/1916'),
	('Tesla','01/01/2003'),
	('Lada','01/05/1966')

