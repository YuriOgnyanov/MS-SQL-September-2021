SELECT DepositGroup, MAX(MagicWandSize)	 AS LongestMagicLand
	FROM WizzardDeposits
	GROUP BY DepositGroup