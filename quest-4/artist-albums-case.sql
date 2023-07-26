SELECT artists.Name, COUNT(AlbumId) AS NbAlbums, 
CASE 
    WHEN COUNT(AlbumId) = 1 THEN 'Unproductive'
    WHEN COUNT(AlbumId) > 1 AND COUNT(AlbumId) < 10 THEN 'Productive'
    ELSE 'Very Productive'
END AS 'IsProductive'
FROM artists INNER JOIN albums ON albums.ArtistId = artists.ArtistId GROUP BY artists.ArtistId LIMIT 100