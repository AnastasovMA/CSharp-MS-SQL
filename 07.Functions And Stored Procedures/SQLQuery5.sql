ALTER PROC dbo.usp_SelectEmployeesBySeniority(@minYearWork INT = 5)
AS
	SELECT 
		FirstName,
		LastName,
		HireDate,
		DATEDIFF(YEAR, HireDate, GETDATE()) AS Years
	FROM Employees
	WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > @minYearWork
	ORDER BY HireDate