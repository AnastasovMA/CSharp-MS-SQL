CREATE PROC dbo.usp_AddSmallNumbers
@n1 SMALLINT, @n2 SMALLINT, @Result INT OUTPUT
AS
	SET @Result = @n1 + @n2