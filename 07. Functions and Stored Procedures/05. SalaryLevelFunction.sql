CREATE FUNCTION ufn_GetSalaryLevel (@salary DECIMAL(18,4))
RETURNS VARCHAR(MAX)
AS
BEGIN
	 		   IF (@salary < 30000)
			   BEGIN
					RETURN 'Low'
			   END

			   ELSE IF (@salary  < 50000)
			   BEGIN
					RETURN 'Average'
			   END
			   ELSE IF (@salary > 50000)
			   BEGIN
					RETURN 'High'
			   END

	 RETURN NULL
			   
END;

