SELECT AccountId, 
	FirstName + ' ' + LastName AS FullName,
	MAX(DATEDIFF(DAY, ArrivalDate, ReturnDate)) AS LongestTrip,
	MIN(DATEDIFF(DAY, ArrivalDate, ReturnDate)) AS ShortestTrip
	FROM AccountsTrips AS act
	JOIN Accounts AS a ON a.Id = act.AccountId
	JOIN Trips AS t ON t.Id = act.TripId
	WHERE a.MiddleName IS NULL AND CancelDate IS NULL
	GROUP BY AccountId, FirstName, LastName
	ORDER BY LongestTrip DESC, ShortestTrip ASC