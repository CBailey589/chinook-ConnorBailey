SELECT COUNT(pt.TrackId) NumTracksInPlaylist, p.PlaylistId, p.Name
FROM PlaylistTrack pt
JOIN Playlist p
ON pt.PlaylistId = p.PlaylistId
GROUP BY p.PlaylistId, p.Name

-- Duplicate Playlist Name/NumTracks with different Playlist ID?