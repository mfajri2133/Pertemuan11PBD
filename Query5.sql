CREATE VIEW PeminjamanSemuaPengguna AS
SELECT 
    u.name AS NamaUser,
    u.email AS EmailUser,
    m.title AS JudulFilm,
    b.borrowDate AS TanggalPeminjaman,
    b.returnDate AS TanggalPengembalian,
    CASE b.borrowStatus
        WHEN 1 THEN 'Dikembalikan'
        WHEN 0 THEN 'Dipinjam'
    END AS StatusPeminjaman
FROM Borrowing b
JOIN 
	Users u ON b.UserID = u.UserID
JOIN 
	BorrowingDetail bd ON b.BorrowingID = bd.BorrowingID
JOIN 
	Movie m ON bd.MovieID = m.MovieID;
