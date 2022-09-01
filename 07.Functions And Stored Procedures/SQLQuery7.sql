CREATE OR ALTER PROC usp_MultipleResults 
AS
	SELECT FirstName, LastName FROM Employees
	SELECT FirstName, LastName, d.[Name] AS Departments
	FROM Employees AS e
	JOIN Departments AS d ON d.DepartmentID = e.EmployeeID

EXEC usp_MultipleResults 