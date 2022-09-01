CREATE FUNCTION ufn_GetSalaryLevel(@Salary DECIMAL(18,4))
RETURNS NVARCHAR(20) AS
BEGIN
	DECLARE @SalaryStatus NVARCHAR(20)
	IF(@Salary < 30000)
		SET @SalaryStatus = 'Low'
	ELSE IF(@Salary <= 50000)
		SET @SalaryStatus = 'Average'
	ELSE
		SET @SalaryStatus = 'High'
	RETURN @SalaryStatus
END
