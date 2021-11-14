SELECT DISTINCT LEFT(FirstName, 1) 	AS letter
	FROM WizzardDeposits
	WHERE DepositGroup = 'Troll Chest'
	ORDER BY letter