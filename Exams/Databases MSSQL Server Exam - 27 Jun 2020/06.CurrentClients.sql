SELECT 
	c.FirstName + ' ' + c.LastName AS Client,  
	DATEDIFF(DAY, IssueDate, '2017-04-24') AS [Days going],
	[Status]
	FROM Jobs AS j
JOIN Clients AS c ON c.ClientId = j.ClientId
WHERE [Status] != 'Finished'