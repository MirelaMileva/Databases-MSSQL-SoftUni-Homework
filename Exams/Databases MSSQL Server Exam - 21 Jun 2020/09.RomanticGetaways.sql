SELECT a.Id, a.Email, c.[Name] AS City, COUNT(*) AS Trips
	FROM Trips AS t
	JOIN AccountsTrips AS act ON act.TripId = t.Id
	JOIN Accounts AS a ON act.AccountId = a.Id
	JOIN Cities AS c ON a.CityId = c.Id
	JOIN Rooms AS r ON t.RoomId = r.Id
	JOIN Hotels AS h ON r.HotelId = h.Id
	WHERE h.CityId = a.CityId
	GROUP BY c.[Name], a.Id, a.Email
	ORDER BY Trips DESC, a.Id
