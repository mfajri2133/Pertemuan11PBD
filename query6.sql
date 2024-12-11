ALTER VIEW DuaPuluhFilmPopuler AS
SELECT 
	TOP 20
    YEAR(m.ReleaseDate) AS TahunRilis,
    m.title AS JudulFilm,
    COUNT(bd.MovieID) AS JumlahPeminjaman
FROM BorrowingDetail bd
JOIN 
	Movie m ON bd.MovieID = m.MovieID
GROUP BY 
	YEAR(m.ReleaseDate), m.title
ORDER BY 
	JumlahPeminjaman DESC;