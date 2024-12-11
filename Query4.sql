-- Mencari Pengguna Paling Aktif Meminjam --

CREATE VIEW SepuluhPenggunaPalingAktif AS
SELECT TOP 10
    u.name AS Nama,
    u.email AS Email,
    COUNT(b.borrowingID) AS JumlahPeminjaman
FROM Borrowing b
JOIN Users u ON b.userID = u.userID
GROUP BY u.name, u.email
ORDER BY JumlahPeminjaman DESC;