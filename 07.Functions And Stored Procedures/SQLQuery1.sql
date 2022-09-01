CREATE OR ALTER FUNCTION udf_ProjectDurationWeeks (@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN
	DECLARE @projectWeeks INT
	IF(@EndDate IS NULL)
		SET @EndDate = GETDATE()
	SET @projectWeeks = DATEDIFF(WEEK, @StartDate, @EndDate)
	RETURN @projectWeeks
END