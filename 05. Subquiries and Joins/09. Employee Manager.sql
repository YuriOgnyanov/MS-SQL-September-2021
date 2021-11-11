SELECT e.EmployeeID, e.FirstName, e.ManagerID, empM.FirstName AS ManagerName
	FROM Employees AS e
	JOIN Employees AS empM ON empM.EmployeeID = e.ManagerID
	WHERE empM.EmployeeID IN (3,7)
	ORDER BY e.EmployeeID ASC