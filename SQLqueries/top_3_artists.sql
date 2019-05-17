SELECT TOP 3 COUNT(InvoiceLineId) NumTimesPurchased, ar.Name
FROM InvoiceLine il
INNER JOIN Track t
ON il.TrackId = t.TrackId
INNER JOIN Album al
ON t.AlbumId = al.AlbumId
INNER JOIN Artist ar
ON al.AlbumId = ar.ArtistId
GROUP BY ar.Name
ORDER BY NumTimesPurchased DESC