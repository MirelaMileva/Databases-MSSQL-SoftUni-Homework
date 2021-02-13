SELECT c.FirstName, 
	   Age, 
	   PhoneNumber 
	FROM Customers AS c
	JOIN Countries AS ct ON ct.Id = c.CountryId
  WHERE Age >= 21 AND c.FirstName LIKE ('%an%') OR PhoneNumber LIKE ('%38') AND CountryId != 31
  ORDER BY FirstName ASC, Age DESC