CREATE OR ALTER FUNCTION udf_GetSalaryLevel(@Salary MONEY)
RETURNS NVARCHAR(10) AS
BEGIN
	DECLARE @SalaryStatus NVARCHAR(10)
	IF(@Salary < 30000)
		SET @SalaryStatus = 'Low'
	ELSE IF(@Salary <= 50000)
		SET @SalaryStatus = 'Average'
	ELSE
		SET @SalaryStatus = 'High'
	RETURN @SalaryStatus
END