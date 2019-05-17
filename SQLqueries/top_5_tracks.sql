--SELECT COUNT(il.InvoiceLineId) NumTimesPurchased, t.Name
SELECT TOP 5 COUNT(il.InvoiceLineId) NumTimesPurchased, t.Name
FROM InvoiceLine il
INNER JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
INNER JOIN Track t
ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY NumTimesPurchased DESC
