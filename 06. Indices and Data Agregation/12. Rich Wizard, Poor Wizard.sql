SELECT SUM(k.Diff) AS [SumDifference]   FROM
	(
		SELECT DepositAmount-LEAD(DepositAmount,1) OVER (ORDER BY Id) AS Diff 
		FROM WizzardDeposits 
		) AS k
	