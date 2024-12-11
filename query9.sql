CREATE VIEW SepuluhFilmPopulerMultiGenre AS
WITH FilmPopuler AS (
    SELECT 
        m.title AS JudulFilm,
        COUNT(DISTINCT mg.GenreID) AS JumlahGenre,
        COUNT(bd.MovieID) AS JumlahPeminjaman
    FROM 
		BorrowingDetail bd
    JOIN 
		Movie m ON bd.MovieID = m.MovieID
    JOIN 
		MoviesGenres mg ON m.MovieID = mg.MovieID
    GROUP BY 
		m.title
    HAVING 
		COUNT(DISTINCT mg.GenreID) > 1
)
SELECT 
    JudulFilm,
    JumlahGenre,
    JumlahPeminjaman
FROM FilmPopuler
WHERE JumlahPeminjaman IN (
    SELECT TOP 10 JumlahPeminjaman
    FROM FilmPopuler
    ORDER BY JumlahPeminjaman DESC
);
