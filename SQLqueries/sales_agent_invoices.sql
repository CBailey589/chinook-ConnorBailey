SELECT i.*, e.FirstName, e.LastName
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
ORDER BY e.LastName;