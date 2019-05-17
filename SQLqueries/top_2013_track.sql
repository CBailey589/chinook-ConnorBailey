SELECT COUNT(il.InvoiceLineId) NumTimesPurchased, t.Name
FROM InvoiceLine il
INNER JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
INNER JOIN Track t
ON il.TrackId = t.TrackId
WHERE i.InvoiceDate 
BETWEEN '2013-01-01 00:00:00.000' AND '2013-12-31 23:59:59.999'
GROUP BY t.Name
ORDER BY NumTimesPurchased DESC

--SEEMS WRONG?