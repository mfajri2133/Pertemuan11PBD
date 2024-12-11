CREATE VIEW GenrePopuler AS
SELECT 
    g.name AS Genre,
    COUNT(bd.movieID) AS JumlahPeminjaman
FROM borrowingDetail bd
JOIN Movie m ON bd.movieID = m.movieID
JOIN MoviesGenres mg ON m.movieID = mg.movieID
JOIN Genre g ON mg.genreID = g.genreID
GROUP BY g.name;
