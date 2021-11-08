CREATE DATABASE Movies


CREATE TABLE Directors
(
Id INT IDENTITY PRIMARY KEY,
DirectorName VARCHAR(80),
Notes VARCHAR(MAX)
)

INSERT INTO Directors(DirectorName, Notes) 
VALUES ('Miroslav', null),
('Nikolay', null),
('Georgi', null),
('MPetar', null),
('Sasho', null);


CREATE TABLE Genres
(
Id INT IDENTITY PRIMARY KEY,
GenreName VARCHAR(80),
Notes VARCHAR(MAX)
)
INSERT INTO Genres(GenreName,Notes) 
VALUES
('Horror',null),
('Trailer', null),
('Anime', null),
('Fantastic', null),
('Bulgarian',null);

CREATE TABLE Categories
(
Id INT IDENTITY PRIMARY KEY,
CategoryName VARCHAR(80),
Notes VARCHAR(MAX)
)
INSERT INTO Categories(CategoryName,Notes) 
VALUES
('Most View',null),
('Favorite', null),
('Last View', null),
('Top 100', null),
('Newst',null);



CREATE TABLE Movies
(
Id INT IDENTITY PRIMARY KEY,
Title VARCHAR(MAX) NOT NULL,
DirectorId INT NOT NULL,
CopyrightYear INT NOT NULL,
Lenght FLOAT(2),
GenreId INT NOT NULL,
CategoryId INT NOT NULL,
Rating INT,
Notes VARCHAR(MAX)
)
--drop table Movies
INSERT INTO Movies(Title, DirectorId, CopyrightYear,Lenght,GenreId,CategoryId,Rating,Notes)
VALUES
('LOST IN THE FOREST', 1, 2018, 2.15, 1, 1, null,null),
('Sandukan', 2, 2018, 2.15, 2, 2, null,null),
('Tarzan', 3, 2018, 2.15, 3, 3, null,null),
('Vludenite nikoga ne plachat', 4, 2018, 2.15, 4, 4, null,null),
('Tq nqma vina', 5, 2018, 2.15, 5, 5, null,null);