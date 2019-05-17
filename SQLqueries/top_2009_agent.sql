SELECT TOP 1 SUM(i.Total) SalesTotalForSalesRep, e.EmployeeId, e.FirstName, e.LastName
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate
BETWEEN '2009-01-01 00:00:00.000' AND '2009-12-31 23:59:59.999'
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY SalesTotalForSalesRep DESC