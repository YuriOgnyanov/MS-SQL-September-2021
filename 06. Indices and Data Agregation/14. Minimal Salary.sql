SELECT DepartmentId	, MIN(Salary)
	FROM Employees
	WHERE HireDate > 01/01/2000 AND DepartmentID IN (2,5,7)
	GROUP BY DepartmentID