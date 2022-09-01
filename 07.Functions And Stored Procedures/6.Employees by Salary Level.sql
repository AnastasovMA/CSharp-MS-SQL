CREATE OR ALTER PROC usp_EmployeesBySalaryLevel (@SalaryStatus NVARCHAR(10)) AS
SELECT FirstName, LastName FROM Employees
WHERE dbo.ufn_GetSalaryLevel(Salary) = @SalaryStatus

EXEC usp_EmployeesBySalaryLevel 'Average'