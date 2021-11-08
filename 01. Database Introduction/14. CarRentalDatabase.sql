CREATE DATABASE CarRental

CREATE TABLE Categories
(
Id INT IDENTITY PRIMARY KEY,
CategoryName VARCHAR(30),
DailyRate INT,
WeeklyRate INT,
MonthlyRate INT,
WeekendRate INT
)

INSERT INTO Categories(CategoryName,DailyRate,WeeklyRate,MonthlyRate,WeekendRate)
VALUES
('Mini',null,null,null,null),
('Compact',null,null,null,null),
('Expensive',null,null,null,null);



CREATE TABLE Cars
(
Id INT IDENTITY PRIMARY KEY,
PlateNumber VARCHAR(10) NOT NULL,
Manufacturer VARCHAR(20)NOT NULL,
Model VARCHAR(20) NOT NULL,
CarYear INT NOT NULL,
CategoryId INT NOT NULL,
Doors INT,
Picture VARCHAR(MAX),
Condition VARCHAR(20) NOT NULL,
Available VARCHAR(2) NOT NULL
)

INSERT INTO Cars(PlateNumber,Manufacturer,Model,CarYear,CategoryId,Doors,Picture,Condition,Available)
VALUES
('CA2454BT','VW','GOLS', 1999, 1, NULL, 'WWW.ZAMUNDA.NET','PERFECT', 'Y'),
('CA2454BT','VW','GOLS', 1999, 1, NULL, 'WWW.ZAMUNDA.NET','PERFECT', 'Y'),
('CA2454BT','VW','GOLS', 1999, 1, NULL, 'WWW.ZAMUNDA.NET','PERFECT', 'Y');


CREATE TABLE Employees
(
Id INT IDENTITY PRIMARY KEY,
FirstName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20)NOT NULL,
Title VARCHAR(20),
Notes VARCHAR(MAX)
)

INSERT INTO Employees(FirstName,LastName,Title,Notes)
VALUES
('Miroslav','Petrov', NULL,NULL),
('Miroslav','Petrov', NULL,NULL),
('Miroslav','Petrov', NULL,NULL);


CREATE TABLE Customers
(
Id INT IDENTITY PRIMARY KEY,
DriverLicenceNumber INT NOT NULL,
FullName VARCHAR(80) NOT NULL,
[Address] VARCHAR(100),
City VARCHAR(30) NOT NULL,
ZIPCode INT,
Notes VARCHAR(MAX)
)
--drop table Customers
INSERT INTO Customers(DriverLicenceNumber,FullName,[Address],City,ZIPCode,Notes)
VALUES
(42343,'Nikolay Georgiev Dimitrov', 'Ulica Petar Beron 16','Sofia', null, null),
(42344,'Nikolay Georgiev Dimitrov', 'Ulica Petar Beron 16','Sofia' ,null, null),
(55532,'Nikolay Georgiev Dimitrov', 'Ulica Petar Beron 16','Sofia' ,null, null);

CREATE TABLE RentalOrders
(
Id INT IDENTITY PRIMARY KEY,
EmployeeId INT NOT NULL, 
CustomerId INT NOT NULL,
CarId INT NOT NULL, 
TankLevel INT NOT NULL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage  INT NOT NULL, 
StartDate DATE NOT NULL, 
EndDate DATE NOT NULL, 
TotalDays INT NOT NULL,
RateApplied INT ,
TaxRate INT,
OrderStatus varchar(20) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO RentalOrders
(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, 
KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
VALUES
(1,1,1,55,55555,66666,10000, '2021-04-24', '2021-05-24', 30, NULL, NULL, 'WAITING', NULL),
(1,1,1,55,55555,66666,10000, '2021-04-24', '2021-05-24', 30, NULL, NULL, 'WAITING', NULL),
(1,1,1,55,55555,66666,10000, '2021-04-24', '2021-05-24', 30, NULL, NULL, 'WAITING', NULL);
