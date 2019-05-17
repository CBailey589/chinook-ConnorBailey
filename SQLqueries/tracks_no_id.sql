SELECT t.Name, al.Title AlbumTitle, mt.Name MediaTypeName, g.Name GenreName, t.Bytes, t.Composer, t.Milliseconds, t.UnitPrice
FROM Track t
INNER JOIN Album al
ON t.AlbumId = al.AlbumId
INNER JOIN MediaType mt
ON t.MediaTypeId = mt.MediaTypeId
INNER JOIN Genre g
ON t.GenreId = g.GenreId;
