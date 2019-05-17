SELECT il.*, t.Name, ar.Name
FROM InvoiceLine il
INNER JOIN Track t
ON il.TrackId = t.TrackId
INNER JOIN Album al
ON t.AlbumId = al.AlbumId
INNER JOIN Artist ar
ON al.ArtistId = ar.ArtistId
ORDER BY il.InvoiceId