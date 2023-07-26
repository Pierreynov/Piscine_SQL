DELETE FROM tracks WHERE tracks.AlbumId = (
    SELECT tracks.AlbumId  FROM tracks WHERE tracks.AlbumId = 7
)