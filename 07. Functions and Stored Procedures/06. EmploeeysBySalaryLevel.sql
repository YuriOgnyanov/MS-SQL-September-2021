CREATE PROC usp_EmployeesBySalaryLevel @LevelSalary NVARCHAR(10)
AS
BEGIN
	 SELECT FirstName,LastName 
		FROM Employees e
		WHERE dbo.ufn_GetSalaryLevel(e.Salary) = @LevelSalary
		
END
	 EXEC usp_EmployeesBySalaryLevel [High]