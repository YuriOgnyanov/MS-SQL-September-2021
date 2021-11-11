SELECT c.CountryCode, COUNT(c.CountryCode)	AS [MountineRanger]
	FROM Countries	AS c
	JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
	WHERE c.CountryCode IN ('BG', 'RU','US')
	GROUP BY c.CountryCode
	
	ORDER BY MountineRanger	 DESC
	