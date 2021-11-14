 SELECT DISTINCT k.DepartmentID, k.Salary AS [ThirdHighestSalary] FROM

 (
	SELECT DepartmentID, Salary	, DENSE_RANK() OVER (partition BY DepartmentId ORDER BY Salary Desc) AS Rnk
		FROM Employees
		
) AS k
WHERE k.Rnk = 3
