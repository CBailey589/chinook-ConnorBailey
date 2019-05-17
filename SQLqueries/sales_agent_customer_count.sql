SELECT COUNT(c.CustomerId) NumCustomersAssigned, e.EmployeeId, e.FirstName, e.LastName
FROM Customer c
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName