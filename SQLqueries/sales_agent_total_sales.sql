SELECT SUM(i.Total) SalesTotalForSalesRep, e.EmployeeId, e.FirstName, e.LastName
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY SalesTotalForSalesRep DESC