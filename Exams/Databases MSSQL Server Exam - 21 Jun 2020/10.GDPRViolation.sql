SELECT 	act.TripId AS Id, 
		a.FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName AS [Full Name], 
		c.[Name] AS [From], 
		hc.[Name] AS [To], 
		CASE 
			WHEN CancelDate IS NULL THEN CONVERT(NVARCHAR(MAX), DATEDIFF(DAY, ArrivalDate, ReturnDate)) + ' days'
			ELSE 'Canceled'
		END AS Duration		
	FROM AccountsTrips AS act
	JOIN Accounts AS a ON a.Id = act.AccountId
	JOIN Cities AS c ON c.Id = a.CityId
	JOIN Trips AS t ON act.TripId = t.Id
	JOIN Rooms AS r ON r.Id = t.RoomId
	JOIN Hotels AS h ON h.Id = r.HotelId
	JOIN Cities AS hc ON h.CityId = hc.Id
	ORDER BY [Full Name], TripId