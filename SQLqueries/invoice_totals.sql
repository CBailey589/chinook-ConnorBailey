SELECT i.Total, c.FirstName CustomerFirstName, c.LastName CustomerLastName, e.FirstName SalesAgentFirstName, e.LastName SalesAgentLastName
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
on c.SupportRepId = e.EmployeeId;