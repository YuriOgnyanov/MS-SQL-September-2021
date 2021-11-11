SELECT TownID,	[Name] 
	FROM Towns 
	WHERE LEFT([Name],1) NOT IN ('D','R','B')
	
	ORDER BY [Name]	ASC
	