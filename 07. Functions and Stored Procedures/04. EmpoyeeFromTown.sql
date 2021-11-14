CREATE PROC usp_GetEmployeesFromTown @townName VARCHAR(50)
AS
BEGIN
		SELECT e.FirstName, e.LastName
			FROM
			Employees AS e
			INNER JOIN Addresses AS adrs ON adrs.AddressID = e.AddressID
			INNER JOIN Towns AS t ON t.TownID =adrs.TownID
			WHERE t.Name = @townName
END	

GO

EXEC dbo.usp_GetEmployeesFromTown 'Sofia'