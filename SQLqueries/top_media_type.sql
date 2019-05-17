SELECT TOP 1 COUNT(il.InvoiceLineId) NumTimesMediaTypePurchased, mt.name
FROM InvoiceLine il
INNER JOIN Track t
ON il.TrackId = t.TrackId
INNER JOIN MediaType mt
ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.Name
ORDER BY NumTimesMediaTypePurchased DESC