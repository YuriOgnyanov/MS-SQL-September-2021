GO
CREATE OR ALTER PROC usp_GetTownsStartingWith @word VARCHAR(50)
AS
BEGIN
		
			SELECT [Name]

			FROM Towns

			WHERE SUBSTRING([Name], 1,LEN(@word)) = @word
			--WHERE [Name] LIKE @word + '%'
			

END
GO

EXEC dbo.usp_GetTownsStartingWith bot