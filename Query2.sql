-- Histori Peminjaman --
CREATE VIEW HistoriPeminjaman AS
SELECT 
    u.name AS Nama,
    u.email AS Email,
    m.title AS JudulFilm,
    b.borrowDate AS TanggalPeminjaman,
    b.returnDate AS TanggalPengembalian,
    CASE b.borrowStatus
        WHEN 1 THEN 'Sudah Dikemabalikan'
        WHEN 0 THEN 'Masih Dipinjam'
    END AS StatusPeminjaman
FROM Borrowing b
JOIN Users u ON b.userID = u.userID
JOIN borrowingDetail bd ON b.borrowingID = bd.borrowingID
JOIN Movie m ON bd.movieID = m.movieID;