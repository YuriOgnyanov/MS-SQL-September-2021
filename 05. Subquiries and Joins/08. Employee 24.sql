SELECT ep.EmployeeID, e.FirstName,
		CASE
			WHEN p.StartDate>= '01.01.2005' THEN NULL
			ELSE p.Name 
		END	 AS ProjectName
	FROM Employees AS e
	JOIN EmployeesProjects AS ep ON ep.EmployeeID = e.EmployeeID
	JOIN Projects AS p ON p.ProjectID = ep.ProjectID
	WHERE ep.EmployeeID = 24

