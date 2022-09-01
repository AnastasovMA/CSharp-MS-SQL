CREATE PROC usp_GetTownsStartingWith (@Input NVARCHAR(25)) 
AS
BEGIN
	SELECT [Name] FROM Towns
	WHERE [Name] LIKE CONCAT(@Input, '%')
END

EXEC usp_GetTownsStartingWith @Input = N
