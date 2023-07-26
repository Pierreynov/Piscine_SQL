SELECT artists.Name AS ArtistName, albums.Title AS AlbumName, tracks.Name AS TrackName, ROUND(tracks.Bytes*0.000001,2)||' MB' AS MegaBytes 
FROM albums
INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId INNER JOIN artists ON albums.ArtistId = artists.ArtistId 
WHERE albums.Title = 'American Idiot'