CREATE VIEW SepuluhGenrePopuler AS
SELECT TOP 10
    g.name AS Genre,
    COUNT(bd.movieID) AS JumlahPeminjaman
FROM borrowingDetail bd
JOIN Movie m ON bd.movieID = m.movieID
JOIN MoviesGenres mg ON m.movieID = mg.movieID
JOIN Genre g ON mg.genreID = g.genreID
GROUP BY g.name
ORDER BY COUNT(bd.movieID) DESC;