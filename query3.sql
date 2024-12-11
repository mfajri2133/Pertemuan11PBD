CREATE VIEW RiwayatPeminjamanBerdasarkanGenre AS
SELECT 
    u.name AS NamaUser,
    m.title AS JudulFilm,
    g.name AS Genre,
    b.borrowDate AS TanggalPeminjaman,
    b.returnDate AS TanggalPengembalian
FROM Borrowing b
JOIN 
	Users u ON b.UserID = u.UserID
JOIN 
	BorrowingDetail bd ON b.BorrowingID = bd.BorrowingID
JOIN 
	Movie m ON bd.MovieID = m.MovieID
JOIN 
	MoviesGenres mg ON m.MovieID = mg.MovieID
JOIN 
	Genre g ON mg.GenreID = g.GenreID;
