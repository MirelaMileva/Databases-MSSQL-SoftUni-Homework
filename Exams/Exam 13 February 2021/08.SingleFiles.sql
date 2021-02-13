SELECT f.Id, f.[Name], CONCAT(f.Size, 'KB')
	FROM Files AS f
	LEFT JOIN Files AS p ON f.Id = p.ParentId
	WHERE p.Id IS NULL