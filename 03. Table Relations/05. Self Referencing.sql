CREATE TABLE Teachers
(
	TeacherID INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	ManagerID INT
	  
)
	 INSERT INTO Teachers VALUES 
  (101,'John',NULL),
  (102,'Maya',106),
  (103,'Silvia',106),
  (104,'Ted',105),
  (105,'Mark',101),
  (106,'Greta',101)
ALTER TABLE  Teachers
ADD FOREIGN KEY (ManagerID) REFERENCES Teachers(TeacherID)

