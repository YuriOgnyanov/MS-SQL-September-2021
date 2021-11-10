CREATE TABLE Persons
(
	PersonalID INT IDENTITY NOT NULL, 
	FirstName NVARCHAR(30) NOT NULL,
	Salary MONEY,
	PassportID INT UNIQUE NOT NULL
)

CREATE TABLE Passports
(
	PassportID INT PRIMARY KEY,
	PassportNumber NVARCHAR(8) NOT NULL
)

ALTER TABLE Persons
ADD PRIMARY KEY(PersonalID)


ALTER TABLE Persons
ADD FOREIGN KEY (PassportID) REFERENCES Passports(PassportID)

INSERT INTO Passports(PassportID,PassportNumber)
	VALUES
	(101,'N34FG21B') ,
	(102,'K65LO4R7'),
	(103,'ZE657QP2');

INSERT INTO Persons(FirstName,Salary,PassportID)
	VALUES
	('Roberto', 43300.00,102),
	('Tom',56100.00,103),
	('Yana', 60200.00,101);