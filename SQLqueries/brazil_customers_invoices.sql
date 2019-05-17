SELECT c.FirstName, c.LastName, i.InvoiceDate, i.InvoiceDate, i.BillingCountry
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil'
ORDER BY i.CustomerId;