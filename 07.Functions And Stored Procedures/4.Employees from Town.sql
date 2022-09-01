CREATE PROC usp_GetEmployeesFromTown (@TownName NVARCHAR(25)) AS
BEGIN
	SELECT FirstName, LastName FROM Employees AS e
	JOIN Addresses AS a ON a.AddressID = e.AddressID
	JOIN Towns AS t ON t.TownID = a.TownID
	WHERE t.[Name] = @TownName
END

EXEC usp_GetEmployeesFromTown Sofia