CREATE	DATABASE SoftUni
USE SoftUni
CREATE TABLE Towns
(
	Id INT IDENTITY PRIMARY KEY NOT NULL,
	[Name] VARCHAR(60),

);

CREATE TABLE Addresses
(
	Id INT IDENTITY PRIMARY KEY NOT NULL  ,
	AddressText VARCHAR(100),
	TownId INT FOREIGN KEY REFERENCES Towns(Id) NOT NULL
);

CREATE TABLE Departments
(
	Id INT IDENTITY PRIMARY KEY NOT NULL,
	[Name] VARCHAR(50) NOT NULL
);

CREATE TABLE Employees
(
	Id INT IDENTITY PRIMARY KEY NOT NULL,
	FirstName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	JobTitle VARCHAR(20) NOT NULL,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(Id) NOT NULL,
	HireDate DATE NOT NULL,
	Salary DECIMAL(10,2) ,
	AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
);

INSERT INTO Towns([Name])
	VALUES
	('Sofia'),
	('Plovdiv'),
	('Varna'),
	('Burgas');

INSERT INTO Departments([Name])
	VALUES
	('Engineering'),
	('Sales'),
	('Marketing'),
	('Software Development'),
	('Quality Assurance');